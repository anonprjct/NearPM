// SPDX-License-Identifier: BSD-3-Clause
/* Copyright 2019-2020, Intel Corporation */

/*
 * config.c -- pmem2_config implementation
 */

#include <unistd.h>
#include "alloc.h"
#include "config.h"
#include "libpmem2.h"
#include "out.h"
#include "pmem2.h"
#include "pmem2_utils.h"

/*
 * pmem2_config_init -- initialize cfg structure.
 */
void
pmem2_config_init(struct pmem2_config *cfg)
{
	cfg->offset = 0;
	cfg->length = 0;
	cfg->addr = NULL;
	cfg->addr_request = PMEM2_ADDRESS_ANY;
	cfg->requested_max_granularity = PMEM2_GRANULARITY_INVALID;
	cfg->sharing = PMEM2_SHARED;
	cfg->protection_flag = PMEM2_PROT_READ | PMEM2_PROT_WRITE;
}

/*
 * pmem2_config_new -- allocates and initialize cfg structure.
 */
int
pmem2_config_new(struct pmem2_config **cfg)
{
	int ret;
	*cfg = pmem2_malloc(sizeof(**cfg), &ret);

	if (ret)
		return ret;

	ASSERTne(cfg, NULL);

	pmem2_config_init(*cfg);
	return 0;
}

/*
 * pmem2_config_delete -- deallocate cfg structure.
 */
int
pmem2_config_delete(struct pmem2_config **cfg)
{
	Free(*cfg);
	*cfg = NULL;
	return 0;
}

/*
 * pmem2_config_set_required_store_granularity -- set granularity
 * requested by user in the pmem2_config structure
 */
int
pmem2_config_set_required_store_granularity(struct pmem2_config *cfg,
		enum pmem2_granularity g)
{
	switch (g) {
		case PMEM2_GRANULARITY_BYTE:
		case PMEM2_GRANULARITY_CACHE_LINE:
		case PMEM2_GRANULARITY_PAGE:
			break;
		default:
			ERR("unknown granularity value %d", g);
			return PMEM2_E_GRANULARITY_NOT_SUPPORTED;
	}

	cfg->requested_max_granularity = g;

	return 0;
}

/*
 * pmem2_config_set_offset -- set offset in the pmem2_config structure
 */
int
pmem2_config_set_offset(struct pmem2_config *cfg, size_t offset)
{
	/* mmap func takes offset as a type of off_t */
	if (offset > (size_t)INT64_MAX) {
		ERR("offset is greater than INT64_MAX");
		return PMEM2_E_OFFSET_OUT_OF_RANGE;
	}

	cfg->offset = offset;

	return 0;
}

/*
 * pmem2_config_set_length -- set length in the pmem2_config structure
 */
int
pmem2_config_set_length(struct pmem2_config *cfg, size_t length)
{
	cfg->length = length;

	return 0;
}

/*
 * pmem2_config_validate_length -- validate that length in the pmem2_config
 * structure is consistent with the file length
 */
int
pmem2_config_validate_length(const struct pmem2_config *cfg,
		size_t file_len, size_t alignment)
{
	ASSERTne(alignment, 0);

	if (file_len == 0) {
		ERR("file length is equal 0");
		return PMEM2_E_SOURCE_EMPTY;
	}

	if (cfg->length % alignment) {
		ERR("length is not a multiple of %lu", alignment);
		return PMEM2_E_LENGTH_UNALIGNED;
	}

	/* overflow check */
	const size_t end = cfg->offset + cfg->length;
	if (end < cfg->offset) {
		ERR("overflow of offset and length");
		return PMEM2_E_MAP_RANGE;
	}

	/* let's align the file size */
	size_t aligned_file_len = file_len;
	if (file_len % alignment)
		aligned_file_len = ALIGN_UP(file_len, alignment);

	/* validate mapping fit into the file */
	if (end > aligned_file_len) {
		ERR("mapping larger than file size");
		return PMEM2_E_MAP_RANGE;
	}

	return 0;
}

/*
 * pmem2_config_set_sharing -- set the way pmem2_map will map the file
 */
int
pmem2_config_set_sharing(struct pmem2_config *cfg, enum pmem2_sharing_type type)
{
	switch (type) {
		case PMEM2_SHARED:
		case PMEM2_PRIVATE:
			cfg->sharing = type;
			break;
		default:
			ERR("unknown sharing value %d", type);
			return PMEM2_E_INVALID_SHARING_VALUE;
	}

	return 0;
}

/*
 * pmem2_config_validate_addr_alignment -- validate that addr in the
 * pmem2_config structure is a multiple of the alignment required for
 * specific cfg
 */
int
pmem2_config_validate_addr_alignment(const struct pmem2_config *cfg,
		const struct pmem2_source *src)
{
	/* cannot NULL % alignment, NULL is valid */
	if (!cfg->addr)
		return 0;

	size_t alignment;
	int ret = pmem2_source_alignment(src, &alignment);
	if (ret)
		return ret;

	ASSERTne(alignment, 0);
	if ((size_t)cfg->addr % alignment) {
		ERR("address %p is not a multiple of %lu", cfg->addr,
				alignment);
		return PMEM2_E_ADDRESS_UNALIGNED;
	}

	return 0;
}

/*
 * pmem2_config_set_address -- set addr and addr_request in the config
 * struct
 */
int
pmem2_config_set_address(struct pmem2_config *cfg, void *addr,
		enum pmem2_address_request_type request_type)
{
	if (request_type != PMEM2_ADDRESS_FIXED_NOREPLACE) {
		ERR("invalid address request_type 0x%x", request_type);
		return PMEM2_E_INVALID_ADDRESS_REQUEST_TYPE;
	}

	if (request_type == PMEM2_ADDRESS_FIXED_NOREPLACE && !addr) {
		ERR(
			"cannot use address request type PMEM2_ADDRESS_FIXED_NOREPLACE with addr being NULL");
		return PMEM2_E_ADDRESS_NULL;
	}

	cfg->addr = addr;
	cfg->addr_request = (int)request_type;

	return 0;
}

/*
 * pmem2_config_set_vm_reservation -- set vm_reservation in the
 *                                    pmem2_config structure
 */
int
pmem2_config_set_vm_reservation(struct pmem2_config *cfg,
		struct pmem2_vm_reservation *rsv, size_t offset)
{
	return PMEM2_E_NOSUPP;
}

/*
 * pmem2_config_clear_address -- reset addr and addr_request in the config
 * to the default values
 */
void
pmem2_config_clear_address(struct pmem2_config *cfg)
{
	cfg->addr = NULL;
	cfg->addr_request = PMEM2_ADDRESS_ANY;
}

/*
 * pmem2_config_set_protection -- set protection flags
 * in the config struct
 */
int
pmem2_config_set_protection(struct pmem2_config *cfg,
		unsigned prot)
{
	unsigned unknown_prot = prot & ~(PMEM2_PROT_READ | PMEM2_PROT_WRITE |
	PMEM2_PROT_EXEC | PMEM2_PROT_NONE);
	if (unknown_prot) {
		ERR("invalid flag %u", prot);
		return PMEM2_E_INVALID_PROT_FLAG;
	}

	cfg->protection_flag = prot;
	return 0;
}
