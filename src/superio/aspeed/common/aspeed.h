/* SPDX-License-Identifier: GPL-2.0-or-later */
/* This file is part of the coreboot project. */

#ifndef SUPERIO_ASPEED_COMMON_ROMSTAGE_H
#define SUPERIO_ASPEED_COMMON_ROMSTAGE_H

#include <device/pnp_type.h>
#include <stdint.h>

void aspeed_enable_serial(pnp_devfn_t dev, uint16_t iobase);

void pnp_enter_conf_state(pnp_devfn_t dev);
void pnp_exit_conf_state(pnp_devfn_t dev);

#endif /* SUPERIO_ASPEED_COMMON_ROMSTAGE_H */
