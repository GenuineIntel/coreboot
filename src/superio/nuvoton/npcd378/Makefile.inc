# SPDX-License-Identifier: GPL-2.0-or-later
# This file is part of the coreboot project.

ramstage-$(CONFIG_SUPERIO_NUVOTON_NPCD378) += superio.c
ramstage-$(CONFIG_SUPERIO_NUVOTON_NPCD378) += ../../common/ssdt.c
ramstage-$(CONFIG_SUPERIO_NUVOTON_NPCD378) += ../../common/generic.c
