/* linker.ld - Linker command/script file
 *
 * Copyright (c) 2023 Texas Instruments Incorporated
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <zephyr/arch/arm/cortex_m/scripts/linker.ld>

SECTIONS
{
#ifdef CONFIG_OPENAMP_RSC_TABLE
	SECTION_PROLOGUE(.resource_table,, SUBALIGN(4))
	{
		KEEP(*(.resource_table*))
	} GROUP_LINK_IN(RSC_TABLE)
#endif
}
