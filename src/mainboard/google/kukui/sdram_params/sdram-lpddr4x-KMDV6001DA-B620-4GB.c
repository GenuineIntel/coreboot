/* SPDX-License-Identifier: GPL-2.0-only */
/* This file is part of the coreboot project. */

#include <soc/emi.h>

struct sdram_params params = {
	.source = DRAMC_PARAM_SOURCE_SDRAM_CONFIG,
	.frequency = 1600,
	.wr_level = {
		[CHANNEL_A] = { {0x21, 0x24}, {0x22, 0x24} },
		[CHANNEL_B] = { {0x24, 0x28}, {0x22, 0x27} }
	},
	.cbt_cs_dly = {
		[CHANNEL_A] = {0xC, 0xC},
		[CHANNEL_B] = {0xB, 0xB}
	},
	.cbt_final_vref = {
		[CHANNEL_A] = {0x58, 0x58},
		[CHANNEL_B] = {0x56, 0x56}
	},
	.emi_cona_val = 0xF053F154,
	.emi_conh_val = 0x44440003,
	.emi_conf_val = 0x00421000,
	.chn_emi_cona_val = {0x0444F051, 0x0444F051},
	.cbt_mode_extern = CBT_NORMAL_MODE,
	.delay_cell_unit = 868,
};
