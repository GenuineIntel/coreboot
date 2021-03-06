/* SPDX-License-Identifier: GPL-2.0-only */
/* This file is part of the coreboot project. */

#include <arch/acpi.h>
DefinitionBlock(
	"dsdt.aml",
	"DSDT",
	0x02,		// DSDT revision: ACPI v2.0 and up
	OEM_ID,
	ACPI_TABLE_CREATOR,
	0x20110725	// OEM revision
)
{
	#include <southbridge/intel/common/acpi/platform.asl>
	#include "acpi/platform.asl"
	#include "acpi/mainboard.asl"

	// Thermal Handler
	#include "acpi/thermal.asl"

	// global NVS and variables
	#include <soc/intel/denverton_ns/acpi/globalnvs.asl>

	#include <cpu/intel/common/acpi/cpu.asl>

	Scope (\_SB) {
		Device (PCI0)
		{
			#include <soc/intel/denverton_ns/acpi/northcluster.asl>
			#include <soc/intel/denverton_ns/acpi/southcluster.asl>
		}
	}

	#include <southbridge/intel/common/acpi/sleepstates.asl>
}
