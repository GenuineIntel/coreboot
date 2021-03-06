/* SPDX-License-Identifier: GPL-2.0-only */
/* This file is part of the coreboot project. */

/* The _PTS method (Prepare To Sleep) is called before the OS is
 * entering a sleep state. The sleep state number is passed in Arg0
 */

Method(_PTS,1)
{
	\_SB.PCI0.LPCB.EC.MUTE(1)
	\_SB.PCI0.LPCB.EC.USBP(0)
	\_SB.PCI0.LPCB.EC.RADI(0)
}

/* The _WAK method is called on system wakeup */

Method(_WAK,1)
{
	/* Wake the HKEY to init BT/WWAN */
	\_SB.PCI0.LPCB.EC.HKEY.WAKE (Arg0)

	/* Not implemented. */
	Return(Package(){0,0})
}

Method(UCMS, 1, Serialized)
{
	Switch(ToInteger(Arg0))
	{
		Case (0x0c) /* Turn on ThinkLight */
		{
			\_SB.PCI0.LPCB.EC.LGHT(1)
		}
		Case (0x0d) /* Turn off ThinkLight */
		{
			\_SB.PCI0.LPCB.EC.LGHT(0)
		}
	}
}
