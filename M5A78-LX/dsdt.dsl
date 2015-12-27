/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20090521
 *
 * Disassembly of dsdt.aml, Tue Apr 24 21:55:32 2012
 *
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000D6D6 (54998)
 *     Revision         0x01 **** ACPI 1.0, no 64-bit math support
 *     Checksum         0xBB
 *     OEM ID           "A1860"
 *     OEM Table ID     "A1860001"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20060113 (537264403)
 */
DefinitionBlock ("dsdt.aml", "DSDT", 1, "A1860", "A1860001", 0x00000001)
{
    Name (OSTY, Ones)
    OperationRegion (ACMS, SystemIO, 0x72, 0x02)
    Field (ACMS, ByteAcc, NoLock, Preserve)
    {
        ICMS,   8, 
        DCMS,   8
    }

    IndexField (ICMS, DCMS, ByteAcc, NoLock, Preserve)
    {
                Offset (0x01), 
                Offset (0x04), 
                Offset (0x08), 
        BS_A,   32
    }

    OperationRegion (CFGS, SystemMemory, BS_A, 0x80)
    Field (CFGS, AnyAcc, NoLock, Preserve)
    {
                Offset (0x04), 
        PCIE,   32, 
                Offset (0x31), 
        TPMR,   1, 
        STHP,   1, 
        SHPG,   1, 
        OSCF,   1
    }

    OperationRegion (CMPT, SystemIO, 0x0C50, 0x03)
    Field (CMPT, ByteAcc, NoLock, Preserve)
    {
        CMID,   8, 
            ,   6, 
        GPCT,   2, 
        GP0I,   1, 
        GP1I,   1, 
        GP2I,   1, 
        GP3I,   1, 
        GP4I,   1, 
        GP5I,   1, 
        GP6I,   1, 
        GP7I,   1
    }

    OperationRegion (PCFG, SystemMemory, PCIE, 0x02000000)
    Field (PCFG, AnyAcc, NoLock, Preserve)
    {
                Offset (0x38078), 
                Offset (0x3807A), 
        PMS7,   1, 
                Offset (0x50078), 
                Offset (0x5007A), 
        PMSA,   1, 
                Offset (0x8800A), 
        STCL,   16, 
                Offset (0xA0004), 
        SMIE,   1, 
        SMME,   1, 
                Offset (0xA0008), 
        RVID,   8, 
                Offset (0xA0014), 
        SMB1,   32, 
                Offset (0xA0050), 
            ,   10, 
        GP51,   1, 
                Offset (0xA0052), 
            ,   11, 
        SP56,   1, 
                Offset (0xA0054), 
        SB54,   8, 
                Offset (0xA0056), 
            ,   1, 
        GC62,   1, 
        GC63,   1, 
            ,   2, 
        GS62,   1, 
        GS63,   1, 
            ,   2, 
        GP62,   1, 
        GP63,   1, 
        GP64,   1, 
                Offset (0xA0082), 
            ,   2, 
        G31O,   1, 
                Offset (0xA00E1), 
            ,   6, 
        ACIR,   1, 
                Offset (0xA00F8), 
        SMEA,   32, 
        SMED,   32, 
                Offset (0xA4004), 
        PCMD,   2
    }

    OperationRegion (PMIO, SystemIO, 0x0CD6, 0x02)
    Field (PMIO, ByteAcc, NoLock, Preserve)
    {
        INPM,   8, 
        DAPM,   8
    }

    IndexField (INPM, DAPM, ByteAcc, NoLock, Preserve)
    {
            ,   1, 
        TM1E,   1, 
        TM2E,   1, 
                Offset (0x01), 
            ,   1, 
        TM1S,   1, 
        TM2S,   1, 
                Offset (0x04), 
            ,   7, 
        SLPS,   1, 
                Offset (0x07), 
            ,   7, 
        CLPS,   1, 
                Offset (0x0D), 
        EV0S,   1, 
        EV1S,   1, 
                Offset (0x10), 
            ,   6, 
        PWDE,   1, 
                Offset (0x1C), 
            ,   3, 
        MKME,   1, 
        PI3E,   1, 
        PI2E,   1, 
        PI1E,   1, 
        PI0E,   1, 
            ,   3, 
        MKMS,   1, 
        PI3S,   1, 
        PI2S,   1, 
        PI1S,   1, 
        PI0S,   1, 
                Offset (0x20), 
        P1EB,   16, 
                Offset (0x36), 
            ,   6, 
        GV6P,   1, 
        GV7P,   1, 
        EV0C,   1, 
        EV1C,   1, 
            ,   1, 
        GM0P,   1, 
        GM1P,   1, 
        GM2P,   1, 
        GM3P,   1, 
        GM8P,   1, 
            ,   1, 
        GM4P,   1, 
        GM5P,   1, 
            ,   1, 
        GM6P,   1, 
        GM7P,   1, 
                Offset (0x3B), 
        GPX0,   1, 
        GPX4,   1, 
        GPX5,   1, 
        GPX1,   1, 
        GPX6,   1, 
        GPX7,   1, 
        GPX2,   1, 
        GPX3,   1, 
                Offset (0x55), 
        SPRE,   1, 
            ,   1, 
            ,   1, 
        EPNM,   1, 
        DPPF,   1, 
        FNGS,   1, 
                Offset (0x61), 
            ,   7, 
        R617,   1, 
                Offset (0x65), 
            ,   4, 
        RSTU,   1, 
                Offset (0x68), 
            ,   3, 
        TPDE,   1, 
            ,   1, 
                Offset (0x7C), 
            ,   2, 
        BLNK,   2, 
                Offset (0x84), 
        WPNE,   1, 
        WPAG,   1, 
                Offset (0x92), 
            ,   7, 
        GV7S,   1, 
                Offset (0x96), 
        GP8I,   1, 
        GP9I,   1, 
                Offset (0x9A), 
            ,   7, 
        HECO,   1, 
                Offset (0xA8), 
        PI4E,   1, 
        PI5E,   1, 
        PI6E,   1, 
        PI7E,   1, 
                Offset (0xA9), 
        PI4S,   1, 
        PI5S,   1, 
        PI6S,   1, 
        PI7S,   1
    }

    OperationRegion (P1E0, SystemIO, P1EB, 0x04)
    Field (P1E0, ByteAcc, NoLock, Preserve)
    {
            ,   14, 
        PEWS,   1, 
        WSTA,   1, 
            ,   14, 
        PEWD,   1
    }

    Method (SPTS, 1, NotSerialized)
    {
        If (LEqual (Arg0, 0x03))
        {
            Store (Zero, RSTU)
        }

        If (LEqual (Arg0, One))
        {
            Store (0x02, BLNK)
        }

        If (LEqual (Arg0, 0x02))
        {
            Store (Zero, BLNK)
        }

        If (LEqual (Arg0, 0x03))
        {
            Store (One, BLNK)
        }

        Store (One, CLPS)
        Store (One, SLPS)
        If (LLessEqual (RVID, 0x13))
        {
            Store (Zero, PWDE)
        }
    }

    Method (SWAK, 1, NotSerialized)
    {
        Store (One, HECO)
        If (LEqual (Arg0, 0x03))
        {
            Store (One, RSTU)
        }

        Store (PEWS, Local0)
        If (Local0)
        {
//            Notify (\_SB.PWRB, 0x02)
        }

        Store (PEWS, PEWS)
        Store (0x03, BLNK)
        Store (One, PMS7)
        Store (One, PMSA)
     
    }
}

    Method (TRMD, 1, NotSerialized)
    {
        Store (Arg0, SPRE)
        Store (Arg0, TPDE)
    }

    Name (DP80, 0x80)
    Name (DP90, 0x90)
    Name (SPIO, 0x2E)
    Name (IOPB, 0x0230)
    Name (IOPL, 0x10)
    Name (IOEL, 0x10)
    Name (IOGB, 0x0300)
    Name (IOGL, 0x10)
    Name (IOSB, 0x0A30)
    Name (IOSL, 0x10)
    Name (ATSW, 0xE5)
    Name (APIC, One)
    Name (PMBS, 0x0800)
    Name (PMLN, 0xA0)
    Name (GPBS, Zero)
    Name (GPLN, Zero)
    Name (SMB0, 0x0B00)
    Name (SMBB, 0x0B20)
    Name (SMBM, 0x10)
    Name (SMBL, 0x20)
    Name (AODS, 0xF5)
    Name (SMIP, 0xB0)
    Name (ACSS, One)
    Name (SBA1, 0x0B00)
    Name (SBA2, 0x0B20)
    Name (SIOP, 0x2E)
    Name (GIOB, 0x0300)
    Name (T1OF, Zero)
    Name (T2OF, Zero)
    Name (T3OF, Zero)
    Name (CQST, 0x3C)
    Name (PCIB, 0xE0000000)
    Name (PCIL, 0x10000000)
    Name (PEHP, One)
    Name (SHPC, Zero)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (SMBS, 0x0B20)
    Name (SMIO, 0xB0)
    Name (IOEB, 0x0290) 
   OperationRegion (BIOS, SystemMemory, 0xCFE98064, 0xFF)
    Field (BIOS, ByteAcc, NoLock, Preserve)
    {
        SS1,    1, 
        SS2,    1, 
        SS3,    1, 
        SS4,    1, 
                Offset (0x01), 
        IOST,   16, 
        TOPM,   32, 
        ROMS,   32, 
        MG1B,   32, 
        MG1L,   32, 
        MG2B,   32, 
        MG2L,   32, 
                Offset (0x1C), 
        DMAX,   8, 
        HPTA,   32, 
        CPB0,   32, 
        CPB1,   32, 
        CPB2,   32, 
        CPB3,   32, 
        ASSB,   8, 
        AOTB,   8, 
        AAXB,   32, 
        SMIF,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        MPEN,   8, 
        TPMF,   8, 
        MG3B,   32, 
        MG3L,   32, 
        MH1B,   32, 
        MH1L,   32, 
        OSTP,   8
    }

    Method (RRIO, 4, NotSerialized)
    {
        Store ("RRIO", Debug)
    }

    Method (RDMA, 3, NotSerialized)
    {
        Store ("rDMA", Debug)
    }

    Name (PICM, Zero)
    Method (_PIC, 1, NotSerialized)
    {
        If (Arg0)
        {
            Store (0xAA, DBG8)
        }
        Else
        {
            Store (0xAC, DBG8)
        }

        Store (Arg0, PICM)
    }

    Name (OSVR, Ones)
    Method (OSFL, 0, NotSerialized)
    {
        If (LNotEqual (OSVR, Ones))
        {
            Return (OSVR)
        }

        Name (TTT0, Zero)
        Store (OSYS (), TTT0)
        If (LEqual (TTT0, One))
        {
            Store (0x03, OSVR)
        }
        Else
        {
            If (LEqual (TTT0, 0x10))
            {
                Store (One, OSVR)
            }
            Else
            {
                If (LEqual (TTT0, 0x11))
                {
                    Store (0x02, OSVR)
                }
                Else
                {
                    If (LEqual (TTT0, 0x12))
                    {
                        Store (0x04, OSVR)
                    }
                    Else
                    {
                        If (LEqual (TTT0, 0x13))
                        {
                            Store (Zero, OSVR)
                        }
                        Else
                        {
                            If (LEqual (TTT0, 0x14))
                            {
                                Store (Zero, OSVR)
                            }
                            Else
                            {
                                If (LEqual (TTT0, 0x15))
                                {
                                    Store (Zero, OSVR)
                                }
                            }
                        }
                    }
                }
            }
        }

        Return (OSVR)
    }

    Method (MCTH, 2, NotSerialized)
    {
        If (LLess (SizeOf (Arg0), SizeOf (Arg1)))
        {
            Return (Zero)
        }

        Add (SizeOf (Arg0), One, Local0)
        Name (BUF0, Buffer (Local0) {})
        Name (BUF1, Buffer (Local0) {})
        Store (Arg0, BUF0)
        Store (Arg1, BUF1)
        While (Local0)
        {
            Decrement (Local0)
            If (LNotEqual (DerefOf (Index (BUF0, Local0)), DerefOf (Index (
                BUF1, Local0))))
            {
                Return (Zero)
            }
        }

        Return (One)
    }

    Name (PRWP, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (GPRW, 2, NotSerialized)
    {
        Store (Arg0, Index (PRWP, Zero))
        Store (ShiftLeft (SS1, One), Local0)
        Or (Local0, ShiftLeft (SS2, 0x02), Local0)
        Or (Local0, ShiftLeft (SS3, 0x03), Local0)
        Or (Local0, ShiftLeft (SS4, 0x04), Local0)
        If (And (ShiftLeft (One, Arg1), Local0))
        {
            Store (Arg1, Index (PRWP, One))
        }
        Else
        {
            ShiftRight (Local0, One, Local0)
            If (LOr (LEqual (OSFL (), One), LEqual (OSFL (), 0x02)))
            {
                FindSetLeftBit (Local0, Index (PRWP, One))
            }
            Else
            {
                FindSetRightBit (Local0, Index (PRWP, One))
            }
        }

        Return (PRWP)
    }

    Name (WAKP, Package (0x02)
    {
        Zero, 
        Zero
    })
    OperationRegion (DEB0, SystemIO, DP80, One)
    Field (DEB0, ByteAcc, NoLock, Preserve)
    {
        DBG8,   8
    }

    OperationRegion (DEB1, SystemIO, DP90, 0x02)
    Field (DEB1, WordAcc, NoLock, Preserve)
    {
        DBG9,   16
    }

    Method (OSYS, 0, NotSerialized)
    {
        Store (0x10, Local0)
        If (CondRefOf (_OSI, Local1))
        {
            If (_OSI ("Windows 2000"))
            {
                Store (0x12, Local0)
            }

            If (_OSI ("Windows 2001"))
            {
                Store (0x13, Local0)
            }

            If (_OSI ("Windows 2001 SP1"))
            {
                Store (0x13, Local0)
            }

            If (_OSI ("Windows 2001 SP2"))
            {
                Store (0x13, Local0)
            }

            If (_OSI ("Windows 2001.1"))
            {
                Store (0x14, Local0)
            }

            If (_OSI ("Windows 2001.1 SP1"))
            {
                Store (0x14, Local0)
            }

            If (_OSI ("Windows 2006"))
            {
                Store (0x15, Local0)
            }
        }
        Else
        {
            If (MCTH (_OS, "Microsoft Windows NT"))
            {
                Store (0x12, Local0)
            }
            Else
            {
                If (MCTH (_OS, "Microsoft WindowsME: Millennium Edition"))
                {
                    Store (0x11, Local0)
                }
            }
        }

        Return (Local0)
    }

    Scope (_PR)
    {
        Processor (P001, 0x01, 0x00000810, 0x06) {}
        Processor (P002, 0x02, 0x00000000, 0x00) {}
        Processor (P003, 0x03, 0x00000000, 0x00) {}
        Processor (P004, 0x04, 0x00000000, 0x00) {}
        Processor (P005, 0x05, 0x00000000, 0x00) {}
        Processor (P006, 0x06, 0x00000000, 0x00) {}
        Processor (P007, 0x07, 0x00000000, 0x00) {}
        Processor (P008, 0x08, 0x00000000, 0x00) {}
        Alias (P001, CPU1)
        Alias (P002, CPU2)
        Alias (P003, CPU3)
        Alias (P004, CPU4)
        Alias (P005, CPU5)
        Alias (P006, CPU6)
        Alias (P007, CPU7)
        Alias (P008, CPU8)
    }

    Scope (_SB)
    {
        Name (PR00, Package (0x35)
        {
            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0007FFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0007FFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0007FFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0007FFFF, 
                0x03, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0009FFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0009FFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0009FFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0009FFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                0x03, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x000BFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x000BFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x000BFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x000BFFFF, 
                0x03, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x000CFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x000CFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x000CFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x000CFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                0x03, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                Zero, 
                LNKG, 
                Zero
            }
        })
        Name (AR00, Package (0x35)
        {
            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0007FFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0007FFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0007FFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0007FFFF, 
                0x03, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0009FFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0009FFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0009FFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0009FFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                0x03, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x000BFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x000BFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x000BFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x000BFFFF, 
                0x03, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x000CFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x000CFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x000CFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x000CFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                0x03, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                Zero, 
                Zero, 
                0x16
            }
        })
        Name (PR01, Package (0x04)
        {
            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR01, Package (0x04)
        {
            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR03, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR03, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR1A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR1A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR0C, Package (0x04)
        {
            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                LNKH, 
                Zero
            }
        })
        Name (AR0C, Package (0x04)
        {
            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                Zero, 
                0x17
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {4,7,10,12,14,15}
        })
        Name (PRSB, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {4,7,10,11,12,14,15}
        })
        Alias (PRSB, PRSC)
        Alias (PRSB, PRSD)
        Alias (PRSB, PRSE)
        Alias (PRSB, PRSF)
        Name (PRSG, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {11}
        })
        Alias (PRSB, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A03"))
            Name (_ADR, 0x00180000)
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)
            Method (_PRT, 0, NotSerialized)
            {
                If (PICM)
                {
                    Return (AR00)
                }

                Return (PR00)
            }

            Method (NPTS, 1, NotSerialized)
            {
            }

            Method (NWAK, 1, NotSerialized)
            {
            }

            Device (RS78)
            {
                Name (_ADR, Zero)
                OperationRegion (NB2, PCI_Config, Zero, 0x0100)
                Field (NB2, AnyAcc, NoLock, Preserve)
                {
                            Offset (0x60), 
                    MI,     32, 
                    MD,     32, 
                            Offset (0x94), 
                    HI,     32, 
                    HD,     32, 
                            Offset (0xE8), 
                    MCI,    32, 
                    MCD,    32
                }

                Device (BROD)
                {
                    Name (_HID, EisaId ("PNP0C02"))
                    Name (_UID, 0x14)
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y00)
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y01)
                    })
                    Method (_CRS, 0, NotSerialized)
                    {
                        CreateDWordField (CRS, \_SB.PCI0.RS78.BROD._Y00._BAS, BAS1)
                        CreateDWordField (CRS, \_SB.PCI0.RS78.BROD._Y00._LEN, LEN1)
                        CreateDWordField (CRS, \_SB.PCI0.RS78.BROD._Y01._BAS, BAS2)
                        CreateDWordField (CRS, \_SB.PCI0.RS78.BROD._Y01._LEN, LEN2)
                        Store (0x3C, MI)
                        Store (MD, Local0)
                        If (And (Local0, 0x40))
                        {
                            Store (0x3A, MI)
                            And (MD, 0xFFFFFF00, BAS1)
                            ShiftLeft (And (MD, 0xFF), 0x17, LEN1)
                        }

                        Store (0x11, MCI)
                        Store (MCD, Local1)
                        Store (0x12, MCI)
                        Store (MCD, Local2)
                        Store (0xF0, MCI)
                        Store (MCD, Local3)
                        If (LEqual (Local2, Zero))
                        {
                            If (LNotEqual (Local3, Zero))
                            {
                                Store (Local1, BAS2)
                                Store (ShiftLeft (Local3, 0x14), LEN2)
                            }
                        }

                        Return (CRS)
                    }
                }
            }

            Device (P0P1)
            {
                Name (_ADR, 0x00010000)
                Method (_PRT, 0, NotSerialized)
                {
                    If (PICM)
                    {
                        Return (AR01)
                    }

                    Return (PR01)
                }
            }

            Device (PCE2)
            {
                Name (_ADR, 0x00020000)
                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x18, 0x04))
                }

                Method (_PRT, 0, NotSerialized)
                {
                    If (PICM)
                    {
                        Return (AR02)
                    }

                    Return (PR02)
                }
            }

            Device (PCE3)
            {
                Name (_ADR, 0x00030000)
                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x18, 0x04))
                }

                Method (_PRT, 0, NotSerialized)
                {
                    If (PICM)
                    {
                        Return (AR03)
                    }

                    Return (PR03)
                }
            }

            Device (PCE4)
            {
                Name (_ADR, 0x00040000)
                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x18, 0x04))
                }

                Method (_PRT, 0, NotSerialized)
                {
                    If (PICM)
                    {
                        Return (AR04)
                    }

                    Return (PR04)
                }

                Device (RLAN)
                {
                    Name (_ADR, Zero)
                    Method (_PRW, 0, NotSerialized)
                    {
                        Return (GPRW (0x18, 0x04))
                    }
                }
            }

            Device (PCE5)
            {
                Name (_ADR, 0x00050000)
                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x18, 0x04))
                }
            }

            Device (PCE6)
            {
                Name (_ADR, 0x00060000)
                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x18, 0x04))
                }
            }

            Device (PCE7)
            {
                Name (_ADR, 0x00070000)
                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x18, 0x04))
                }
            }

            Device (PCE9)
            {
                Name (_ADR, 0x00090000)
                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x18, 0x04))
                }

                Method (_PRT, 0, NotSerialized)
                {
                    If (PICM)
                    {
                        Return (AR09)
                    }

                    Return (PR09)
                }
            }

            Device (PCEA)
            {
                Name (_ADR, 0x000A0000)
                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x18, 0x04))
                }

                Method (_PRT, 0, NotSerialized)
                {
                    If (PICM)
                    {
                        Return (AR1A)
                    }

                    Return (PR1A)
                }
            }

            Device (PCEB)
            {
                Name (_ADR, 0x000B0000)
                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x18, 0x04))
                }
            }

            Device (PCEC)
            {
                Name (_ADR, 0x000C0000)
                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x18, 0x04))
                }
            }

            Device (IDEC)
            {
                Name (_ADR, 0x00140001)
                Name (UDMT, Package (0x08)
                {
                    0x78, 
                    0x5A, 
                    0x3C, 
                    0x2D, 
                    0x1E, 
                    0x14, 
                    0x0F, 
                    Zero
                })
                Name (PIOT, Package (0x06)
                {
                    0x0258, 
                    0x0186, 
                    0x010E, 
                    0xB4, 
                    0x78, 
                    Zero
                })
                Name (PITR, Package (0x06)
                {
                    0x99, 
                    0x47, 
                    0x34, 
                    0x22, 
                    0x20, 
                    0x99
                })
                Name (MDMT, Package (0x04)
                {
                    0x01E0, 
                    0x96, 
                    0x78, 
                    Zero
                })
                Name (MDTR, Package (0x04)
                {
                    0x77, 
                    0x21, 
                    0x20, 
                    0xFF
                })
                Name (FZTF, Buffer (0x07)
                {
                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF5
                })
                OperationRegion (IDE, PCI_Config, 0x40, 0x20)
                Field (IDE, AnyAcc, NoLock, Preserve)
                {
                    PPIT,   16, 
                    SPIT,   16, 
                    PMDT,   16, 
                    SMDT,   16, 
                    PPIC,   8, 
                    SPIC,   8, 
                    PPIM,   8, 
                    SPIM,   8, 
                            Offset (0x14), 
                    PUDC,   2, 
                    SUDC,   2, 
                            Offset (0x16), 
                    PUDM,   8, 
                    SUDM,   8
                }

                Method (GETT, 1, NotSerialized)
                {
                    Store (And (Arg0, 0x0F), Local0)
                    Store (ShiftRight (Arg0, 0x04), Local1)
                    Return (Multiply (0x1E, Add (Add (Local0, One), Add (Local1, 
                        One))))
                }

                Method (GTM, 1, NotSerialized)
                {
                    CreateByteField (Arg0, Zero, PIT1)
                    CreateByteField (Arg0, One, PIT0)
                    CreateByteField (Arg0, 0x02, MDT1)
                    CreateByteField (Arg0, 0x03, MDT0)
                    CreateByteField (Arg0, 0x04, PICX)
                    CreateByteField (Arg0, 0x05, UDCX)
                    CreateByteField (Arg0, 0x06, UDMX)
                    Name (BUF, Buffer (0x14)
                    {
                        /* 0000 */    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 
                        /* 0008 */    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 
                        /* 0010 */    0x00, 0x00, 0x00, 0x00
                    })
                    CreateDWordField (BUF, Zero, PIO0)
                    CreateDWordField (BUF, 0x04, DMA0)
                    CreateDWordField (BUF, 0x08, PIO1)
                    CreateDWordField (BUF, 0x0C, DMA1)
                    CreateDWordField (BUF, 0x10, FLAG)
                    If (And (PICX, One))
                    {
                        Return (BUF)
                    }

                    Store (GETT (PIT0), PIO0)
                    Store (GETT (PIT1), PIO1)
                    If (And (UDCX, One))
                    {
                        Or (FLAG, One, FLAG)
                        Store (DerefOf (Index (UDMT, And (UDMX, 0x0F))), DMA0)
                    }
                    Else
                    {
                        Store (GETT (MDT0), DMA0)
                    }

                    If (And (UDCX, 0x02))
                    {
                        Or (FLAG, 0x04, FLAG)
                        Store (DerefOf (Index (UDMT, ShiftRight (UDMX, 0x04))), DMA1)
                    }
                    Else
                    {
                        Store (GETT (MDT1), DMA1)
                    }

                    Or (FLAG, 0x1A, FLAG)
                    Return (BUF)
                }

                Method (STM, 3, NotSerialized)
                {
                    CreateDWordField (Arg0, Zero, PIO0)
                    CreateDWordField (Arg0, 0x04, DMA0)
                    CreateDWordField (Arg0, 0x08, PIO1)
                    CreateDWordField (Arg0, 0x0C, DMA1)
                    CreateDWordField (Arg0, 0x10, FLAG)
                    Name (BUF, Buffer (0x07)
                    {
                        0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00
                    })
                    CreateByteField (BUF, Zero, PIT1)
                    CreateByteField (BUF, One, PIT0)
                    CreateByteField (BUF, 0x02, MDT1)
                    CreateByteField (BUF, 0x03, MDT0)
                    CreateByteField (BUF, 0x04, PIMX)
                    CreateByteField (BUF, 0x05, UDCX)
                    CreateByteField (BUF, 0x06, UDMX)
                    Store (Match (PIOT, MLE, PIO0, MTR, Zero, Zero), Local0)
                    Divide (Local0, 0x05, Local0)
                    Store (Match (PIOT, MLE, PIO1, MTR, Zero, Zero), Local1)
                    Divide (Local1, 0x05, Local1)
                    Store (Or (ShiftLeft (Local1, 0x04), Local0), PIMX)
                    Store (DerefOf (Index (PITR, Local0)), PIT0)
                    Store (DerefOf (Index (PITR, Local1)), PIT1)
                    If (And (FLAG, One))
                    {
                        Store (Match (UDMT, MLE, DMA0, MTR, Zero, Zero), Local0)
                        Divide (Local0, 0x07, Local0)
                        Or (UDMX, Local0, UDMX)
                        Or (UDCX, One, UDCX)
                    }
                    Else
                    {
                        If (LNotEqual (DMA0, Ones))
                        {
                            Store (Match (MDMT, MLE, DMA0, MTR, Zero, Zero), Local0)
                            Store (DerefOf (Index (MDTR, Local0)), MDT0)
                        }
                    }

                    If (And (FLAG, 0x04))
                    {
                        Store (Match (UDMT, MLE, DMA1, MTR, Zero, Zero), Local0)
                        Divide (Local0, 0x07, Local0)
                        Or (UDMX, ShiftLeft (Local0, 0x04), UDMX)
                        Or (UDCX, 0x02, UDCX)
                    }
                    Else
                    {
                        If (LNotEqual (DMA1, Ones))
                        {
                            Store (Match (MDMT, MLE, DMA1, MTR, Zero, Zero), Local0)
                            Store (DerefOf (Index (MDTR, Local0)), MDT1)
                        }
                    }

                    Return (BUF)
                }

                Method (GTF, 2, NotSerialized)
                {
                    CreateByteField (Arg1, Zero, MDT1)
                    CreateByteField (Arg1, One, MDT0)
                    CreateByteField (Arg1, 0x02, PIMX)
                    CreateByteField (Arg1, 0x03, UDCX)
                    CreateByteField (Arg1, 0x04, UDMX)
                    If (LEqual (Arg0, 0xA0))
                    {
                        Store (And (PIMX, 0x0F), Local0)
                        Store (MDT0, Local1)
                        And (UDCX, One, Local2)
                        Store (And (UDMX, 0x0F), Local3)
                    }
                    Else
                    {
                        Store (ShiftRight (PIMX, 0x04), Local0)
                        Store (MDT1, Local1)
                        And (UDCX, 0x02, Local2)
                        Store (ShiftRight (UDMX, 0x04), Local3)
                    }

                    Name (BUF, Buffer (0x15)
                    {
                        /* 0000 */    0x03, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xEF, 0x03, 
                        /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xFF, 0xEF, 0x00, 0x00, 
                        /* 0010 */    0x00, 0x00, 0x00, 0x00, 0xF5
                    })
                    CreateByteField (BUF, One, PMOD)
                    CreateByteField (BUF, 0x08, DMOD)
                    CreateByteField (BUF, 0x05, CMDA)
                    CreateByteField (BUF, 0x0C, CMDB)
                    CreateByteField (BUF, 0x13, CMDC)
                    Store (Arg0, CMDA)
                    Store (Arg0, CMDB)
                    Store (Arg0, CMDC)
                    Or (Local0, 0x08, PMOD)
                    If (Local2)
                    {
                        Or (Local3, 0x40, DMOD)
                    }
                    Else
                    {
                        Store (Match (MDMT, MLE, GETT (Local1), MTR, Zero, Zero), Local4)
                        If (LLess (Local4, 0x03))
                        {
                            Or (0x20, Local4, DMOD)
                        }
                    }

                    Return (BUF)
                }

                Device (PRID)
                {
                    Name (_ADR, Zero)
                    Method (_GTM, 0, NotSerialized)
                    {
                        Name (BUF, Buffer (0x07)
                        {
                            0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00
                        })
                        CreateWordField (BUF, Zero, VPIT)
                        CreateWordField (BUF, 0x02, VMDT)
                        CreateByteField (BUF, 0x04, VPIC)
                        CreateByteField (BUF, 0x05, VUDC)
                        CreateByteField (BUF, 0x06, VUDM)
                        If (LOr (LGreaterEqual (^^^SMBS.REV, 0x3A), ^^^SMBS.SOPT))
                        {
                            Store (PPIT, VPIT)
                            Store (PMDT, VMDT)
                            Store (PPIC, VPIC)
                            Store (PUDC, VUDC)
                            Store (PUDM, VUDM)
                        }
                        Else
                        {
                            Store (SPIT, VPIT)
                            Store (SMDT, VMDT)
                            Store (SPIC, VPIC)
                            Store (SUDC, VUDC)
                            Store (SUDM, VUDM)
                        }

                        Return (GTM (BUF))
                    }

                    Method (_STM, 3, NotSerialized)
                    {
                        Name (BUF, Buffer (0x07)
                        {
                            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                        })
                        CreateWordField (BUF, Zero, VPIT)
                        CreateWordField (BUF, 0x02, VMDT)
                        CreateByteField (BUF, 0x04, VPIM)
                        CreateByteField (BUF, 0x05, VUDC)
                        CreateByteField (BUF, 0x06, VUDM)
                        Store (STM (Arg0, Arg1, Arg2), BUF)
                        If (LOr (LGreaterEqual (^^^SMBS.REV, 0x3A), ^^^SMBS.SOPT))
                        {
                            Store (VPIT, PPIT)
                            Store (VMDT, PMDT)
                            Store (VPIM, PPIM)
                            Store (VUDC, PUDC)
                            Store (VUDM, PUDM)
                        }
                        Else
                        {
                            Store (VPIT, SPIT)
                            Store (VMDT, SMDT)
                            Store (VPIM, SPIM)
                            Store (VUDC, SUDC)
                            Store (VUDM, SUDM)
                        }
                    }

                    Device (P_D0)
                    {
                        Name (_ADR, Zero)
                        Method (_GTF, 0, NotSerialized)
                        {
                            Name (BUF, Buffer (0x05)
                            {
                                0x00, 0x00, 0x00, 0x00, 0x00
                            })
                            CreateWordField (BUF, Zero, VMDT)
                            CreateByteField (BUF, 0x02, VPIM)
                            CreateByteField (BUF, 0x03, VUDC)
                            CreateByteField (BUF, 0x04, VUDM)
                            If (LOr (LGreaterEqual (^^^^SMBS.REV, 0x3A), ^^^^SMBS.SOPT))
                            {
                                Store (PMDT, VMDT)
                                Store (PPIM, VPIM)
                                Store (PUDC, VUDC)
                                Store (PUDM, VUDM)
                            }
                            Else
                            {
                                Store (SMDT, VMDT)
                                Store (SPIM, VPIM)
                                Store (SUDC, VUDC)
                                Store (SUDM, VUDM)
                            }

                            Store (Buffer (0x07)
                                {
                                    0x03, 0x46, 0x00, 0x00, 0x00, 0xA0, 0xEF
                                }, Local0)
                            Return (Concatenate (Local0, FZTF))
                        }
                    }

                    Device (P_D1)
                    {
                        Name (_ADR, One)
                        Method (_GTF, 0, NotSerialized)
                        {
                            Name (BUF, Buffer (0x05)
                            {
                                0x00, 0x00, 0x00, 0x00, 0x00
                            })
                            CreateWordField (BUF, Zero, VMDT)
                            CreateByteField (BUF, 0x02, VPIM)
                            CreateByteField (BUF, 0x03, VUDC)
                            CreateByteField (BUF, 0x04, VUDM)
                            If (LOr (LGreaterEqual (^^^^SMBS.REV, 0x3A), ^^^^SMBS.SOPT))
                            {
                                Store (PMDT, VMDT)
                                Store (PPIM, VPIM)
                                Store (PUDC, VUDC)
                                Store (PUDM, VUDM)
                            }
                            Else
                            {
                                Store (SMDT, VMDT)
                                Store (SPIM, VPIM)
                                Store (SUDC, VUDC)
                                Store (SUDM, VUDM)
                            }

                            Store (Buffer (0x07)
                                {
                                    0x03, 0x46, 0x00, 0x00, 0x00, 0xA0, 0xEF
                                }, Local0)
                            Return (Concatenate (Local0, FZTF))
                        }
                    }
                }

                Device (SECD)
                {
                    Name (_ADR, One)
                    Method (_GTM, 0, NotSerialized)
                    {
                        Name (BUF, Buffer (0x07)
                        {
                            0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00
                        })
                        CreateWordField (BUF, Zero, VPIT)
                        CreateWordField (BUF, 0x02, VMDT)
                        CreateByteField (BUF, 0x04, VPIC)
                        CreateByteField (BUF, 0x05, VUDC)
                        CreateByteField (BUF, 0x06, VUDM)
                        If (LOr (LGreaterEqual (^^^SMBS.REV, 0x3A), ^^^SMBS.SOPT))
                        {
                            Store (SPIT, VPIT)
                            Store (SMDT, VMDT)
                            Store (SPIC, VPIC)
                            Store (SUDC, VUDC)
                            Store (SUDM, VUDM)
                        }
                        Else
                        {
                            Store (PPIT, VPIT)
                            Store (PMDT, VMDT)
                            Store (PPIC, VPIC)
                            Store (PUDC, VUDC)
                            Store (PUDM, VUDM)
                        }

                        Return (GTM (BUF))
                    }

                    Method (_STM, 3, NotSerialized)
                    {
                        Name (BUF, Buffer (0x07)
                        {
                            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                        })
                        CreateWordField (BUF, Zero, VPIT)
                        CreateWordField (BUF, 0x02, VMDT)
                        CreateByteField (BUF, 0x04, VPIM)
                        CreateByteField (BUF, 0x05, VUDC)
                        CreateByteField (BUF, 0x06, VUDM)
                        Store (STM (Arg0, Arg1, Arg2), BUF)
                        If (LOr (LGreaterEqual (^^^SMBS.REV, 0x3A), ^^^SMBS.SOPT))
                        {
                            Store (VPIT, SPIT)
                            Store (VMDT, SMDT)
                            Store (VPIM, SPIM)
                            Store (VUDC, SUDC)
                            Store (VUDM, SUDM)
                        }
                        Else
                        {
                            Store (VPIT, PPIT)
                            Store (VMDT, PMDT)
                            Store (VPIM, PPIM)
                            Store (VUDC, PUDC)
                            Store (VUDM, PUDM)
                        }
                    }

                    Device (S_D0)
                    {
                        Name (_ADR, Zero)
                        Method (_GTF, 0, NotSerialized)
                        {
                            Name (BUF, Buffer (0x05)
                            {
                                0x00, 0x00, 0x00, 0x00, 0x00
                            })
                            CreateWordField (BUF, Zero, VMDT)
                            CreateByteField (BUF, 0x02, VPIM)
                            CreateByteField (BUF, 0x03, VUDC)
                            CreateByteField (BUF, 0x04, VUDM)
                            If (LOr (LGreaterEqual (^^^^SMBS.REV, 0x3A), ^^^^SMBS.SOPT))
                            {
                                Store (SMDT, VMDT)
                                Store (SPIM, VPIM)
                                Store (SUDC, VUDC)
                                Store (SUDM, VUDM)
                            }
                            Else
                            {
                                Store (PMDT, VMDT)
                                Store (PPIM, VPIM)
                                Store (PUDC, VUDC)
                                Store (PUDM, VUDM)
                            }

                            Store (Buffer (0x07)
                                {
                                    0x03, 0x46, 0x00, 0x00, 0x00, 0xA0, 0xEF
                                }, Local0)
                            Return (Concatenate (Local0, FZTF))
                        }
                    }

                    Device (S_D1)
                    {
                        Name (_ADR, One)
                        Method (_GTF, 0, NotSerialized)
                        {
                            Name (BUF, Buffer (0x05)
                            {
                                0x00, 0x00, 0x00, 0x00, 0x00
                            })
                            CreateWordField (BUF, Zero, VMDT)
                            CreateByteField (BUF, 0x02, VPIM)
                            CreateByteField (BUF, 0x03, VUDC)
                            CreateByteField (BUF, 0x04, VUDM)
                            If (LOr (LGreaterEqual (^^^^SMBS.REV, 0x3A), ^^^^SMBS.SOPT))
                            {
                                Store (SMDT, VMDT)
                                Store (SPIM, VPIM)
                                Store (SUDC, VUDC)
                                Store (SUDM, VUDM)
                            }
                            Else
                            {
                                Store (PMDT, VMDT)
                                Store (PPIM, VPIM)
                                Store (PUDC, VUDC)
                                Store (PUDM, VUDM)
                            }

                            Store (Buffer (0x07)
                                {
                                    0x03, 0x46, 0x00, 0x00, 0x00, 0xA0, 0xEF
                                }, Local0)
                            Return (Concatenate (Local0, FZTF))
                        }
                    }
                }
            }

            Device (SBAZ)
            {
                Name (_ADR, 0x00140002)
                OperationRegion (PCI, PCI_Config, Zero, 0x0100)
                Field (PCI, AnyAcc, NoLock, Preserve)
                {
                            Offset (0x42), 
                    DNSP,   1, 
                    DNSO,   1, 
                    ENSR,   1
                }

                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x1B, 0x04))
                }
            }

            Device (SBRG)
            {
                Name (_ADR, 0x00140003)
                OperationRegion (LPCS, PCI_Config, Zero, 0x0100)
                Field (LPCS, AnyAcc, NoLock, Preserve)
                {
                            Offset (0x40), 
                        ,   7, 
                    ECEN,   1, 
                            Offset (0xA4), 
                    ECAD,   16
                }

                Name (ECIN, Zero)
                Mutex (ECMU, 0x00)
                Mutex (MLMU, 0x00)
                If (ECEN)
                {
                    And (ECAD, 0xFFFE, ECIN)
                    OperationRegion (ECBP, SystemIO, ECIN, 0x02)
                    Field (ECBP, ByteAcc, NoLock, Preserve)
                    {
                        BPIO,   8
                    }

                    OperationRegion (ECIO, SystemIO, ECIN, 0x02)
                    Field (ECIO, ByteAcc, NoLock, Preserve)
                    {
                        IND,    8, 
                        DAT,    8
                    }

                    IndexField (IND, DAT, ByteAcc, NoLock, Preserve)
                    {
                                Offset (0x07), 
                        LDNM,   8, 
                                Offset (0x22), 
                        POW,    8, 
                                Offset (0x30), 
                        ACT,    1, 
                                Offset (0x60), 
                        IOBH,   8, 
                        IOBL,   8, 
                                Offset (0x70), 
                        INT,    4
                    }

                    Method (CFG, 1, NotSerialized)
                    {
                        Store (0x5A, BPIO)
                        Store (0x5A, BPIO)
                        Store (Arg0, LDNM)
                    }

                    Method (XCFG, 0, NotSerialized)
                    {
                        Store (0xA5, BPIO)
                    }

                    Method (STA, 1, NotSerialized)
                    {
                        Acquire (ECMU, 0x5000)
                        CFG (Arg0)
                        Store (Zero, Local1)
                        If (ACT)
                        {
                            Store (0x0F, Local1)
                        }

                        If (LEqual (IND, 0xFF))
                        {
                            Store (Zero, Local1)
                        }

                        XCFG ()
                        Release (ECMU)
                        Return (Local1)
                    }

                    Method (RDMB, 1, NotSerialized)
                    {
                        Acquire (ECMU, 0x1388)
                        Acquire (MLMU, 0x1388)
                        CFG (0x05)
                        Name (IOBA, Zero)
                        Store (IOBH, IOBA)
                        ShiftLeft (IOBA, 0x08, IOBA)
                        Or (IOBA, IOBL, IOBA)
                        OperationRegion (MLIO, SystemIO, IOBA, 0x02)
                        Field (MLIO, ByteAcc, NoLock, Preserve)
                        {
                            MLIN,   8, 
                            MLDA,   8
                        }

                        Store (Arg0, MLIN)
                        Return (MLDA)
                        Release (MLMU)
                        Release (ECMU)
                    }

                    Method (WRMB, 2, NotSerialized)
                    {
                        Acquire (ECMU, 0x1388)
                        Acquire (MLMU, 0x1388)
                        CFG (0x05)
                        Name (IOBA, Zero)
                        Store (IOBH, IOBA)
                        ShiftLeft (IOBA, 0x08, IOBA)
                        Or (IOBA, IOBL, IOBA)
                        OperationRegion (MLIO, SystemIO, IOBA, 0x02)
                        Field (MLIO, ByteAcc, NoLock, Preserve)
                        {
                            MLIN,   8, 
                            MLDA,   8
                        }

                        Store (Arg0, MLIN)
                        Store (Arg1, MLDA)
                        Release (MLMU)
                        Release (ECMU)
                    }

                    Name (KBWF, One)
                    Name (MSWF, One)
                    Name (IRWF, One)
                    Device (PSKE)
                    {
                        Name (_HID, EisaId ("PNP0303"))
                        Name (_CID, EisaId ("PNP030B"))
                        Method (_STA, 0, NotSerialized)
                        {
                            Store (Zero, Local1)
                            Store (STA (0x07), Local1)
                            Return (Local1)
                        }

                        Name (_CRS, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x0060,             // Range Minimum
                                0x0060,             // Range Maximum
                                0x00,               // Alignment
                                0x01,               // Length
                                )
                            IO (Decode16,
                                0x0064,             // Range Minimum
                                0x0064,             // Range Maximum
                                0x00,               // Alignment
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        })
                        Method (_PRW, 0, NotSerialized)
                        {
                            Return (GPRW (0x03, 0x04))
                        }

                        Method (_PSW, 1, NotSerialized)
                        {
                            If (Arg0)
                            {
                                Store (One, KBWF)
                            }
                            Else
                            {
                                Store (Zero, KBWF)
                            }
                        }
                    }

                    Device (PSMS)
                    {
                        Name (_HID, EisaId ("PNP0F03"))
                        Name (_CID, EisaId ("PNP0F13"))
                        Method (_STA, 0, NotSerialized)
                        {
                            Store (Zero, Local1)
                            Store (STA (0x07), Local1)
                            Return (Local1)
                        }

                        Name (_CRS, ResourceTemplate ()
                        {
                            IRQNoFlags ()
                                {12}
                        })
                        Method (_PRW, 0, NotSerialized)
                        {
                            Return (GPRW (0x03, 0x04))
                        }

                        Method (_PSW, 1, NotSerialized)
                        {
                            If (Arg0)
                            {
                                Store (One, MSWF)
                            }
                            Else
                            {
                                Store (Zero, MSWF)
                            }
                        }
                    }

                    Method (KWEN, 0, NotSerialized)
                    {
                        WRMB (0x81, Zero)
                        WRMB (0x82, One)
                        WRMB (0x80, Zero)
                        WRMB (0xA0, 0x95)
                    }

                    Method (KWDS, 0, NotSerialized)
                    {
                        WRMB (0x81, Zero)
                        WRMB (0x82, Zero)
                        WRMB (0x80, Zero)
                        WRMB (0xA0, 0x95)
                    }

                    Method (MWEN, 0, NotSerialized)
                    {
                        WRMB (0x81, One)
                        WRMB (0x82, One)
                        WRMB (0x80, Zero)
                        WRMB (0xA0, 0x95)
                    }

                    Method (MWDS, 0, NotSerialized)
                    {
                        WRMB (0x81, One)
                        WRMB (0x82, Zero)
                        WRMB (0x80, Zero)
                        WRMB (0xA0, 0x95)
                    }

                    Device (ECIR)
                    {
                        Name (_HID, EisaId ("AMDC001"))
                        Method (_STA, 0, NotSerialized)
                        {
                            Store (Zero, Local1)
                            If (LEqual (OSTY, 0x06))
                            {
                                Store (STA (0x05), Local1)
                            }

                            Return (Local1)
                        }

                        Method (_CRS, 0, NotSerialized)
                        {
                            Name (RSRC, ResourceTemplate ()
                            {
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x08,               // Alignment
                                    0x08,               // Length
                                    _Y02)
                                IRQNoFlags (_Y03)
                                    {}
                            })
                            CreateByteField (RSRC, \_SB.PCI0.SBRG.ECIR._CRS._Y02._MIN, IO1)
                            CreateByteField (RSRC, 0x03, IO2)
                            CreateByteField (RSRC, \_SB.PCI0.SBRG.ECIR._CRS._Y02._MAX, IO3)
                            CreateByteField (RSRC, 0x05, IO4)
                            CreateWordField (RSRC, \_SB.PCI0.SBRG.ECIR._CRS._Y03._INT, IRQV)
                            Acquire (ECMU, 0x1388)
                            CFG (0x05)
                            If (ACT)
                            {
                                Store (IOBL, IO1)
                                Store (IOBH, IO2)
                                Store (IOBL, IO3)
                                Store (IOBH, IO4)
                                Store (One, Local0)
                                ShiftLeft (Local0, INT, IRQV)
                            }

                            XCFG ()
                            Release (ECMU)
                            Return (RSRC)
                        }

                        Name (_PRS, ResourceTemplate ()
                        {
                            StartDependentFn (0x00, 0x00)
                            {
                                IO (Decode16,
                                    0x0550,             // Range Minimum
                                    0x0550,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQ (Edge, ActiveHigh, Shared, )
                                    {5}
                            }
                            StartDependentFnNoPri ()
                            {
                                IO (Decode16,
                                    0x0650,             // Range Minimum
                                    0x0650,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQ (Edge, ActiveHigh, Shared, )
                                    {5}
                            }
                            StartDependentFnNoPri ()
                            {
                                IO (Decode16,
                                    0x0550,             // Range Minimum
                                    0x0550,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQ (Edge, ActiveHigh, Shared, )
                                    {3}
                            }
                            StartDependentFnNoPri ()
                            {
                                IO (Decode16,
                                    0x0650,             // Range Minimum
                                    0x0650,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQ (Edge, ActiveHigh, Shared, )
                                    {3}
                            }
                            EndDependentFn ()
                        })
                        Method (_SRS, 1, NotSerialized)
                        {
                            CreateByteField (Arg0, 0x02, IO1)
                            CreateByteField (Arg0, 0x03, IO2)
                            CreateWordField (Arg0, 0x09, IRQV)
                            Acquire (ECMU, 0x1388)
                            CFG (0x05)
                            Store (IO1, IOBL)
                            Store (IO2, IOBH)
                            FindSetRightBit (IRQV, Local0)
                            Subtract (Local0, One, INT)
                            Store (One, ACT)
                            XCFG ()
                            Release (ECMU)
                        }

                        Method (_PRW, 0, NotSerialized)
                        {
                            Return (GPRW (0x17, 0x04))
                        }

                        Method (_PSW, 1, NotSerialized)
                        {
                            If (Arg0)
                            {
                                Store (One, IRWF)
                            }
                            Else
                            {
                                Store (Zero, IRWF)
                            }
                        }

                        Method (IRCF, 2, NotSerialized)
                        {
                            Name (CONN, Zero)
                            If (LEqual (Arg0, One))
                            {
                                Or (RVID, CONN, CONN)
                                Or (0x00013200, CONN, CONN)
                                Return (CONN)
                            }

                            If (LEqual (Arg0, 0x02))
                            {
                                ShiftLeft (GP64, One, CONN)
                                Or (GP51, CONN, CONN)
                                Return (CONN)
                            }

                            If (LEqual (Arg0, 0x03))
                            {
                                If (LEqual (Arg1, Zero))
                                {
                                    Store (One, G31O)
                                }
                                Else
                                {
                                    Store (Zero, G31O)
                                    Sleep (0x64)
                                    Store (One, G31O)
                                }
                            }

                            If (LEqual (Arg0, 0x04))
                            {
                                If (LEqual (Arg1, Zero))
                                {
                                    Store (Zero, ACIR)
                                }
                                Else
                                {
                                    Store (One, ACIR)
                                }
                            }

                            If (LOr (LEqual (Arg0, Zero), LGreater (Arg0, 0x05)))
                            {
                                Store (Ones, CONN)
                            }

                            Return (CONN)
                        }
                    }

                    Method (PPTS, 1, NotSerialized)
                    {
                        If (^PSKE._STA ())
                        {
                            If (KBWF)
                            {
                                KWEN ()
                            }
                            Else
                            {
                                KWDS ()
                            }
                        }

                        If (^PSMS._STA ())
                        {
                            If (MSWF)
                            {
                                MWEN ()
                            }
                            Else
                            {
                                MWDS ()
                            }
                        }
                    }

                    Method (WWAK, 1, NotSerialized)
                    {
                        If (^PSKE._STA ())
                        {
                            KWDS ()
                        }

                        If (^PSMS._STA ())
                        {
                            MWDS ()
                        }
                    }
                }

                Method (EPTS, 1, NotSerialized)
                {
                    If (ECEN)
                    {
                        PPTS (Arg0)
                    }
                }

                Method (EWAK, 1, NotSerialized)
                {
                    If (ECEN)
                    {
                        WWAK (Arg0)
                    }
                }

                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (DMAD)
                {
                    Name (_HID, EisaId ("PNP0200"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        DMA (Compatibility, BusMaster, Transfer8, )
                            {4}
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0087,             // Range Minimum
                            0x0087,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0089,             // Range Minimum
                            0x0089,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x008F,             // Range Minimum
                            0x008F,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x00,               // Alignment
                            0x20,               // Length
                            )
                    })
                }

                Device (TMR)
                {
                    Name (_HID, EisaId ("PNP0100"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x00,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (RTC0)
                {
                    Name (_HID, EisaId ("PNP0B00"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (COPR)
                {
                    Name (_HID, EisaId ("PNP0C04"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (LPTE)
                {
                    Method (_HID, 0, NotSerialized)
                    {
                        If (LPTM (0x02))
                        {
                            Return (0x0104D041)
                        }
                        Else
                        {
                            Return (0x0004D041)
                        }
                    }

                    Method (_STA, 0, NotSerialized)
                    {
                        Return (DSTA (0x02))
                    }

                    Method (_DIS, 0, NotSerialized)
                    {
                        DCNT (0x02, Zero)
                    }

                    Method (_CRS, 0, NotSerialized)
                    {
                        DCRS (0x02, One)
                        If (LPTM (0x02))
                        {
                            Store (IRQM, IRQE)
                            Store (DMAM, DMAE)
                            Store (IO11, IO21)
                            Store (IO12, IO22)
                            Store (LEN1, LEN2)
                            Add (IO21, 0x0400, IO31)
                            Store (IO31, IO32)
                            Store (LEN2, LEN3)
                            Return (CRS2)
                        }
                        Else
                        {
                            Return (CRS1)
                        }
                    }

                    Method (_SRS, 1, NotSerialized)
                    {
                        DSRS (Arg0, 0x02)
                    }

                    Method (_PRS, 0, NotSerialized)
                    {
                        If (LPTM (0x02))
                        {
                            Return (EPPR)
                        }
                        Else
                        {
                            Return (LPPR)
                        }
                    }

                    Name (LPPR, ResourceTemplate ()
                    {
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0378,             // Range Minimum
                                0x0378,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0278,             // Range Minimum
                                0x0278,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03BC,             // Range Minimum
                                0x03BC,             // Range Maximum
                                0x01,               // Alignment
                                0x04,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        EndDependentFn ()
                    })
                    Name (EPPR, ResourceTemplate ()
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x0378,             // Range Minimum
                                0x0378,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IO (Decode16,
                                0x0778,             // Range Minimum
                                0x0778,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0378,             // Range Minimum
                                0x0378,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IO (Decode16,
                                0x0778,             // Range Minimum
                                0x0778,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,2,3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0278,             // Range Minimum
                                0x0278,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IO (Decode16,
                                0x0678,             // Range Minimum
                                0x0678,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,2,3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03BC,             // Range Minimum
                                0x03BC,             // Range Maximum
                                0x01,               // Alignment
                                0x04,               // Length
                                )
                            IO (Decode16,
                                0x07BC,             // Range Minimum
                                0x07BC,             // Range Maximum
                                0x01,               // Alignment
                                0x04,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,2,3}
                        }
                        EndDependentFn ()
                    })
                }

                Scope (\)
                {
                    OperationRegion (RAMW, SystemMemory, 0xCFEE0000, 0x00010000)
                    Field (RAMW, ByteAcc, NoLock, Preserve)
                    {
                        PAR0,   32, 
                        PAR1,   32, 
                        PAR2,   32, 
                        PINX,   32, 
                        SMBU,   32
                    }

                    OperationRegion (IOB2, SystemIO, 0xB0, 0x02)
                    Field (IOB2, ByteAcc, NoLock, Preserve)
                    {
                        SMIC,   8, 
                        SMIS,   8
                    }

                    Method (ISMI, 1, Serialized)
                    {
                        Store (Arg0, SMIC)
                        Sleep (One)
                    }

                    Method (GNVS, 1, Serialized)
                    {
                        Store (0x80000000, PINX)
                        Store (Arg0, PAR0)
                        ISMI (0x70)
                        Return (PAR1)
                    }

                    Method (SNVS, 2, Serialized)
                    {
                        Store (0x80000001, PINX)
                        Store (Arg0, PAR0)
                        Store (Arg1, PAR1)
                        ISMI (0x70)
                    }

                    Name (ARBF, Buffer (0x10) {})
                    CreateDWordField (ARBF, Zero, REAX)
                    CreateDWordField (ARBF, 0x04, REBX)
                    CreateDWordField (ARBF, 0x08, RECX)
                    CreateDWordField (ARBF, 0x0C, REDX)
                    Method (SMSR, 1, Serialized)
                    {
                        CreateDWordField (Arg0, Zero, AEAX)
                        CreateDWordField (Arg0, 0x04, AEBX)
                        CreateDWordField (Arg0, 0x08, AECX)
                        CreateDWordField (Arg0, 0x0C, AEDX)
                        Store (0x80000003, PINX)
                        Store (AECX, PAR0)
                        Store (AEAX, PAR1)
                        Store (AEDX, PAR2)
                        ISMI (0x70)
                    }

                    Method (GMSR, 1, Serialized)
                    {
                        Store (0x80000002, PINX)
                        Store (Arg0, PAR0)
                        ISMI (0x70)
                        Store (Arg0, RECX)
                        Store (PAR1, REAX)
                        Store (PAR2, REDX)
                        Return (ARBF)
                    }

                    Method (PRID, 1, Serialized)
                    {
                        Store (0x80000004, PINX)
                        Store (Arg0, PAR0)
                        ISMI (0x70)
                        Store (PAR1, REAX)
                        Store (PAR2, REDX)
                        Return (ARBF)
                    }

                    Method (SAGP, 2, Serialized)
                    {
                        Store (0x80000005, PINX)
                        Store (Arg0, PAR0)
                        Store (Arg1, PAR1)
                        ISMI (0x70)
                    }

                    Method (GAGP, 1, Serialized)
                    {
                        Store (0x80000006, PINX)
                        Store (Arg0, PAR0)
                        ISMI (0x70)
                        Return (PAR1)
                    }

                    Method (GTBF, 2, Serialized)
                    {
                        Store (0x80000007, PINX)
                        Store (Arg0, PAR0)
                        Store (Arg1, PAR1)
                        ISMI (0x70)
                        Return (PAR1)
                    }
                }

                Scope (\_SB.PCI0.SBRG)
                {
                    Device (ASOC)
                    {
                        Name (_HID, "ATK0110")
                        Name (_UID, 0x01010110)
                        Method (_STA, 0, NotSerialized)
                        {
                            Return (0x0F)
                        }

                        Method (_INI, 0, NotSerialized)
                        {
                            G3UP ()
                            CUPI ()
                            UMVT ()
                        }

                        Method (CUPI, 0, NotSerialized)
                        {
                            Store (GNVS (0x37AB), Local0)
                            Store (Local0, Index (G3DS, 0x06))
                            Store (GNVS (0xA2B8), Local0)
                            Store (Local0, Index (G3C0, 0x06))
                        }

                        Method (UMVT, 0, NotSerialized)
                        {
                        }

                        Name (MBIF, Package (0x08)
                        {
                            0x03, 
                            "M5A78L-M-LX", 
                            0x03010103, 
                            0x02000100, 
                            0xE0010001, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Name (ASBF, Buffer (0x0100) {})
                        CreateDWordField (ASBF, Zero, ASB0)
                        CreateDWordField (ASBF, 0x04, ASB1)
                        Method (GGRP, 1, Serialized)
                        {
                            Name (TTT0, Zero)
                            Store (Arg0, TTT0)
                            If (LEqual (TTT0, Zero))
                            {
                                Return (GRP0)
                            }
                            Else
                            {
                                If (LEqual (TTT0, 0x03))
                                {
                                    Return (GRP3)
                                }
                                Else
                                {
                                    If (LEqual (TTT0, 0x04))
                                    {
                                        Return (GRP4)
                                    }
                                    Else
                                    {
                                        If (LEqual (TTT0, 0x05))
                                        {
                                            Return (GRP5)
                                        }
                                        Else
                                        {
                                            If (LEqual (TTT0, 0x06))
                                            {
                                                Return (GRP6)
                                            }
                                            Else
                                            {
                                                If (LEqual (TTT0, 0x08))
                                                {
                                                    Return (GRP8)
                                                }
                                                Else
                                                {
                                                    If (LEqual (TTT0, 0x09))
                                                    {
                                                        Return (GRP9)
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (TTT0, 0x0B))
                                                        {
                                                            Return (GRPB)
                                                        }
                                                        Else
                                                        {
                                                            If (LEqual (TTT0, 0x0E))
                                                            {
                                                                Return (GRPE)
                                                            }
                                                            Else
                                                            {
                                                                Return (Zero)
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        Method (GITM, 1, Serialized)
                        {
                            CreateDWordField (Arg0, Zero, PRM0)
                            CreateByteField (Arg0, 0x03, GPID)
                            Store (One, ASB0)
                            Name (TTT0, Zero)
                            Store (GPID, TTT0)
                            If (LEqual (TTT0, Zero))
                            {
                                GIT0 (PRM0)
                            }
                            Else
                            {
                                If (LEqual (TTT0, 0x03))
                                {
                                    GIT3 (PRM0)
                                }
                                Else
                                {
                                    If (LEqual (TTT0, 0x04))
                                    {
                                        GIT4 (PRM0)
                                    }
                                    Else
                                    {
                                        If (LEqual (TTT0, 0x05))
                                        {
                                            CreateDWordField (Arg0, 0x04, PRM1)
                                            GIT5 (PRM0, PRM1)
                                        }
                                        Else
                                        {
                                            If (LEqual (TTT0, 0x06))
                                            {
                                                GIT6 (PRM0)
                                            }
                                            Else
                                            {
                                                If (LEqual (TTT0, 0x08))
                                                {
                                                    GIT8 (PRM0)
                                                }
                                                Else
                                                {
                                                    If (LEqual (TTT0, 0x09))
                                                    {
                                                        GIT9 (PRM0)
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (TTT0, 0x0B))
                                                        {
                                                            GITB (PRM0)
                                                        }
                                                        Else
                                                        {
                                                            If (LEqual (TTT0, 0x0E))
                                                            {
                                                                GITE (PRM0)
                                                            }
                                                            Else
                                                            {
                                                                Store (Zero, ASB0)
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            Return (ASBF)
                        }

                        Method (SITM, 1, Serialized)
                        {
                            CreateDWordField (Arg0, Zero, PRM0)
                            CreateDWordField (Arg0, 0x04, PRM1)
                            CreateDWordField (Arg0, 0x08, PRM2)
                            CreateByteField (Arg0, 0x03, GPID)
                            Store (One, ASB0)
                            Name (TTT0, Zero)
                            Store (GPID, TTT0)
                            If (LEqual (TTT0, Zero))
                            {
                                SIT0 (PRM0, PRM1, PRM2)
                            }
                            Else
                            {
                                If (LEqual (TTT0, 0x03))
                                {
                                    SIT3 (PRM0, PRM1, PRM2)
                                }
                                Else
                                {
                                    If (LEqual (TTT0, 0x04))
                                    {
                                        SIT4 (PRM0, PRM1, PRM2)
                                    }
                                    Else
                                    {
                                        If (LEqual (TTT0, 0x05))
                                        {
                                            SIT5 (PRM0, PRM1, PRM2)
                                        }
                                        Else
                                        {
                                            If (LEqual (TTT0, 0x06))
                                            {
                                                SIT6 (PRM0, PRM1, PRM2)
                                            }
                                            Else
                                            {
                                                If (LEqual (TTT0, 0x08))
                                                {
                                                    SIT8 (PRM0, PRM1, PRM2)
                                                }
                                                Else
                                                {
                                                    If (LEqual (TTT0, 0x09))
                                                    {
                                                        SIT9 (PRM0, PRM1, PRM2)
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (TTT0, 0x0B))
                                                        {
                                                            SITB (PRM0, PRM1, PRM2)
                                                        }
                                                        Else
                                                        {
                                                            If (LEqual (TTT0, 0x0E))
                                                            {
                                                                SITE (PRM0, PRM1, PRM2)
                                                            }
                                                            Else
                                                            {
                                                                Store (Zero, ASB0)
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            Return (ASBF)
                        }

                        Method (OP2V, 2, NotSerialized)
                        {
                            Store (DerefOf (Index (Arg1, 0x04)), Local0)
                            Store (DerefOf (Index (Arg1, 0x05)), Local1)
                            Multiply (Arg0, Local1, Local1)
                            Add (Local0, Local1, Local0)
                            Return (Local0)
                        }

                        Method (V2OP, 2, NotSerialized)
                        {
                            Store (DerefOf (Index (Arg1, 0x04)), Local0)
                            Store (DerefOf (Index (Arg1, 0x05)), Local1)
                            Subtract (Arg0, Local0, Local0)
                            Divide (Local0, Local1, Local1, Local0)
                            Return (Local0)
                        }
                    }
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103"))
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y04)
                    })
                    Method (_STA, 0, NotSerialized)
                    {
                        Return (0x0F)
                    }

                    Method (_CRS, 0, NotSerialized)
                    {
                        CreateDWordField (CRS, \_SB.PCI0.SBRG.HPET._Y04._BAS, HPT)
                        Store (0xFED00000, HPT)
                        Return (CRS)
                    }
                }

                Device (^PCIE)
                {
                    Name (_HID, EisaId ("PNP0C02"))
                    Name (_UID, 0x11)
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xE0000000,         // Address Base
                            0x10000000,         // Address Length
                            _Y05)
                    })
                    Method (_CRS, 0, NotSerialized)
                    {
                        CreateDWordField (CRS, \_SB.PCI0.PCIE._Y05._BAS, BAS1)
                        CreateDWordField (CRS, \_SB.PCI0.PCIE._Y05._LEN, LEN1)
                        Store (PCIB, BAS1)
                        Store (PCIL, LEN1)
                        Return (CRS)
                    }
                }

                Scope (\_GPE)
                {
                    Method (_L09, 0, NotSerialized)
                    {
                        Notify (\_SB.PCI0.SBRG.ASOC, One)
                        Sleep (0x03E8)
                    }
                }

                Scope (ASOC)
                {
                    Name (VESL, Zero)
                    Method (SPLV, 1, Serialized)
                    {
                        And (Arg0, 0xFFFF, VESL)
                        Store (VESL, PAR0)
                        ISMI (0x88)
                        Store (And (PAR0, 0xFFFF), Local0)
                        Return (Local0)
                    }

                    Method (GPLV, 0, Serialized)
                    {
                        Return (VESL)
                    }
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("PNP0303"))
                    Name (_CID, EisaId ("PNP030B"))
                    Method (_STA, 0, NotSerialized)
                    {
                        ShiftLeft (One, 0x0A, Local0)
                        If (And (IOST, Local0))
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                }

                Method (PS2K._PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x03, 0x04))
                }

                Device (PS2M)
                {
                    Name (_HID, EisaId ("PNP0F03"))
                    Name (_CID, EisaId ("PNP0F13"))
                    Method (_STA, 0, NotSerialized)
                    {
                        ShiftLeft (One, 0x0C, Local0)
                        If (And (IOST, Local0))
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    Name (M2R0, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {12}
                    })
                    Name (M2R1, ResourceTemplate ()
                    {
                        FixedIO (
                            0x0060,             // Address
                            0x01,               // Length
                            )
                        FixedIO (
                            0x0064,             // Address
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {12}
                    })
                    Method (_CRS, 0, NotSerialized)
                    {
                        ShiftLeft (One, 0x0A, Local0)
                        If (And (IOST, Local0))
                        {
                            Return (M2R0)
                        }
                        Else
                        {
                            Return (M2R1)
                        }
                    }
                }

                Method (PS2M._PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x03, 0x04))
                }

                Device (UAR1)
                {
                    Name (_UID, One)
                    Method (_HID, 0, NotSerialized)
                    {
                        Return (UHID (Zero))
                    }

                    Method (_STA, 0, NotSerialized)
                    {
                        Return (DSTA (Zero))
                    }

                    Method (_DIS, 0, NotSerialized)
                    {
                        DCNT (Zero, Zero)
                    }

                    Method (_CRS, 0, NotSerialized)
                    {
                        Return (DCRS (Zero, One))
                    }

                    Method (_SRS, 1, NotSerialized)
                    {
                        DSRS (Arg0, Zero)
                    }

                    Method (_PRS, 0, NotSerialized)
                    {
                        Return (CMPR)
                    }

                    Name (CMPR, ResourceTemplate ()
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,2,3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,2,3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,2,3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,2,3}
                        }
                        EndDependentFn ()
                    })
                }

                Method (UAR1._PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x10, 0x04))
                }

                Device (OMSC)
                {
                    Name (_HID, EisaId ("PNP0C02"))
                    Name (_UID, Zero)
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y06)
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y07)
                    })
                    Name (CRS1, ResourceTemplate ()
                    {
                        FixedIO (
                            0x0060,             // Address
                            0x01,               // Length
                            )
                        FixedIO (
                            0x0064,             // Address
                            0x01,               // Length
                            )
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y08)
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y09)
                    })
                    Method (_CRS, 0, NotSerialized)
                    {
                        If (APIC)
                        {
                            CreateDWordField (CRS, \_SB.PCI0.SBRG.OMSC._Y06._LEN, ML01)
                            CreateDWordField (CRS, \_SB.PCI0.SBRG.OMSC._Y06._BAS, MB01)
                            CreateDWordField (CRS, \_SB.PCI0.SBRG.OMSC._Y07._LEN, ML02)
                            CreateDWordField (CRS, \_SB.PCI0.SBRG.OMSC._Y07._BAS, MB02)
                            Store (0xFEC00000, MB01)
                            Store (0x1000, ML01)
                            Store (0xFEE00000, MB02)
                            Store (0x1000, ML02)
                            CreateDWordField (CRS1, \_SB.PCI0.SBRG.OMSC._Y08._LEN, ML03)
                            CreateDWordField (CRS1, \_SB.PCI0.SBRG.OMSC._Y08._BAS, MB03)
                            CreateDWordField (CRS1, \_SB.PCI0.SBRG.OMSC._Y09._LEN, ML04)
                            CreateDWordField (CRS1, \_SB.PCI0.SBRG.OMSC._Y09._BAS, MB04)
                            Store (0xFEC00000, MB03)
                            Store (0x1000, ML03)
                            Store (0xFEE00000, MB04)
                            Store (0x1000, ML04)
                        }

                        ShiftLeft (0x05, 0x0A, Local0)
                        If (And (IOST, Local0))
                        {
                            Return (CRS)
                        }
                        Else
                        {
                            Return (CRS1)
                        }
                    }
                }

                Device (^^RMEM)
                {
                    Name (_HID, EisaId ("PNP0C01"))
                    Name (_UID, One)
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x000A0000,         // Address Length
                            )
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y0A)
                        Memory32Fixed (ReadOnly,
                            0x000E0000,         // Address Base
                            0x00020000,         // Address Length
                            _Y0B)
                        Memory32Fixed (ReadWrite,
                            0x00100000,         // Address Base
                            0x00000000,         // Address Length
                            _Y0C)
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y0D)
                    })
                    Method (_CRS, 0, NotSerialized)
                    {
                        CreateDWordField (CRS, \_SB.RMEM._Y0A._BAS, BAS1)
                        CreateDWordField (CRS, \_SB.RMEM._Y0A._LEN, LEN1)
                        CreateDWordField (CRS, \_SB.RMEM._Y0B._BAS, BAS2)
                        CreateDWordField (CRS, \_SB.RMEM._Y0B._LEN, LEN2)
                        CreateDWordField (CRS, \_SB.RMEM._Y0C._LEN, LEN3)
                        CreateDWordField (CRS, \_SB.RMEM._Y0D._BAS, BAS4)
                        CreateDWordField (CRS, \_SB.RMEM._Y0D._LEN, LEN4)
                        If (OSFL ()) {}
                        Else
                        {
                            If (MG1B)
                            {
                                If (LGreater (MG1B, 0x000C0000))
                                {
                                    Store (0x000C0000, BAS1)
                                    Subtract (MG1B, BAS1, LEN1)
                                }
                            }
                            Else
                            {
                                Store (0x000C0000, BAS1)
                                Store (0x00020000, LEN1)
                            }

                            If (Add (MG1B, MG1L, Local0))
                            {
                                Store (Local0, BAS2)
                                Subtract (0x00100000, BAS2, LEN2)
                            }
                        }

                        Subtract (MG2B, 0x00100000, LEN3)
                        Store (MH1B, BAS4)
                        Subtract (Zero, BAS4, LEN4)
                        Return (CRS)
                    }
                }

                Device (RMSC)
                {
                    Name (_HID, EisaId ("PNP0C02"))
                    Name (_UID, 0x10)
                    Name (CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x00,               // Alignment
                            0x0B,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x00,               // Alignment
                            0x0E,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0084,             // Range Minimum
                            0x0084,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0088,             // Range Minimum
                            0x0088,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x008C,             // Range Minimum
                            0x008C,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00A2,             // Range Minimum
                            0x00A2,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00B1,             // Range Minimum
                            0x00B1,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00E0,             // Range Minimum
                            0x00E0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x040B,             // Range Minimum
                            0x040B,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x04D6,             // Range Minimum
                            0x04D6,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0C00,             // Range Minimum
                            0x0C00,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0C14,             // Range Minimum
                            0x0C14,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0C50,             // Range Minimum
                            0x0C50,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0C52,             // Range Minimum
                            0x0C52,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0C6C,             // Range Minimum
                            0x0C6C,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0C6F,             // Range Minimum
                            0x0C6F,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0CD0,             // Range Minimum
                            0x0CD0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0CD2,             // Range Minimum
                            0x0CD2,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0CD4,             // Range Minimum
                            0x0CD4,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0CD6,             // Range Minimum
                            0x0CD6,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0CD8,             // Range Minimum
                            0x0CD8,             // Range Maximum
                            0x00,               // Alignment
                            0x08,               // Length
                            )
                        IO (Decode16,
                            0x0B00,             // Range Minimum
                            0x0B00,             // Range Maximum
                            0x00,               // Alignment
                            0x40,               // Length
                            )
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y0E)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y11)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y10)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y0F)
                        IO (Decode16,
                            0x0900,             // Range Minimum
                            0x0900,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0910,             // Range Minimum
                            0x0910,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0xFE00,             // Range Minimum
                            0xFE00,             // Range Maximum
                            0x00,               // Alignment
                            0xFF,               // Length
                            )
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y12)
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y13)
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y14)
                        Memory32Fixed (ReadOnly,
                            0xFFB80000,         // Address Base
                            0x00080000,         // Address Length
                            )
                        Memory32Fixed (ReadOnly,
                            0xFEC10000,         // Address Base
                            0x00000020,         // Address Length
                            )
                        Memory32Fixed (ReadOnly,
                            0xFED40000,         // Address Base
                            0x00005000,         // Address Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)
                    {
                        CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y0E._MIN, GP00)
                        CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y0E._MAX, GP01)
                        CreateByteField (CRS, \_SB.PCI0.SBRG.RMSC._Y0E._LEN, GP0L)
                        Store (PMBS, GP00)
                        Store (PMBS, GP01)
                        Store (PMLN, GP0L)
                        If (SMBB)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y0F._MIN, GP10)
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y0F._MAX, GP11)
                            CreateByteField (CRS, \_SB.PCI0.SBRG.RMSC._Y0F._LEN, GP1L)
                            Store (SMBB, GP10)
                            Store (SMBB, GP11)
                            Store (SMBL, GP1L)
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y10._MIN, GPB0)
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y10._MAX, GPB1)
                            CreateByteField (CRS, \_SB.PCI0.SBRG.RMSC._Y10._LEN, GPBL)
                            Store (SMB0, GPB0)
                            Store (SMB0, GPB1)
                            Store (SMBM, GPBL)
                        }

                        If (GPBS)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y11._MIN, GP20)
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y11._MAX, GP21)
                            CreateByteField (CRS, \_SB.PCI0.SBRG.RMSC._Y11._LEN, GP2L)
                            Store (GPBS, GP20)
                            Store (GPBS, GP21)
                            Store (GPLN, GP2L)
                        }

                        ShiftLeft (One, 0x0A, Local0)
                        ShiftLeft (One, 0x0C, Local1)
                        Or (And (IOST, Local0), And (IOST, Local1), Local0)
                        CreateByteField (CRS, \_SB.PCI0.SBRG.RMSC._Y12._LEN, KBL0)
                        CreateByteField (CRS, \_SB.PCI0.SBRG.RMSC._Y13._LEN, KBL1)
                        If (LEqual (Local0, Zero))
                        {
                            Store (One, KBL0)
                            Store (One, KBL1)
                        }

                        If (\AOD.RAMS)
                        {
                            CreateDWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y14._BAS, RADB)
                            CreateDWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y14._LEN, RADL)
                            Store (\AOD.RAMB, RADB)
                            Store (\AOD.RAMS, RADL)
                        }

                        Return (CRS)
                    }
                }

                Device (SIOR)
                {
                    Name (_HID, EisaId ("PNP0C02"))
                    Method (_UID, 0, NotSerialized)
                    {
                        Return (SPIO)
                    }

                    Name (CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y15)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y16)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y17)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y18)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y19)
                    })
                    Method (_CRS, 0, NotSerialized)
                    {
                        If (LAnd (LNotEqual (SPIO, 0x03F0), LGreater (SPIO, 0xF0)))
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y15._MIN, GP10)
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y15._MAX, GP11)
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIOR._Y15._LEN, GPL1)
                            Store (SPIO, GP10)
                            Store (SPIO, GP11)
                            Store (0x02, GPL1)
                        }

                        If (IOPB)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y16._MIN, GP20)
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y16._MAX, GP21)
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIOR._Y16._LEN, GPL2)
                            Store (IOPB, GP20)
                            Store (IOPB, GP21)
                            Store (IOPL, GPL2)
                        }

                        If (IOEB)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y17._MIN, GP30)
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y17._MAX, GP31)
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIOR._Y17._LEN, GPL3)
                            Store (IOEB, GP30)
                            Store (IOEB, GP31)
                            Store (IOEL, GPL3)
                        }

                        If (IOGB)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y18._MIN, GP40)
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y18._MAX, GP41)
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIOR._Y18._LEN, GPL4)
                            Store (IOGB, GP40)
                            Store (IOGB, GP41)
                            Store (IOGL, GPL4)
                        }

                        If (IOSB)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y19._MIN, GP50)
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y19._MAX, GP51)
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIOR._Y19._LEN, GPL5)
                            Store (IOSB, GP50)
                            Store (IOSB, GP51)
                            Store (IOSL, GPL5)
                        }

                        Return (CRS)
                    }
                }

                Name (DCAT, Package (0x16)
                {
                    One, 
                    0x02, 
                    0x03, 
                    Zero, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0x05, 
                    0x04, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0x0A, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF
                })
                Name (IKEY, Package (0x02)
                {
                    Package (0x04)
                    {
                        0x87, 
                        One, 
                        0x55, 
                        0x55
                    }, 

                    Package (0x04)
                    {
                        0x87, 
                        One, 
                        0x55, 
                        0xAA
                    }
                })
                Name (KBFG, One)
                Name (MSFG, One)
                Name (UR1F, One)
                Method (ENFG, 1, NotSerialized)
                {
                    Store (Zero, Local1)
                    If (LEqual (SPIO, 0x2E))
                    {
                        Store (Zero, Local1)
                    }

                    If (LEqual (SPIO, 0x4E))
                    {
                        Store (One, Local1)
                    }

                    Store (Zero, Local0)
                    While (LNotEqual (Local0, 0x04))
                    {
                        Store (DerefOf (Index (DerefOf (Index (IKEY, Local1)), Local0)), 
                            INDX)
                        Increment (Local0)
                    }

                    Store (Arg0, LDN)
                }

                Method (EXFG, 0, NotSerialized)
                {
                    Store (0x02, INDX)
                    Store (0x02, DATA)
                }

                Method (LPTM, 1, NotSerialized)
                {
                    ENFG (CGLD (Arg0))
                    And (OPT0, 0x02, Local0)
                    EXFG ()
                    Return (Local0)
                }

                Method (UHID, 1, NotSerialized)
                {
                    ENFG (CGLD (Arg0))
                    And (OPT0, 0x70, Local0)
                    EXFG ()
                    If (Local0)
                    {
                        Return (0x1005D041)
                    }

                    Return (0x0105D041)
                }

                Method (ORF0, 2, NotSerialized)
                {
                    ENFG (Arg0)
                    Or (OPT0, Arg1, OPT0)
                    EXFG ()
                }

                Method (ORF1, 2, NotSerialized)
                {
                    ENFG (Arg0)
                    Or (OPT1, Arg1, OPT1)
                    EXFG ()
                }

                Method (ORF2, 2, NotSerialized)
                {
                    ENFG (Arg0)
                    Or (OPT2, Arg1, OPT2)
                    EXFG ()
                }

                Method (ANF0, 2, NotSerialized)
                {
                    ENFG (Arg0)
                    And (OPT0, Arg1, OPT0)
                    EXFG ()
                }

                Method (ANF2, 2, NotSerialized)
                {
                    ENFG (Arg0)
                    And (OPT2, Arg1, OPT2)
                    EXFG ()
                }

                Method (ANF4, 2, NotSerialized)
                {
                    ENFG (Arg0)
                    And (OPT4, Arg1, OPT4)
                    EXFG ()
                }

                Method (STF0, 2, NotSerialized)
                {
                    ENFG (Arg0)
                    Store (Arg1, OPT0)
                    EXFG ()
                }

                Method (STF1, 2, NotSerialized)
                {
                    ENFG (Arg0)
                    Store (Arg1, OPT1)
                    EXFG ()
                }

                Method (SIOS, 1, NotSerialized)
                {
                    Store ("SIOS", Debug)
                    If (LLess (Arg0, 0x05))
                    {
                        ENFG (0x04)
                        Store (One, ACTR)
                        EXFG ()
                        If (KBFG)
                        {
                            ORF1 (0x04, 0x08)
                            ORF0 (0x04, 0x08)
                        }
                        Else
                        {
                            ANF0 (0x04, 0xF7)
                        }

                        If (MSFG)
                        {
                            ORF1 (0x04, 0x10)
                            ORF0 (0x04, 0x10)
                        }
                        Else
                        {
                            ANF0 (0x04, 0xEF)
                        }

                        ORF1 (0x04, 0xFF)
                        ANF2 (0x04, 0xF0)
                        ORF2 (0x04, 0x06)
                        ENFG (0x07)
                        EXFG ()
                    }

                    ENFG (0x07)
                    Or (OP2C, 0x10, OP2C)
                    EXFG ()
                }

                Method (SIOW, 1, NotSerialized)
                {
                    Store (One, GO26)
                    Store ("SIOW", Debug)
                    ENFG (0x07)
                    And (OP2C, 0xEF, OP2C)
                    Or (OPC1, 0x40, OPC1)
                    ENFG (0x05)
                    Or (ACTR, One, ACTR)
                    ENFG (0x06)
                    Or (ACTR, One, ACTR)
                    ENFG (0x04)
                    STF0 (0x04, Zero)
                    STF1 (0x04, 0xFF)
                    ANF2 (0x04, 0x40)
                    EXFG ()
                }

                Method (SIOH, 0, NotSerialized)
                {
                    Store ("SIOH", Debug)
                }

                OperationRegion (IOID, SystemIO, SPIO, 0x02)
                Field (IOID, ByteAcc, NoLock, Preserve)
                {
                    INDX,   8, 
                    DATA,   8
                }

                IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                {
                            Offset (0x07), 
                    LDN,    8, 
                            Offset (0x29), 
                    OP29,   8, 
                            Offset (0x2C), 
                    OP2C,   8, 
                            Offset (0x30), 
                    ACTR,   8, 
                            Offset (0x60), 
                    IOAH,   8, 
                    IOAL,   8, 
                    IOH2,   8, 
                    IOL2,   8, 
                            Offset (0x70), 
                    INTR,   8, 
                            Offset (0x74), 
                    DMCH,   8, 
                            Offset (0xC0), 
                    OPC0,   8, 
                    OPC1,   8, 
                    OPC2,   8, 
                    OPC3,   8, 
                            Offset (0xF0), 
                    OPT0,   8, 
                    OPT1,   8, 
                    OPT2,   8, 
                    OPT3,   8, 
                    OPT4,   8, 
                            Offset (0xF8), 
                    OPF8,   8, 
                    OPF9,   8, 
                    OPFA,   8, 
                    OPFB,   8
                }

                Method (PS2K._PSW, 1, NotSerialized)
                {
                    If (Arg0)
                    {
                        Store (One, KBFG)
                    }
                    Else
                    {
                        Store (Zero, KBFG)
                    }
                }

                Method (PS2M._PSW, 1, NotSerialized)
                {
                    If (Arg0)
                    {
                        Store (One, MSFG)
                    }
                    Else
                    {
                        Store (Zero, MSFG)
                    }
                }

                Method (CGLD, 1, NotSerialized)
                {
                    Return (DerefOf (Index (DCAT, Arg0)))
                }

                Method (DSTA, 1, NotSerialized)
                {
                    ENFG (CGLD (Arg0))
                    Store (ACTR, Local0)
                    EXFG ()
                    If (LEqual (Local0, 0xFF))
                    {
                        Return (Zero)
                    }

                    And (Local0, One, Local0)
                    Or (IOST, ShiftLeft (Local0, Arg0), IOST)
                    If (Local0)
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        If (And (ShiftLeft (One, Arg0), IOST))
                        {
                            Return (0x0D)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Method (DCNT, 2, NotSerialized)
                {
                    ENFG (CGLD (Arg0))
                    ShiftLeft (IOAH, 0x08, Local1)
                    Or (IOAL, Local1, Local1)
                    If (LAnd (LLess (DMCH, 0x04), LNotEqual (And (DMCH, 0x03, 
                        Local1), Zero)))
                    {
                        RDMA (Arg0, Arg1, Increment (Local1))
                    }

                    Store (Arg1, ACTR)
                    RRIO (Arg0, Arg1, Local1, 0x08)
                    EXFG ()
                }

                Name (CRS1, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0x00,               // Length
                        _Y1C)
                    IRQNoFlags (_Y1A)
                        {}
                    DMA (Compatibility, NotBusMaster, Transfer8, _Y1B)
                        {}
                })
                CreateWordField (CRS1, \_SB.PCI0.SBRG._Y1A._INT, IRQM)
                CreateByteField (CRS1, \_SB.PCI0.SBRG._Y1B._DMA, DMAM)
                CreateWordField (CRS1, \_SB.PCI0.SBRG._Y1C._MIN, IO11)
                CreateWordField (CRS1, \_SB.PCI0.SBRG._Y1C._MAX, IO12)
                CreateByteField (CRS1, \_SB.PCI0.SBRG._Y1C._LEN, LEN1)
                Name (CRS2, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0x00,               // Length
                        _Y1F)
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0x00,               // Length
                        _Y20)
                    IRQNoFlags (_Y1D)
                        {6}
                    DMA (Compatibility, NotBusMaster, Transfer8, _Y1E)
                        {2}
                })
                CreateWordField (CRS2, \_SB.PCI0.SBRG._Y1D._INT, IRQE)
                CreateByteField (CRS2, \_SB.PCI0.SBRG._Y1E._DMA, DMAE)
                CreateWordField (CRS2, \_SB.PCI0.SBRG._Y1F._MIN, IO21)
                CreateWordField (CRS2, \_SB.PCI0.SBRG._Y1F._MAX, IO22)
                CreateByteField (CRS2, \_SB.PCI0.SBRG._Y1F._LEN, LEN2)
                CreateWordField (CRS2, \_SB.PCI0.SBRG._Y20._MIN, IO31)
                CreateWordField (CRS2, \_SB.PCI0.SBRG._Y20._MAX, IO32)
                CreateByteField (CRS2, \_SB.PCI0.SBRG._Y20._LEN, LEN3)
                Method (DCRS, 2, NotSerialized)
                {
                    ENFG (CGLD (Arg0))
                    ShiftLeft (IOAH, 0x08, IO11)
                    Or (IOAL, IO11, IO11)
                    Store (IO11, IO12)
                    Subtract (FindSetRightBit (IO11), One, Local0)
                    ShiftLeft (One, Local0, LEN1)
                    If (INTR)
                    {
                        ShiftLeft (One, INTR, IRQM)
                    }
                    Else
                    {
                        Store (Zero, IRQM)
                    }

                    If (LOr (LGreater (DMCH, 0x03), LEqual (Arg1, Zero)))
                    {
                        Store (Zero, DMAM)
                    }
                    Else
                    {
                        And (DMCH, 0x03, Local1)
                        ShiftLeft (One, Local1, DMAM)
                    }

                    EXFG ()
                    Return (CRS1)
                }

                Method (DSRS, 2, NotSerialized)
                {
                    CreateWordField (Arg0, 0x09, IRQM)
                    CreateByteField (Arg0, 0x0C, DMAM)
                    CreateWordField (Arg0, 0x02, IO11)
                    ENFG (CGLD (Arg1))
                    ShiftLeft (IOAH, 0x08, Local1)
                    Or (IOAL, Local1, Local1)
                    RRIO (Arg1, Zero, Local1, 0x08)
                    RRIO (Arg1, One, IO11, 0x08)
                    And (IO11, 0xFF, IOAL)
                    ShiftRight (IO11, 0x08, IOAH)
                    If (IRQM)
                    {
                        FindSetRightBit (IRQM, Local0)
                        Subtract (Local0, One, INTR)
                    }
                    Else
                    {
                        Store (Zero, INTR)
                    }

                    If (DMAM)
                    {
                        FindSetRightBit (DMAM, Local0)
                        Subtract (Local0, One, DMCH)
                    }
                    Else
                    {
                        Store (0x04, DMCH)
                    }

                    EXFG ()
                    DCNT (Arg1, One)
                }

                OperationRegion (GPIO, SystemIO, IOGB, 0x04)
                Field (GPIO, ByteAcc, NoLock, Preserve)
                {
                    GP10,   1, 
                    GP11,   1, 
                    GP12,   1, 
                    GP13,   1, 
                    GO14,   1, 
                    GO15,   1, 
                    GO16,   1, 
                    GO17,   1, 
                    GP20,   1, 
                    GP21,   1, 
                    GP22,   1, 
                    GP23,   1, 
                    GO24,   1, 
                    GO25,   1, 
                    GO26,   1, 
                    GO27,   1, 
                    GP30,   1, 
                    GP31,   1, 
                    GP32,   1, 
                    GP33,   1, 
                    GO34,   1, 
                    GO35,   1, 
                    GO36,   1, 
                    GO37,   1, 
                    GP40,   1, 
                    GP41,   1, 
                    GP42,   1, 
                    GP43,   1, 
                    GO44,   1, 
                    GO45,   1, 
                    GO46,   1, 
                    GO47,   1
                }
            }

            Device (P0PC)
            {
                Name (_ADR, 0x00140004)
                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x04, 0x04))
                }

                Method (_PRT, 0, NotSerialized)
                {
                    If (PICM)
                    {
                        Return (AR0C)
                    }

                    Return (PR0C)
                }
            }

            Device (UHC1)
            {
                Name (_ADR, 0x00120000)
                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x0B, 0x04))
                }
            }

            Device (UHC2)
            {
                Name (_ADR, 0x00120001)
                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x0B, 0x04))
                }
            }

            Device (UHC3)
            {
                Name (_ADR, 0x00120002)
                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x0B, 0x04))
                }
            }

            Device (USB4)
            {
                Name (_ADR, 0x00130000)
                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x0B, 0x04))
                }
            }

            Device (UHC5)
            {
                Name (_ADR, 0x00130001)
                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x0B, 0x04))
                }
            }

            Device (UHC6)
            {
                Name (_ADR, 0x00130002)
                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x0B, 0x04))
                }
            }

            Device (UHC7)
            {
                Name (_ADR, 0x00140005)
                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x0B, 0x04))
                }
            }

            Device (SATA)
            {
                Name (_ADR, 0x00110000)
                If (LEqual (STCL, 0x0101))
                {
                    Method (_INI, 0, NotSerialized)
                    {
                    }

                    OperationRegion (SACS, PCI_Config, Zero, 0x40)
                    Field (SACS, AnyAcc, NoLock, Preserve)
                    {
                                Offset (0x24), 
                        STB5,   32
                    }

                    Name (SPTM, Buffer (0x14)
                    {
                        /* 0000 */    0x78, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 
                        /* 0008 */    0x78, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 
                        /* 0010 */    0x1F, 0x00, 0x00, 0x00
                    })
                    Name (FZTS, Buffer (0x07)
                    {
                        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF5
                    })
                    Device (PRID)
                    {
                        Name (_ADR, Zero)
                        Method (_GTM, 0, NotSerialized)
                        {
                            Return (SPTM)
                        }

                        Method (_STM, 3, NotSerialized)
                        {
                        }

                        Name (PRIS, Zero)
                        Method (_PS0, 0, NotSerialized)
                        {
                            OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                            Field (BAR, AnyAcc, NoLock, Preserve)
                            {
                                        Offset (0x120), 
                                    ,   7, 
                                PMBY,   1, 
                                        Offset (0x128), 
                                PMS0,   4, 
                                        Offset (0x129), 
                                PMS1,   4, 
                                        Offset (0x220), 
                                    ,   7, 
                                PSBY,   1, 
                                        Offset (0x228), 
                                PSS0,   4, 
                                        Offset (0x229), 
                                PSS1,   4, 
                                        Offset (0x2A0), 
                                    ,   7
                            }

                            If (LOr (LEqual (OSTY, 0x0F), LEqual (OSTY, 0x0C)))
                            {
                                If (PMS1)
                                {
                                    Store (0x32, Local0)
                                    While (LAnd (LEqual (PMBY, One), Local0))
                                    {
                                        Sleep (0xFA)
                                        Decrement (Local0)
                                    }
                                }

                                If (PSS1)
                                {
                                    Store (0x32, Local0)
                                    While (LAnd (LEqual (PSBY, One), Local0))
                                    {
                                        Sleep (0xFA)
                                        Decrement (Local0)
                                    }
                                }
                            }

                            Store (Zero, PRIS)
                        }

                        Method (_PS3, 0, NotSerialized)
                        {
                            Store (0x03, PRIS)
                        }

                        Method (_PSC, 0, NotSerialized)
                        {
                            Return (PRIS)
                        }

                        Device (P_D0)
                        {
                            Name (_ADR, Zero)
                            Method (_GTF, 0, NotSerialized)
                            {
                                Return (FZTS)
                            }

                            Method (_STA, 0, NotSerialized)
                            {
                                OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                                Field (BAR, AnyAcc, NoLock, Preserve)
                                {
                                            Offset (0x128), 
                                    PMS0,   4, 
                                            Offset (0x129), 
                                    PMS1,   4
                                }

                                If (Not (LEqual (PMS1, Zero)))
                                {
                                    Return (0x0F)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }

                            Name (S12P, Zero)
                            Method (_PS0, 0, NotSerialized)
                            {
                                OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                                Field (BAR, AnyAcc, NoLock, Preserve)
                                {
                                            Offset (0x120), 
                                        ,   7, 
                                    PMBY,   1
                                }

                                Store (0x32, Local0)
                                While (LAnd (LEqual (PMBY, One), Local0))
                                {
                                    Sleep (0xFA)
                                    Decrement (Local0)
                                }

                                Store (Zero, S12P)
                            }

                            Method (_PS3, 0, NotSerialized)
                            {
                                Store (0x03, S12P)
                            }

                            Method (_PSC, 0, NotSerialized)
                            {
                                Return (S12P)
                            }
                        }

                        Device (P_D1)
                        {
                            Name (_ADR, One)
                            Method (_GTF, 0, NotSerialized)
                            {
                                Return (FZTS)
                            }

                            Method (_STA, 0, NotSerialized)
                            {
                                OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                                Field (BAR, AnyAcc, NoLock, Preserve)
                                {
                                            Offset (0x228), 
                                    PSS0,   4, 
                                            Offset (0x229), 
                                    PSS1,   4
                                }

                                If (Not (LEqual (PSS1, Zero)))
                                {
                                    Return (0x0F)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }

                            Name (S12P, Zero)
                            Method (_PS0, 0, NotSerialized)
                            {
                                OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                                Field (BAR, AnyAcc, NoLock, Preserve)
                                {
                                            Offset (0x220), 
                                        ,   7, 
                                    PSBY,   1
                                }

                                Store (0x32, Local0)
                                While (LAnd (LEqual (PSBY, One), Local0))
                                {
                                    Sleep (0xFA)
                                    Decrement (Local0)
                                }

                                Store (Zero, S12P)
                            }

                            Method (_PS3, 0, NotSerialized)
                            {
                                Store (0x03, S12P)
                            }

                            Method (_PSC, 0, NotSerialized)
                            {
                                Return (S12P)
                            }
                        }
                    }

                    Device (SECD)
                    {
                        Name (_ADR, One)
                        Method (_GTM, 0, NotSerialized)
                        {
                            Return (SPTM)
                        }

                        Method (_STM, 3, NotSerialized)
                        {
                        }

                        Name (SECS, Zero)
                        Method (_PS0, 0, NotSerialized)
                        {
                            OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                            Field (BAR, AnyAcc, NoLock, Preserve)
                            {
                                        Offset (0x1A0), 
                                    ,   7, 
                                SMBY,   1, 
                                        Offset (0x1A8), 
                                SMS0,   4, 
                                        Offset (0x1A9), 
                                SMS1,   4, 
                                        Offset (0x2A0), 
                                    ,   7, 
                                SSBY,   1, 
                                        Offset (0x2A8), 
                                SSS0,   4, 
                                        Offset (0x2A9), 
                                SSS1,   4, 
                                        Offset (0x2AC)
                            }

                            If (LOr (LEqual (OSTY, 0x0F), LEqual (OSTY, 0x0C)))
                            {
                                If (SMS1)
                                {
                                    Store (0x32, Local0)
                                    While (LAnd (LEqual (SMBY, One), Local0))
                                    {
                                        Sleep (0xFA)
                                        Decrement (Local0)
                                    }
                                }

                                If (SSS1)
                                {
                                    Store (0x32, Local0)
                                    While (LAnd (LEqual (SSBY, One), Local0))
                                    {
                                        Sleep (0xFA)
                                        Decrement (Local0)
                                    }
                                }
                            }

                            Store (Zero, SECS)
                        }

                        Method (_PS3, 0, NotSerialized)
                        {
                            Store (0x03, SECS)
                        }

                        Method (_PSC, 0, NotSerialized)
                        {
                            Return (SECS)
                        }

                        Device (S_D0)
                        {
                            Name (_ADR, Zero)
                            Method (_GTF, 0, NotSerialized)
                            {
                                Return (FZTS)
                            }

                            Method (_STA, 0, NotSerialized)
                            {
                                OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                                Field (BAR, AnyAcc, NoLock, Preserve)
                                {
                                            Offset (0x1A8), 
                                    SMS0,   4, 
                                            Offset (0x1A9), 
                                    SMS1,   4
                                }

                                If (Not (LEqual (SMS1, Zero)))
                                {
                                    Return (0x0F)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }

                            Name (S12P, Zero)
                            Method (_PS0, 0, NotSerialized)
                            {
                                OperationRegion (BAR, SystemMemory, STB5, 0x1000)
                                Field (BAR, AnyAcc, NoLock, Preserve)
                                {
                                            Offset (0x1A0), 
                                        ,   7, 
                                    SMBY,   1
                                }

                                Store (0x32, Local0)
                                While (LAnd (LEqual (SMBY, One), Local0))
                                {
                                    Sleep (0xFA)
                                    Decrement (Local0)
                                }

                                Store (Zero, S12P)
                            }

                            Method (_PS3, 0, NotSerialized)
                            {
                                Store (0x03, S12P)
                            }

                            Method (_PSC, 0, NotSerialized)
                            {
                                Return (S12P)
                            }
                        }

                        Device (S_D1)
                        {
                            Name (_ADR, One)
                            Method (_GTF, 0, NotSerialized)
                            {
                                Return (FZTS)
                            }

                            Method (_STA, 0, NotSerialized)
                            {
                                OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                                Field (BAR, AnyAcc, NoLock, Preserve)
                                {
                                            Offset (0x2A8), 
                                    SSS0,   4, 
                                            Offset (0x2A9), 
                                    SSS1,   4
                                }

                                If (Not (LEqual (SSS1, Zero)))
                                {
                                    Return (0x0F)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }

                            Name (S12P, Zero)
                            Method (_PS0, 0, NotSerialized)
                            {
                                OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                                Field (BAR, AnyAcc, NoLock, Preserve)
                                {
                                            Offset (0x2A0), 
                                        ,   7, 
                                    SSBY,   1
                                }

                                Store (0x32, Local0)
                                While (LAnd (LEqual (SSBY, One), Local0))
                                {
                                    Sleep (0xFA)
                                    Decrement (Local0)
                                }

                                Store (Zero, S12P)
                            }

                            Method (_PS3, 0, NotSerialized)
                            {
                                Store (0x03, S12P)
                            }

                            Method (_PSC, 0, NotSerialized)
                            {
                                Return (S12P)
                            }
                        }
                    }
                }
            }

            Device (SMBS)
            {
                Name (_ADR, 0x00140000)
                OperationRegion (SMBS, PCI_Config, Zero, 0x0100)
                Field (SMBS, AnyAcc, NoLock, Preserve)
                {
                            Offset (0x08), 
                    REV,    8
                }

                OperationRegion (WIDE, PCI_Config, 0xAD, One)
                Field (WIDE, AnyAcc, NoLock, Preserve)
                {
                    DUM1,   4, 
                    SOPT,   1
                }
            }
        }

        Scope (\_GPE)
        {
            Method (_L18, 0, NotSerialized)
            {
                Notify (\_SB.PCI0.PCE2, 0x02)
                Notify (\_SB.PCI0.PCE3, 0x02)
                Notify (\_SB.PCI0.PCE4, 0x02)
                Notify (\_SB.PCI0.PCE4.RLAN, 0x02)
                Notify (\_SB.PCI0.PCE5, 0x02)
                Notify (\_SB.PCI0.PCE6, 0x02)
                Notify (\_SB.PCI0.PCE7, 0x02)
                Notify (\_SB.PCI0.PCE9, 0x02)
                Notify (\_SB.PCI0.PCEA, 0x02)
                Notify (\_SB.PCI0.PCEB, 0x02)
                Notify (\_SB.PCI0.PCEC, 0x02)
                Notify (\_SB.PWRB, 0x02)
            }

            Method (_L1B, 0, NotSerialized)
            {
                Notify (\_SB.PCI0.SBAZ, 0x02)
                Notify (\_SB.PWRB, 0x02)
            }

            Method (_L03, 0, NotSerialized)
            {
                \_SB.PCI0.SBRG.SIOH ()
                Notify (\_SB.PWRB, 0x02)
            }

            Method (_L10, 0, NotSerialized)
            {
                \_SB.PCI0.SBRG.SIOH ()
                Notify (\_SB.PWRB, 0x02)
            }

            Method (_L04, 0, NotSerialized)
            {
                Notify (\_SB.PCI0.P0PC, 0x02)
                Notify (\_SB.PWRB, 0x02)
            }

            Method (_L0B, 0, NotSerialized)
            {
                Notify (\_SB.PCI0.UHC1, 0x02)
                Notify (\_SB.PCI0.UHC2, 0x02)
                Notify (\_SB.PCI0.UHC3, 0x02)
                Notify (\_SB.PCI0.USB4, 0x02)
                Notify (\_SB.PCI0.UHC5, 0x02)
                Notify (\_SB.PCI0.UHC6, 0x02)
                Notify (\_SB.PCI0.UHC7, 0x02)
                Notify (\_SB.PWRB, 0x02)
            }
        }

        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C"))
            Name (_UID, 0xAA)
            Name (_STA, 0x0B)
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (G0T0, Package (0x07)
        {
            0x00060000, 
            "AP version", 
            0x40000000, 
            Zero, 
            Zero, 
            One, 
            0x02
        })
        Name (G0T1, Package (0x07)
        {
            0x00060001, 
            "Feature Flag", 
            One, 
            Zero, 
            Zero, 
            One, 
            0x08
        })
        Name (G0T3, Package (0x07)
        {
            0x00020003, 
            "CnQ Flag", 
            0x40000000, 
            Zero, 
            Zero, 
            One, 
            0x02
        })
        Name (G0T7, Package (0x07)
        {
            0x00070007, 
            "P State Control", 
            0x40000000, 
            Zero, 
            Zero, 
            One, 
            0x02
        })
        Name (G0T4, Package (0x07)
        {
            0x00070005, 
            "New CPU Installed", 
            One, 
            Zero, 
            Zero, 
            One, 
            0x02
        })
        Name (G0T8, Package (0x07)
        {
            0x00060008, 
            "Item capability", 
            0x40000000, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (G0T9, Package (0x07)
        {
            0x00060009, 
            "Item control", 
            0x40000000, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GRP0, Package (0x07)
        {
            G0T0, 
            G0T1, 
            G0T3, 
            G0T7, 
            G0T4, 
            G0T8, 
            G0T9
        })
        Method (GIT0, 1, NotSerialized)
        {
            Name (TTT0, Zero)
            Store (And (Arg0, 0xFFFF), TTT0)
            If (LEqual (TTT0, Zero)) {}
            Else
            {
                If (LEqual (TTT0, One)) {}
                Else
                {
                    If (LEqual (TTT0, 0x03))
                    {
                        Store (GNVS (0x16DE), ASB1)
                    }
                    Else
                    {
                        If (LEqual (TTT0, 0x05))
                        {
                            Store (GNVS (0x1786), ASB1)
                        }
                        Else
                        {
                            If (LEqual (TTT0, 0x08))
                            {
                                Store (Zero, Local0)
                                Or (Local0, 0x02, Local0)
                                Or (Local0, One, Local0)
                                Store (Local0, ASB1)
                            }
                            Else
                            {
                                If (LEqual (TTT0, 0x09))
                                {
                                    Store (Zero, Local0)
                                    Or (Local0, 0x02, Local0)
                                    Or (Local0, One, Local0)
                                    Store (Local0, ASB1)
                                }
                                Else
                                {
                                    Store (Zero, ASB0)
                                }
                            }
                        }
                    }
                }
            }
        }

        Method (SIT0, 3, NotSerialized)
        {
            If (And (Arg2, 0xFFFF))
            {
                Name (TTT0, Zero)
                Store (And (Arg0, 0xFFFF), TTT0)
                If (LEqual (TTT0, Zero)) {}
                Else
                {
                    If (LEqual (TTT0, One)) {}
                    Else
                    {
                        If (LEqual (TTT0, 0x03)) {}
                        Else
                        {
                            If (LEqual (TTT0, 0x07))
                            {
                                SNVS (0x16DE, Arg1)
                            }
                            Else
                            {
                                If (LEqual (TTT0, 0x05))
                                {
                                    SNVS (0x1786, Arg1)
                                    Store (0x03, ASB0)
                                }
                                Else
                                {
                                    Store (Zero, ASB0)
                                }
                            }
                        }
                    }
                }
            }
            Else
            {
                Store (0x03, ASB0)
            }
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (G4T0, Package (0x04)
        {
            0x04070010, 
            "Q-FAN Control", 
            0x80000000, 
            Zero
        })
        Name (GRP4, Package (0x01)
        {
            G4T0
        })
        Method (GIT4, 1, NotSerialized)
        {
            Name (TTT0, Zero)
            Store (And (Arg0, 0xFFFF), TTT0)
            If (LEqual (TTT0, 0x10))
            {
                Store (GNVS (0x1746), ASB1)
            }
            Else
            {
                Store (Zero, ASB0)
            }
        }

        Method (SIT4, 3, NotSerialized)
        {
            Name (TTT0, Zero)
            Store (And (Arg0, 0xFFFF), TTT0)
            If (LEqual (TTT0, 0x10))
            {
                If (LNotEqual (GNVS (0x1746), Arg1))
                {
                    If (And (Arg2, One))
                    {
                        SNVS (0x1746, Arg1)
                    }

                    Or (ASB0, 0x02, ASB0)
                }
            }
            Else
            {
                Store (Zero, ASB0)
            }
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (G611, Package (0x07)
        {
            0x06020011, 
            "Vcore Voltage", 
            0x20000000, 
            Zero, 
            0x0320, 
            0x0320, 
            0x02
        })
        Name (G663, Package (0x07)
        {
            0x06020063, 
            "+3.3V Voltage", 
            0x20000000, 
            Zero, 
            0x0B9A, 
            0x0294, 
            0x02
        })
        Name (G662, Package (0x07)
        {
            0x06020062, 
            "+5V Voltage", 
            0x20000000, 
            Zero, 
            0x1194, 
            0x03E8, 
            0x02
        })
        Name (G661, Package (0x07)
        {
            0x06020061, 
            "+12V Voltage", 
            0x20000000, 
            Zero, 
            0x27D8, 
            0x0E10, 
            0x02
        })
        Name (G612, Package (0x07)
        {
            0x06030012, 
            "CPU Temperature", 
            0x20000000, 
            Zero, 
            0x0258, 
            0x015E, 
            0x02
        })
        Name (G614, Package (0x07)
        {
            0x06030014, 
            "MB Temperature", 
            0x20000000, 
            Zero, 
            0x01C2, 
            0x012C, 
            0x02
        })
        Name (G613, Package (0x07)
        {
            0x06040013, 
            "CPU Fan Speed", 
            0x20000000, 
            Zero, 
            0x0258, 
            0x19C8, 
            0x02
        })
        Name (G673, Package (0x07)
        {
            0x06040073, 
            "Chassis Fan Speed", 
            0x20000000, 
            Zero, 
            0x0258, 
            0x19C8, 
            0x02
        })
        Name (GRP6, Package (0x08)
        {
            G611, 
            G663, 
            G662, 
            G661, 
            G612, 
            G614, 
            G613, 
            G673
        })
        Method (GIT6, 1, NotSerialized)
        {
            Name (TTT0, Zero)
            Store (And (Arg0, 0xFFFF), TTT0)
            If (LEqual (TTT0, 0x11))
            {
                Store (RVLT (Zero), ASB1)
            }
            Else
            {
                If (LEqual (TTT0, 0x63))
                {
                    Store (RVLT (One), ASB1)
                }
                Else
                {
                    If (LEqual (TTT0, 0x62))
                    {
                        Store (RVLT (0x02), ASB1)
                    }
                    Else
                    {
                        If (LEqual (TTT0, 0x61))
                        {
                            Store (RVLT (0x03), ASB1)
                        }
                        Else
                        {
                            If (LEqual (TTT0, 0x12))
                            {
                                Store (^^SIOR.HWT1 (), ASB1)
                            }
                            Else
                            {
                                If (LEqual (TTT0, 0x14))
                                {
                                    Store (^^SIOR.HWT2 (), ASB1)
                                }
                                Else
                                {
                                    If (LEqual (TTT0, 0x13))
                                    {
                                        Store (^^SIOR.HWF1 (), ASB1)
                                    }
                                    Else
                                    {
                                        If (LEqual (TTT0, 0x73))
                                        {
                                            Store (^^SIOR.HWF2 (), ASB1)
                                        }
                                        Else
                                        {
                                            Store (Zero, ASB0)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        Method (SIT6, 3, NotSerialized)
        {
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (G8T1, Package (0x09)
        {
            0x08080001, 
            "N.O.S. sensitivity", 
            Zero, 
            Zero, 
            0x04, 
            "Auto", 
            "Standard", 
            "Sensitive", 
            "Heavy load"
        })
        Name (G8T2, Package (0x0C)
        {
            0x08080002, 
            "N.O.S. profile", 
            Zero, 
            Zero, 
            0x07, 
            Zero, 
            "103%", 
            "105%", 
            "107%", 
            "110%", 
            "115%", 
            "120%"
        })
        Name (GRP8, Package (0x02)
        {
            G8T1, 
            G8T2
        })
        Method (GIT8, 1, NotSerialized)
        {
            Name (TTT0, Zero)
            Store (And (Arg0, 0xFFFF), TTT0)
            If (LEqual (TTT0, Zero))
            {
                Store (0x0800, ASB1)
            }
            Else
            {
                If (LEqual (TTT0, One))
                {
                    Store (0x0801, ASB1)
                }
                Else
                {
                    Store (Zero, ASB0)
                }
            }
        }

        Method (SIT8, 3, NotSerialized)
        {
            Name (TTT0, Zero)
            Store (And (Arg0, 0xFFFF), TTT0)
            If (LEqual (TTT0, Zero))
            {
                Store (0x0800, DBG8)
            }
            Else
            {
                If (LEqual (TTT0, One))
                {
                    Store (0x0801, DBG8)
                }
                Else
                {
                    Store (Zero, ASB0)
                }
            }
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (G9T0, Package (0x0A)
        {
            0x09080000, 
            "AI Tunning", 
            Zero, 
            One, 
            0x05, 
            "Manual", 
            "Auto", 
            "Standard", 
            Zero, 
            "AI N.O.S"
        })
        Name (GRP9, Package (0x01)
        {
            G9T0
        })
        Method (GIT9, 1, NotSerialized)
        {
            Name (TTT0, Zero)
            Store (And (Arg0, 0xFFFF), TTT0)
            If (LEqual (TTT0, Zero))
            {
                Store (Zero, ASB1)
                If (LEqual (GNVS (0x35FB), One))
                {
                    Store (LOr (GNVS (0x02A0), GNVS (0x02C8)), Local1)
                    If (LNot (Local1))
                    {
                        Store (One, ASB1)
                    }
                }
            }
            Else
            {
                Store (Zero, ASB0)
            }
        }

        Method (SIT9, 3, NotSerialized)
        {
            Name (TTT0, Zero)
            Store (And (Arg0, 0xFFFF), TTT0)
            If (LEqual (TTT0, Zero))
            {
                If (LNotEqual (GNVS (0x35FB), Arg1))
                {
                    If (And (Arg2, One))
                    {
                        SNVS (0x35FB, Arg1)
                    }

                    Or (ASB0, 0x02, ASB0)
                }
            }
            Else
            {
                Store (Zero, ASB0)
            }
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (GBT0, Package (0x07)
        {
            0x0B060001, 
            "System Performance", 
            Zero, 
            Zero, 
            0x03, 
            One, 
            0x04
        })
        Name (GBT1, Package (0x07)
        {
            0x0B060002, 
            "System Performance Control", 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GBT2, Package (0x07)
        {
            0x0B060003, 
            "System GUI", 
            0x08, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GBT3, Package (0x07)
        {
            0x0B050006, 
            "AI Gear push up", 
            Zero, 
            One, 
            Zero, 
            One, 
            0x1F
        })
        Name (GBT4, Package (0x07)
        {
            0x0B050007, 
            "AI Gear pop down", 
            Zero, 
            One, 
            Zero, 
            One, 
            0x33
        })
        Name (GBT5, Package (0x07)
        {
            0x0B060010, 
            "Level Switch", 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GBT6, Package (0x07)
        {
            0x0B060020, 
            "AI Gear NB load line", 
            Zero, 
            Zero, 
            Zero, 
            One, 
            0x02
        })
        Name (GBT7, Package (0x07)
        {
            0x0B060021, 
            "AI Gear NB voltage", 
            Zero, 
            Zero, 
            Zero, 
            One, 
            0x02
        })
        Name (GBT8, Package (0x07)
        {
            0x0B060022, 
            "AI Gear load line select", 
            Zero, 
            Zero, 
            Zero, 
            One, 
            0x03
        })
        Name (GBT9, Package (0x07)
        {
            0x0B060023, 
            "AI Gear CPU voltage", 
            Zero, 
            Zero, 
            Zero, 
            One, 
            0x03
        })
        Name (GBTA, Package (0x07)
        {
            0x0B060080, 
            "EPU version", 
            0xF001, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GRPB, Package (0x0B)
        {
            GBT0, 
            GBT1, 
            GBT2, 
            GBT3, 
            GBT4, 
            GBT5, 
            GBT6, 
            GBT7, 
            GBT8, 
            GBT9, 
            GBTA
        })
        Method (GITB, 1, NotSerialized)
        {
            Name (TTT0, Zero)
            Store (And (Arg0, 0xFFFF), TTT0)
            If (LEqual (TTT0, One))
            {
                Store (And (DerefOf (Index (GBT0, 0x02)), 0xFFFF), Local0)
                If (LOr (LEqual (Local0, 0x8011), LEqual (Local0, 0x8013)))
                {
                    Store (0x8000, Local0)
                }

                Store (Local0, ASB1)
            }
            Else
            {
                If (LEqual (TTT0, 0x02))
                {
                    Store (DerefOf (Index (GBT1, 0x02)), ASB1)
                }
                Else
                {
                    If (LEqual (TTT0, 0x03))
                    {
                        Store (DerefOf (Index (GBT2, 0x02)), ASB1)
                    }
                    Else
                    {
                        If (LEqual (TTT0, 0x06))
                        {
                            Store (GDEF (Zero), ASB1)
                        }
                        Else
                        {
                            If (LEqual (TTT0, 0x07))
                            {
                                Store (GDEF (0x05), ASB1)
                            }
                            Else
                            {
                                If (LEqual (TTT0, 0x20))
                                {
                                    Store (GDEF (0x03), ASB1)
                                }
                                Else
                                {
                                    If (LEqual (TTT0, 0x21))
                                    {
                                        Store (GDEF (One), ASB1)
                                    }
                                    Else
                                    {
                                        If (LEqual (TTT0, 0x22))
                                        {
                                            Store (GDEF (0x04), ASB1)
                                        }
                                        Else
                                        {
                                            If (LEqual (TTT0, 0x23))
                                            {
                                                Store (GDEF (0x02), ASB1)
                                            }
                                            Else
                                            {
                                                If (LEqual (TTT0, 0x80))
                                                {
                                                    Store (DerefOf (Index (GBTA, 0x02)), ASB1)
                                                }
                                                Else
                                                {
                                                    Store (Zero, ASB0)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        Method (SITB, 3, NotSerialized)
        {
            Name (TTT0, Zero)
            Store (And (Arg0, 0xFFFF), TTT0)
            If (LEqual (TTT0, One))
            {
                Name (TTT1, Zero)
                Store (And (Arg2, 0xFFFF), TTT1)
                If (LEqual (TTT1, Zero))
                {
                    If (LEqual (GNVS (0x35FB), Zero))
                    {
                        Store (COMS (Arg1, ASB0), ASB0)
                    }
                    Else
                    {
                        Store (And (DerefOf (Index (GBT0, 0x02)), 0xFFFF), Local0)
                        If (LEqual (Local0, Zero))
                        {
                            Store (Local0, PAR0)
                        }
                    }
                }
                Else
                {
                    If (LEqual (TTT1, One))
                    {
                        And (Arg1, 0xFFFF, Local0)
                        Store (Local0, Index (GBT0, 0x02))
                        SICL (Local0)
                        Store (One, ASB0)
                    }
                    Else
                    {
                        Store (Zero, ASB0)
                    }
                }
            }
            Else
            {
                If (LEqual (TTT0, 0x02))
                {
                    Store (And (Arg1, 0xFF), Local0)
                    If (LEqual (STCG (Local0), One))
                    {
                        Store (Local0, Index (GBT1, 0x02))
                    }
                    Else
                    {
                        Store (Zero, ASB0)
                    }
                }
                Else
                {
                    If (LEqual (TTT0, 0x06))
                    {
                        Add (Arg1, DerefOf (Index (GBT3, 0x04)), Local0)
                        AGPU (Local0, DerefOf (Index (GBT3, 0x05)))
                    }
                    Else
                    {
                        If (LEqual (TTT0, 0x07))
                        {
                            Add (Arg1, DerefOf (Index (GBT4, 0x04)), Local0)
                            AGPD (Local0, DerefOf (Index (GBT4, 0x05)))
                        }
                        Else
                        {
                            If (LEqual (TTT0, 0x10))
                            {
                                Store (And (Arg1, 0xFF), Local0)
                                AGLS (Local0)
                            }
                            Else
                            {
                                If (LEqual (TTT0, 0x20))
                                {
                                    Store (And (Arg1, 0xFF), Local0)
                                    AGDV (Local0)
                                }
                                Else
                                {
                                    If (LEqual (TTT0, 0x21))
                                    {
                                        Store (And (Arg1, 0xFF), Local0)
                                        AGNV (Local0)
                                    }
                                    Else
                                    {
                                        If (LEqual (TTT0, 0x22))
                                        {
                                            Store (And (Arg1, 0xFF), Local0)
                                            AGLI (Local0)
                                        }
                                        Else
                                        {
                                            If (LEqual (TTT0, 0x23))
                                            {
                                                Store (And (Arg1, 0xFF), Local0)
                                                AGCV (Local0)
                                            }
                                            Else
                                            {
                                                Store (Zero, ASB0)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (GET2, Package (0x07)
        {
            0x0E0B0013, 
            "Power consume", 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GET3, Package (0x07)
        {
            0x0E0A0011, 
            "iCPU test", 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GRPE, Package (0x02)
        {
            GET2, 
            GET3
        })
        Name (OCST, Buffer (0x04)
        {
            0x00, 0x01, 0x02, 0x03
        })
        Method (GITE, 1, NotSerialized)
        {
            Name (TTT0, Zero)
            Store (And (Arg0, 0xFFFF), TTT0)
            If (LEqual (TTT0, 0x11))
            {
                Store (GCVI (), ASB1)
            }
            Else
            {
                If (LEqual (TTT0, 0x13))
                {
                    Store (PCSU (), ASB1)
                }
                Else
                {
                    Store (Zero, ASB0)
                }
            }
        }

        Method (SITE, 3, NotSerialized)
        {
        }

        Name (OMST, Buffer (0x08)
        {
            /* 0000 */    0x01, 0x00, 0x01, 0x01, 0x00, 0x00, 0x02, 0x03
        })
        Name (DFSB, Buffer (0x08)
        {
            /* 0000 */    0x00, 0x00, 0x0A, 0x0A, 0x01, 0x00, 0x01, 0x01
        })
        Name (OLTB, Buffer (0x18)
        {
            /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
            /* 0008 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
            /* 0010 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
        })
        Name (AIGC, Zero)
        Name (PICL, One)
        Name (LVIC, Zero)
        Method (COMS, 2, NotSerialized)
        {
            Name (TTT0, Zero)
            Store (And (Arg0, 0xFFFF), TTT0)
            If (LEqual (TTT0, 0x8000))
            {
                Return (And (Arg1, 0xFB, Arg1))
            }
            Else
            {
                If (LEqual (TTT0, 0x4000))
                {
                    If (LEqual (DerefOf (Index (OMST, Zero)), One))
                    {
                        Return (And (Arg1, 0xFB, Arg1))
                    }
                }
                Else
                {
                    If (LEqual (TTT0, Zero))
                    {
                        If (LEqual (DerefOf (Index (OMST, One)), One))
                        {
                            Return (And (Arg1, 0xFB, Arg1))
                        }
                    }
                    Else
                    {
                        If (LEqual (TTT0, One))
                        {
                            If (LEqual (DerefOf (Index (OMST, 0x02)), One))
                            {
                                Return (And (Arg1, 0xFB, Arg1))
                            }
                        }
                        Else
                        {
                            If (LEqual (TTT0, 0x02))
                            {
                                If (LEqual (DerefOf (Index (OMST, 0x03)), One))
                                {
                                    Return (And (Arg1, 0xFB, Arg1))
                                }
                            }
                            Else
                            {
                                Return (Or (Arg1, 0x04, Arg1))
                            }
                        }
                    }
                }
            }

            Return (Or (Arg1, 0x04, Arg1))
        }

        Method (GDEF, 1, NotSerialized)
        {
            Name (TTT0, Zero)
            Store (And (Arg0, 0xFF), TTT0)
            If (LEqual (TTT0, Zero))
            {
                If (LEqual (GNVS (0x35FB), Zero))
                {
                    Multiply (0x04, GNVS (0x35FB), Local0)
                }
                Else
                {
                    Multiply (0x04, One, Local0)
                }

                Return (DerefOf (Index (DFSB, Add (LVIC, Local0))))
            }
            Else
            {
                If (LEqual (TTT0, One))
                {
                    Return (GVOT (One, LVIC))
                }
                Else
                {
                    If (LEqual (TTT0, 0x02))
                    {
                        Return (GVOT (0x02, LVIC))
                    }
                    Else
                    {
                        If (LEqual (TTT0, 0x03))
                        {
                            Return (GVOT (0x03, LVIC))
                        }
                        Else
                        {
                            If (LEqual (TTT0, 0x04))
                            {
                                Return (GVOT (0x04, LVIC))
                            }
                            Else
                            {
                                If (LEqual (TTT0, 0x05))
                                {
                                    If (LEqual (GNVS (0x35FB), Zero))
                                    {
                                        Multiply (0x04, GNVS (0x35FB), Local0)
                                    }
                                    Else
                                    {
                                        Multiply (0x04, One, Local0)
                                    }

                                    Return (DerefOf (Index (DFSB, Add (LVIC, Local0))))
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                    }
                }
            }
        }

        Method (AGPU, 2, NotSerialized)
        {
            If (LGreater (Arg0, Zero)) {}
            Return (One)
        }

        Method (AGPD, 2, NotSerialized)
        {
            If (LGreater (Arg0, Zero)) {}
            Return (One)
        }

        Method (AGLS, 1, NotSerialized)
        {
            Store (Arg0, LVIC)
            Return (One)
        }

        Method (AGDV, 1, NotSerialized)
        {
            SVOT (0x03, LVIC, Arg0)
            Return (One)
        }

        Method (AGNV, 1, NotSerialized)
        {
            SVOT (One, LVIC, Arg0)
            Return (One)
        }

        Method (AGLI, 1, NotSerialized)
        {
            SVOT (0x04, LVIC, Arg0)
            Return (One)
        }

        Method (AGCV, 1, NotSerialized)
        {
            SVOT (0x02, LVIC, Arg0)
            Return (One)
        }

        Method (SVOT, 3, NotSerialized)
        {
            Add (Arg0, Multiply (Arg1, 0x06), Local0)
            Store (Arg2, Index (OLTB, Local0))
            Return (One)
        }

        Method (GVOT, 2, NotSerialized)
        {
            Add (Arg0, Multiply (Arg1, 0x06), Local0)
            Store (DerefOf (Index (OLTB, Local0)), Local1)
            Return (Local1)
        }

        Method (SICL, 1, NotSerialized)
        {
            If (And (Arg0, 0x8000))
            {
                Store (One, AIGC)
                Name (TTT0, Zero)
                Store (And (Arg0, 0xFF), TTT0)
                If (LEqual (TTT0, Zero))
                {
                    ITAT ()
                }
                Else
                {
                    If (LEqual (TTT0, 0x11))
                    {
                        CPPH ()
                    }
                    Else
                    {
                        If (LEqual (TTT0, 0x13))
                        {
                            SPPH ()
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }
            }
            Else
            {
                Store (Zero, AIGC)
                If (And (Arg0, 0x4000))
                {
                    SPIC (Zero)
                    Store (Zero, PICL)
                }
                Else
                {
                    Name (TTT1, Zero)
                    Store (And (Arg0, 0xFF), TTT1)
                    If (LEqual (TTT1, Zero))
                    {
                        SPIC (One)
                        Store (One, PICL)
                    }
                    Else
                    {
                        If (LEqual (TTT1, One))
                        {
                            SPIC (0x02)
                            Store (0x02, PICL)
                        }
                        Else
                        {
                            If (LEqual (TTT1, 0x02))
                            {
                                SPIC (0x03)
                                Store (0x03, PICL)
                            }
                            Else
                            {
                                If (LEqual (TTT1, 0xFF))
                                {
                                    SPIC (0x03)
                                    Store (0x03, PICL)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                    }
                }
            }

            Return (One)
        }

        Method (SPIC, 1, NotSerialized)
        {
            If (LLessEqual (Arg0, PICL))
            {
                If (Or (LGreater (Arg0, One), LEqual (AIGC, One)))
                {
                    EQFC (One)
                }
                Else
                {
                    EQFC (Zero)
                }

                SEPU (Arg0)
            }
            Else
            {
                SEPU (Arg0)
                If (Or (LGreater (Arg0, One), LEqual (AIGC, One)))
                {
                    EQFC (One)
                }
                Else
                {
                    EQFC (Zero)
                }
            }
        }

        Name (IFLG, Zero)
        Method (EQFC, 1, NotSerialized)
        {
            If (LEqual (IFLG, Zero))
            {
                SREG ()
                Store (One, IFLG)
            }

            If (LEqual (Arg0, Zero))
            {
                RREG ()
            }
            Else
            {
                TFCS ()
            }

            Return (One)
        }

        Name (FREG, Package (0x14)
        {
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Method (SREG, 0, NotSerialized)
        {
            Store (SO14, Index (FREG, Zero))
            Store (SO15, Index (FREG, One))
            Store (SO16, Index (FREG, 0x02))
            Store (SO17, Index (FREG, 0x03))
            Store (SO60, Index (FREG, 0x04))
            Store (SO61, Index (FREG, 0x05))
            Store (SO62, Index (FREG, 0x06))
            Store (SO63, Index (FREG, 0x07))
            Store (SO64, Index (FREG, 0x08))
            Store (SO68, Index (FREG, 0x09))
            Store (SO69, Index (FREG, 0x0A))
            Store (SO6A, Index (FREG, 0x0B))
            Store (SO6B, Index (FREG, 0x0C))
            Store (SO6C, Index (FREG, 0x0D))
            Store (SO70, Index (FREG, 0x0E))
            Store (SO71, Index (FREG, 0x0F))
            Store (SO72, Index (FREG, 0x10))
            Store (SO73, Index (FREG, 0x11))
            Store (SO74, Index (FREG, 0x12))
            Store (SO13, Index (FREG, 0x13))
        }

        Method (RREG, 0, NotSerialized)
        {
            Store (DerefOf (Index (FREG, Zero)), SO14)
            Store (DerefOf (Index (FREG, One)), SO15)
            Store (DerefOf (Index (FREG, 0x02)), SO16)
            Store (DerefOf (Index (FREG, 0x03)), SO17)
            Store (DerefOf (Index (FREG, 0x04)), SO60)
            Store (DerefOf (Index (FREG, 0x05)), SO61)
            Store (DerefOf (Index (FREG, 0x06)), SO62)
            Store (DerefOf (Index (FREG, 0x07)), SO63)
            Store (DerefOf (Index (FREG, 0x08)), SO64)
            Store (DerefOf (Index (FREG, 0x09)), SO68)
            Store (DerefOf (Index (FREG, 0x0A)), SO69)
            Store (DerefOf (Index (FREG, 0x0B)), SO6A)
            Store (DerefOf (Index (FREG, 0x0C)), SO6B)
            Store (DerefOf (Index (FREG, 0x0D)), SO6C)
            Store (DerefOf (Index (FREG, 0x0E)), SO70)
            Store (DerefOf (Index (FREG, 0x0F)), SO71)
            Store (DerefOf (Index (FREG, 0x10)), SO72)
            Store (DerefOf (Index (FREG, 0x11)), SO73)
            Store (DerefOf (Index (FREG, 0x12)), SO74)
            Store (DerefOf (Index (FREG, 0x13)), SO13)
        }

        Name (SILF, Package (0x14)
        {
            0xD0, 
            0x80, 
            0x80, 
            0x80, 
            Zero, 
            0x30, 
            0x46, 
            0x35, 
            0x9A, 
            Zero, 
            0x30, 
            0x46, 
            0x35, 
            0x8D, 
            Zero, 
            0x30, 
            0x46, 
            0x35, 
            0x8D, 
            0x7F
        })
        Method (TFCS, 0, NotSerialized)
        {
            Store (DerefOf (Index (SILF, Zero)), SO14)
            Store (DerefOf (Index (SILF, One)), SO15)
            Store (DerefOf (Index (SILF, 0x02)), SO16)
            Store (DerefOf (Index (SILF, 0x03)), SO17)
            Store (DerefOf (Index (SILF, 0x04)), SO60)
            Store (DerefOf (Index (SILF, 0x05)), SO61)
            Store (DerefOf (Index (SILF, 0x06)), SO62)
            Store (DerefOf (Index (SILF, 0x07)), SO63)
            Store (DerefOf (Index (SILF, 0x08)), SO64)
            Store (DerefOf (Index (SILF, 0x09)), SO68)
            Store (DerefOf (Index (SILF, 0x0A)), SO69)
            Store (DerefOf (Index (SILF, 0x0B)), SO6A)
            Store (DerefOf (Index (SILF, 0x0C)), SO6B)
            Store (DerefOf (Index (SILF, 0x0D)), SO6C)
            Store (DerefOf (Index (SILF, 0x0E)), SO70)
            Store (DerefOf (Index (SILF, 0x0F)), SO71)
            Store (DerefOf (Index (SILF, 0x10)), SO72)
            Store (DerefOf (Index (SILF, 0x11)), SO73)
            Store (DerefOf (Index (SILF, 0x12)), SO74)
            Store (DerefOf (Index (SILF, 0x13)), SO13)
        }

        OperationRegion (SIOE, SystemIO, IOEB, 0x20)
        Field (SIOE, ByteAcc, NoLock, Preserve)
        {
                    Offset (0x05), 
            GIDX,   8, 
            GDAT,   8
        }

        IndexField (GIDX, GDAT, ByteAcc, NoLock, Preserve)
        {
                    Offset (0x03), 
            SO03,   8, 
                    Offset (0x13), 
            SO13,   8, 
            SO14,   8, 
            SO15,   8, 
            SO16,   8, 
            SO17,   8, 
                    Offset (0x45), 
            SO45,   8, 
                    Offset (0x60), 
            SO60,   8, 
            SO61,   8, 
            SO62,   8, 
            SO63,   8, 
            SO64,   8, 
            SO65,   8, 
            SO66,   8, 
            SO67,   8, 
            SO68,   8, 
            SO69,   8, 
            SO6A,   8, 
            SO6B,   8, 
            SO6C,   8, 
            SO6D,   8, 
            SO6E,   8, 
            SO6F,   8, 
            SO70,   8, 
            SO71,   8, 
            SO72,   8, 
            SO73,   8, 
            SO74,   8, 
            SO75,   8, 
            SO76,   8, 
            SO77,   8
        }

        Method (ITAT, 0, NotSerialized)
        {
            EQFC (One)
            INTA ()
        }

        Method (STCG, 1, NotSerialized)
        {
            Name (TTT0, Zero)
            Store (And (Arg0, 0xFF), TTT0)
            If (LEqual (TTT0, Zero)) {}
            Else
            {
                If (LEqual (TTT0, One))
                {
                    CCPW ()
                }
                Else
                {
                    Return (Zero)
                }
            }

            Return (One)
        }
    }

    Scope (_SB)
    {
        OperationRegion (PIRQ, SystemIO, 0x0C00, 0x02)
        Field (PIRQ, ByteAcc, NoLock, Preserve)
        {
            PIDX,   8, 
            PDAT,   8
        }

        IndexField (PIDX, PDAT, ByteAcc, NoLock, Preserve)
        {
            PIRA,   8, 
            PIRB,   8, 
            PIRC,   8, 
            PIRD,   8, 
            PIRS,   8, 
                    Offset (0x09), 
            PIRE,   8, 
            PIRF,   8, 
            PIRG,   8, 
            PIRH,   8
        }

        OperationRegion (KBDD, SystemIO, 0x64, One)
        Field (KBDD, ByteAcc, NoLock, Preserve)
        {
            PD64,   8
        }

        Method (IRQC, 0, NotSerialized)
        {
            Store (Zero, PIRA)
            Store (Zero, PIRB)
            Store (Zero, PIRC)
            Store (Zero, PIRD)
            Store (PD64, Local1)
            Store (Zero, PIRE)
            Store (Zero, PIRF)
            Store (Zero, PIRG)
            Store (Zero, PIRH)
        }

        Name (BUFA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {15}
        })
        Name (IPRA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRB, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRC, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRD, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F"))
            Name (_UID, One)
            Method (_STA, 0, NotSerialized)
            {
                If (PIRA)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)
            {
                Return (PRSA)
            }

            Method (_DIS, 0, NotSerialized)
            {
                Store (Zero, PIRA)
            }

            Method (_CRS, 0, NotSerialized)
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRA, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRA)
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F"))
            Name (_UID, 0x02)
            Method (_STA, 0, NotSerialized)
            {
                If (PIRB)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)
            {
                Return (PRSB)
            }

            Method (_DIS, 0, NotSerialized)
            {
                Store (Zero, PIRB)
            }

            Method (_CRS, 0, NotSerialized)
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRB, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRB)
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F"))
            Name (_UID, 0x03)
            Method (_STA, 0, NotSerialized)
            {
                If (PIRC)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)
            {
                Return (PRSC)
            }

            Method (_DIS, 0, NotSerialized)
            {
                Store (Zero, PIRC)
            }

            Method (_CRS, 0, NotSerialized)
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRC, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRC)
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F"))
            Name (_UID, 0x04)
            Method (_STA, 0, NotSerialized)
            {
                If (PIRD)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)
            {
                Return (PRSD)
            }

            Method (_DIS, 0, NotSerialized)
            {
                Store (Zero, PIRD)
            }

            Method (_CRS, 0, NotSerialized)
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRD, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRD)
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F"))
            Name (_UID, 0x05)
            Method (_STA, 0, NotSerialized)
            {
                If (PIRE)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)
            {
                Return (PRSE)
            }

            Method (_DIS, 0, NotSerialized)
            {
                Store (Zero, PIRE)
            }

            Method (_CRS, 0, NotSerialized)
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRE, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (PIRE, Local0)
                Decrement (Local0)
                Store (Local0, PIRE)
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F"))
            Name (_UID, 0x02)
            Method (_STA, 0, NotSerialized)
            {
                If (PIRF)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)
            {
                Return (PRSF)
            }

            Method (_DIS, 0, NotSerialized)
            {
                Store (Zero, PIRF)
            }

            Method (_CRS, 0, NotSerialized)
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRF, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRF)
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F"))
            Name (_UID, 0x03)
            Method (_STA, 0, NotSerialized)
            {
                If (PIRG)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)
            {
                Return (PRSG)
            }

            Method (_DIS, 0, NotSerialized)
            {
                Store (Zero, PIRG)
            }

            Method (_CRS, 0, NotSerialized)
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRG, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRG)
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F"))
            Name (_UID, 0x04)
            Method (_STA, 0, NotSerialized)
            {
                If (PIRH)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)
            {
                Return (PRSH)
            }

            Method (_DIS, 0, NotSerialized)
            {
                Store (Zero, PIRH)
            }

            Method (_CRS, 0, NotSerialized)
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRH, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRH)
            }
        }
    }

    Scope (_SB)
    {
        Name (XCPD, Zero)
        Name (XNPT, One)
        Name (XCAP, 0x02)
        Name (XDCP, 0x04)
        Name (XDCT, 0x08)
        Name (XDST, 0x0A)
        Name (XLCP, 0x0C)
        Name (XLCT, 0x10)
        Name (XLST, 0x12)
        Name (XSCP, 0x14)
        Name (XSCT, 0x18)
        Name (XSST, 0x1A)
        Name (XRCT, 0x1C)
        Mutex (MUTE, 0x00)
        Method (RBPE, 1, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            Add (Arg0, PCIB, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, One)
            Field (PCFG, ByteAcc, NoLock, Preserve)
            {
                XCFG,   8
            }

            Release (MUTE)
            Return (XCFG)
        }

        Method (RWPE, 1, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            And (Arg0, 0xFFFFFFFE, Arg0)
            Add (Arg0, PCIB, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x02)
            Field (PCFG, WordAcc, NoLock, Preserve)
            {
                XCFG,   16
            }

            Release (MUTE)
            Return (XCFG)
        }

        Method (RDPE, 1, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            And (Arg0, 0xFFFFFFFC, Arg0)
            Add (Arg0, PCIB, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x04)
            Field (PCFG, DWordAcc, NoLock, Preserve)
            {
                XCFG,   32
            }

            Release (MUTE)
            Return (XCFG)
        }

        Method (WBPE, 2, NotSerialized)
        {
            Acquire (MUTE, 0x0FFF)
            Add (Arg0, PCIB, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, One)
            Field (PCFG, ByteAcc, NoLock, Preserve)
            {
                XCFG,   8
            }

            Store (Arg1, XCFG)
            Release (MUTE)
        }

        Method (WWPE, 2, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            And (Arg0, 0xFFFFFFFE, Arg0)
            Add (Arg0, PCIB, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x02)
            Field (PCFG, WordAcc, NoLock, Preserve)
            {
                XCFG,   16
            }

            Store (Arg1, XCFG)
            Release (MUTE)
        }

        Method (WDPE, 2, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            And (Arg0, 0xFFFFFFFC, Arg0)
            Add (Arg0, PCIB, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x04)
            Field (PCFG, DWordAcc, NoLock, Preserve)
            {
                XCFG,   32
            }

            Store (Arg1, XCFG)
            Release (MUTE)
        }

        Method (RWDP, 3, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            And (Arg0, 0xFFFFFFFC, Arg0)
            Add (Arg0, PCIB, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x04)
            Field (PCFG, DWordAcc, NoLock, Preserve)
            {
                XCFG,   32
            }

            And (XCFG, Arg2, Local1)
            Or (Local1, Arg1, XCFG)
            Release (MUTE)
        }

        Method (RPME, 1, NotSerialized)
        {
            Add (Arg0, 0x84, Local0)
            Store (RDPE (Local0), Local1)
            If (LEqual (Local1, Ones))
            {
                Return (Zero)
            }
            Else
            {
                If (LAnd (Local1, 0x00010000))
                {
                    WDPE (Local0, And (Local1, 0x00010000))
                    Return (One)
                }

                Return (Zero)
            }
        }
    }

    OperationRegion (SMRG, SystemIO, 0x0B00, 0x30)
    Field (SMRG, ByteAcc, NoLock, Preserve)
    {
        HSTS,   8, 
        SSTS,   8, 
        HSTC,   8, 
        HCMD,   8, 
        HADR,   8, 
        HDT0,   8, 
        HDT1,   8, 
        BLKD,   8, 
                Offset (0x20), 
        H2TS,   8, 
        S2TS,   8, 
        H2TC,   8, 
        H2MD,   8, 
        H2DR,   8, 
        H2T0,   8, 
        H2T1,   8
    }

    Field (SMRG, ByteAcc, NoLock, Preserve)
    {
                Offset (0x05), 
        HDTW,   16
    }

    Method (ASCM, 4, Serialized)
    {
        Store (SMBU, Local5)
        While (Not (LEqual (And (Local5, One), Zero)))
        {
            Sleep (0x64)
            Store (SMBU, Local5)
        }

        Store (One, SMBU)
        Store (0x05, Local0)
        While (Decrement (Local0))
        {
            Store (0x1E, HSTS)
            Stall (0x0A)
            While (LAnd (And (HSTS, One), One))
            {
                Store (0x1E, HSTS)
                Stall (0x0A)
            }

            Store (Arg1, HCMD)
            Stall (0x0A)
            Store (Arg0, HADR)
            Stall (0x0A)
            And (Arg0, One, Local2)
            Store (Arg3, HSTC)
            Stall (0x0A)
            Store (Arg2, HDT0)
            Stall (0x0A)
            Store (0x1E, HSTS)
            Stall (0x0A)
            While (LAnd (And (HSTS, One), One))
            {
                Store (0x1E, HSTS)
                Stall (0x0A)
            }

            Or (HSTC, 0x40, HSTC)
            Stall (0x0A)
            Store (0xFFFF, Local1)
            While (LEqual (And (HSTS, One), One))
            {
                Stall (0x14)
            }

            If (And (HSTS, 0x1C))
            {
                Store (Zero, SMBU)
                Return (Ones)
            }

            If (Local2)
            {
                Store (Zero, SMBU)
                Return (HDT0)
            }
        }

        Store (Zero, SMBU)
        Return (Ones)
    }

    Method (A2CM, 4, Serialized)
    {
        Store (SMBU, Local5)
        While (Not (LEqual (And (Local5, 0x02), Zero)))
        {
            Sleep (0x64)
            Store (SMBU, Local5)
        }

        Store (0x02, SMBU)
        Store (0x05, Local0)
        While (Decrement (Local0))
        {
            Store (0xFFFF, Local1)
            While (LAnd (And (H2TS, One), Decrement (Local1)))
            {
                Stall (0x0A)
            }

            Store (0x1E, H2TS)
            Stall (0x0A)
            Store (Arg1, H2MD)
            Stall (0x0A)
            Store (Arg0, H2DR)
            Stall (0x0A)
            Store (Arg3, H2TC)
            Stall (0x0A)
            Store (Arg2, H2T0)
            Stall (0x0A)
            Or (H2TC, 0x40, H2TC)
            Stall (0x0A)
            Store (0xFFFF, Local1)
            While (Decrement (Local1))
            {
                If (LEqual (And (H2TS, 0x7F), Zero))
                {
                    Stall (0x0A)
                }
                Else
                {
                    Store (One, Local1)
                }
            }

            Store (0xFFFF, Local1)
            While (Decrement (Local1))
            {
                If (LAnd (And (H2TS, One), One))
                {
                    Stall (0x0A)
                }
                Else
                {
                    Store (One, Local1)
                }
            }

            If (And (Arg0, One))
            {
                Store (Zero, SMBU)
                Return (H2T0)
            }

            If (LAnd (H2TS, 0x02))
            {
                Store (One, Local0)
            }
        }

        Store (Zero, SMBU)
        Return (Ones)
    }

    Method (WBYT, 3, NotSerialized)
    {
        ASCM (Arg0, Arg1, Arg2, 0x08)
    }

    Method (RBYT, 2, NotSerialized)
    {
        Or (Arg0, One, Arg0)
        Return (And (ASCM (Arg0, Arg1, Zero, 0x08), 0xFF))
    }

    Method (W2YT, 3, NotSerialized)
    {
        A2CM (Arg0, Arg1, Arg2, 0x08)
    }

    Method (R2YT, 2, NotSerialized)
    {
        Or (Arg0, One, Arg0)
        Return (And (A2CM (Arg0, Arg1, Zero, 0x08), 0xFF))
    }

    Method (SBYT, 2, NotSerialized)
    {
    }

    Method (WWRD, 3, NotSerialized)
    {
    }

    Method (RSBT, 2, NotSerialized)
    {
        Store (Zero, Local0)
        Return (Local0)
    }

    Method (RWRD, 2, NotSerialized)
    {
        Store (Zero, Local0)
        Return (Local0)
    }

    Method (WBLK, 4, NotSerialized)
    {
    }

    Method (RBLK, 3, NotSerialized)
    {
        Store (Zero, Local0)
        Return (Local0)
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (G3C0, Package (0x07)
        {
            0x03010011, 
            "CPU Frequency", 
            Zero, 
            Zero, 
            0x4E20, 
            0x64, 
            0x0191
        })
        Name (G3C1, Package (0x07)
        {
            0x03020012, 
            "CPU Voltage", 
            Zero, 
            Zero, 
            0xFF001F40, 
            0x0C35, 
            0x4A
        })
        Name (G3C2, Package (0x07)
        {
            0x03060013, 
            "CPU Ratio", 
            Zero, 
            0x10, 
            0xFF000028, 
            0x05, 
            0x2B
        })
        Name (G3C3, Package (0x07)
        {
            0x03020015, 
            "CPU/NB Voltage", 
            Zero, 
            Zero, 
            0x04B0, 
            0x14, 
            0x0A
        })
        Name (G3D2, Package (0x07)
        {
            0x03020032, 
            "DRAM Voltage", 
            Zero, 
            Zero, 
            0x0546, 
            0x0A, 
            0x60
        })
        Name (G353, Package (0x07)
        {
            0x03020053, 
            "VDDA Voltage", 
            Zero, 
            Zero, 
            0x09C4, 
            0x64, 
            0x04
        })
        Name (G354, Package (0x07)
        {
            0x03020054, 
            "HT Voltage", 
            Zero, 
            Zero, 
            0x04B0, 
            0x0F, 
            0x0D
        })
        Name (G355, Package (0x07)
        {
            0x03020055, 
            "NB Voltage", 
            Zero, 
            Zero, 
            0x044C, 
            0x0F, 
            0x1D
        })
        Name (G356, Package (0x07)
        {
            0x03020056, 
            "SB Voltage", 
            Zero, 
            Zero, 
            0x04B0, 
            0x96, 
            0x02
        })
        Name (G3DS, Package (0x07)
        {
            0x030600F0, 
            "Device Select", 
            0x40000000, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GRP3, Package (0x0A)
        {
            G3C0, 
            G3C1, 
            G3C2, 
            G3C3, 
            G3D2, 
            G353, 
            G354, 
            G355, 
            G356, 
            G3DS
        })
        Name (GODS, Zero)
        Name (TGRT, Zero)
        Name (TGR2, Zero)
        Name (CLBF, Buffer (0x20)
        {
            /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
            /* 0008 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
            /* 0010 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
            /* 0018 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
        })
        Name (TPBF, Buffer (0x0A)
        {
            /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
            /* 0008 */    0x00, 0x00
        })
        Method (G3UP, 0, NotSerialized)
        {
            Store (GAGP (0x0313), Local0)
            Store (Local0, TGRT)
            Store (GAGP (0x03FF), Local0)
            Store (Local0, TGR2)
            CPUN ()
            RMIN ()
            RINT ()
            RNUM ()
            C1UP ()
            C3UP ()
            D2UP ()
            HTUP ()
            NBUP ()
        }

        Method (HTUP, 0, NotSerialized)
        {
            Store (R2YT (0x2A, 0x03), Index (G354, 0x03))
        }

        Method (NBUP, 0, NotSerialized)
        {
            Store (R2YT (0x2A, 0x02), Index (G355, 0x03))
        }

        Method (CPUN, 0, NotSerialized)
        {
            Store (GAGP ("CPUN"), Local0)
            Store (Local0, Index (G3DS, 0x06))
        }

        Method (RMIN, 0, NotSerialized)
        {
            Store (GAGP ("RMIN"), Index (G3C2, 0x04))
        }

        Method (RINT, 0, NotSerialized)
        {
            Store (GAGP ("RINT"), Index (G3C2, 0x05))
        }

        Method (RNUM, 0, NotSerialized)
        {
            Store (GAGP ("RNUM"), Index (G3C2, 0x06))
        }

        Method (C1UP, 0, NotSerialized)
        {
        }

        Method (C3UP, 0, NotSerialized)
        {
        }

        Method (D2UP, 0, NotSerialized)
        {
            Store (R2YT (0x2A, One), Local0)
            Store (Local0, Local1)
            If (And (Local0, 0x40))
            {
                And (Local1, 0x3F, Local0)
                Multiply (Local0, 0x05, Local0)
                Subtract (0x0A, Local0, Local0)
            }
            Else
            {
                And (Local1, 0x3F, Local0)
                Add (Local0, 0x0A, Local0)
            }

            Store (Local0, Index (G3D2, 0x03))
            Store (Local0, Index (TPBF, 0x02))
        }

        Method (GIT3, 1, NotSerialized)
        {
            Name (TTT0, Zero)
            Store (And (Arg0, 0xFFFF), TTT0)
            If (LEqual (TTT0, 0x11))
            {
                Store (SMBU, Local5)
                While (Not (LEqual (And (Local5, One), Zero)))
                {
                    Sleep (0x0A)
                    Store (SMBU, Local5)
                }

                Store (One, SMBU)
                Store (GCMN (), ASB1)
                Store (Zero, SMBU)
            }
            Else
            {
                If (LEqual (TTT0, 0x12))
                {
                    Store (GAGP (0x0312), ASB1)
                }
                Else
                {
                    If (LEqual (TTT0, 0x13))
                    {
                        If (LNotEqual (GODS, 0xFF))
                        {
                            If (LGreaterEqual (GODS, 0x04))
                            {
                                Store (GAGP (0x03FF), Local1)
                                ShiftLeft (Subtract (GODS, 0x04), 0x03, Local5)
                            }
                            Else
                            {
                                Store (GAGP (0x0313), Local1)
                                ShiftLeft (GODS, 0x03, Local5)
                            }

                            ShiftRight (Local1, Local5, Local0)
                            Store (And (Local0, 0xFF), ASB1)
                        }
                    }
                    Else
                    {
                        If (LEqual (TTT0, 0x15))
                        {
                            Store (GAGP (0x0315), ASB1)
                        }
                        Else
                        {
                            If (LEqual (TTT0, 0x32))
                            {
                                Store (GDRV (), ASB1)
                                Store (ASB1, Index (TPBF, 0x02))
                            }
                            Else
                            {
                                If (LEqual (TTT0, 0x53)) {}
                                Else
                                {
                                    If (LEqual (TTT0, 0x54))
                                    {
                                        Store (GHTV (), ASB1)
                                        Store (ASB1, Index (TPBF, 0x03))
                                    }
                                    Else
                                    {
                                        If (LEqual (TTT0, 0x55))
                                        {
                                            Store (GNBV (), ASB1)
                                            Store (ASB1, Index (TPBF, 0x04))
                                        }
                                        Else
                                        {
                                            If (LEqual (TTT0, 0x56)) {}
                                            Else
                                            {
                                                If (LEqual (TTT0, 0xF0)) {}
                                                Else
                                                {
                                                    Store (Zero, ASB0)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        Method (SIT3, 3, NotSerialized)
        {
            Name (TTT0, Zero)
            Store (And (Arg0, 0xFFFF), TTT0)
            If (LEqual (TTT0, 0x11))
            {
                If (And (Arg2, 0x03))
                {
                    Store (SMBU, Local5)
                    While (Not (LEqual (And (Local5, One), Zero)))
                    {
                        Sleep (0x0A)
                        Store (SMBU, Local5)
                    }

                    Store (One, SMBU)
                    DCMN (Arg1)
                    Store (Zero, SMBU)
                }

                If (And (Arg2, One))
                {
                    SNVS (0xA2B8, Arg1)
                }
            }
            Else
            {
                If (LEqual (TTT0, 0x12))
                {
                    If (LNotEqual (GAGP (0x0312), Arg1))
                    {
                        SAGP (0x0312, Arg1)
                    }
                }
                Else
                {
                    If (LEqual (TTT0, 0x13))
                    {
                        If (LNotEqual (GODS, 0xFF))
                        {
                            If (LGreaterEqual (GODS, 0x04))
                            {
                                ShiftLeft (Subtract (GODS, 0x04), 0x03, Local5)
                                ShiftLeft (Arg1, Local5, Local0)
                                ShiftLeft (0xFF, Local5, Local1)
                                Not (Local1, Local1)
                                And (TGR2, Local1, TGR2)
                                Or (TGR2, Local0, TGR2)
                            }
                            Else
                            {
                                ShiftLeft (GODS, 0x03, Local5)
                                ShiftLeft (Arg1, Local5, Local0)
                                ShiftLeft (0xFF, Local5, Local1)
                                Not (Local1, Local1)
                                And (TGRT, Local1, TGRT)
                                Or (TGRT, Local0, TGRT)
                            }
                        }
                        Else
                        {
                            Store (TGRT, Local0)
                            SAGP (0x0313, Local0)
                            Store (TGR2, Local0)
                            SAGP (0x03FF, Local0)
                        }
                    }
                    Else
                    {
                        If (LEqual (TTT0, 0x15))
                        {
                            If (LNotEqual (GAGP (0x0315), Arg1))
                            {
                                SAGP (0x0315, Arg1)
                            }
                        }
                        Else
                        {
                            If (LEqual (TTT0, 0x32))
                            {
                                If (And (Arg2, 0x03))
                                {
                                    Store (Arg1, Local1)
                                    SDRV (Local1)
                                }

                                If (And (Arg2, One)) {}
                            }
                            Else
                            {
                                If (LEqual (TTT0, 0x53)) {}
                                Else
                                {
                                    If (LEqual (TTT0, 0x54))
                                    {
                                        If (And (Arg2, 0x03))
                                        {
                                            SHTV (Arg1)
                                        }

                                        If (And (Arg2, One)) {}
                                    }
                                    Else
                                    {
                                        If (LEqual (TTT0, 0x55))
                                        {
                                            If (And (Arg2, 0x03))
                                            {
                                                SNBV (Arg1)
                                            }

                                            If (And (Arg2, One)) {}
                                        }
                                        Else
                                        {
                                            If (LEqual (TTT0, 0x56)) {}
                                            Else
                                            {
                                                If (LEqual (TTT0, 0xF0))
                                                {
                                                    Store (Arg1, GODS)
                                                }
                                                Else
                                                {
                                                    Store (Zero, ASB0)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        Method (GCVV, 0, NotSerialized)
        {
            Return (One)
        }

        Method (SDRV, 1, NotSerialized)
        {
            If (Not (LEqual (Arg0, DerefOf (Index (TPBF, 0x02)))))
            {
                Store (Arg0, Index (TPBF, 0x02))
                If (LGreaterEqual (Arg0, 0x0A))
                {
                    Subtract (Arg0, 0x0A, Local0)
                }
                Else
                {
                    Divide (Arg0, 0x05, Local1, Local0)
                    Subtract (0x42, Local0, Local0)
                }

                W2YT (0x2A, One, Local0)
            }

            Return (One)
        }

        Method (GDRV, 0, NotSerialized)
        {
            Store (R2YT (0x2A, One), Local0)
            Store (Local0, Local1)
            If (And (Local0, 0x40))
            {
                And (Local1, 0x3F, Local0)
                Multiply (Local0, 0x05, Local0)
                Subtract (0x0A, Local0, Local0)
                Store (DerefOf (Index (TPBF, 0x02)), Local0)
            }
            Else
            {
                And (Local1, 0x3F, Local0)
                Add (Local0, 0x0A, Local0)
            }

            Return (Local0)
        }

        Method (SHTV, 1, NotSerialized)
        {
            If (Not (LEqual (Arg0, DerefOf (Index (TPBF, 0x03)))))
            {
                W2YT (0x2A, 0x03, Arg0)
            }

            Return (One)
        }

        Method (GHTV, 0, NotSerialized)
        {
            Store (R2YT (0x2A, 0x03), Local0)
            Return (Local0)
        }

        Method (SNBV, 1, NotSerialized)
        {
            If (Not (LEqual (Arg0, DerefOf (Index (TPBF, 0x04)))))
            {
                W2YT (0x2A, 0x02, Arg0)
            }

            Return (One)
        }

        Method (GNBV, 0, NotSerialized)
        {
            Store (R2YT (0x2A, 0x02), Local0)
            Return (Local0)
        }

        Method (GCMN, 0, NotSerialized)
        {
            RWBK (Zero, 0xD3, Zero, 0x0B, CLBF)
            Store (DerefOf (Index (CLBF, 0x07)), Local0)
            If (LEqual (Local0, 0x75))
            {
                Store (0x1F, Index (CLBF, 0x0B))
                RWBK (Zero, 0xD2, 0x0B, One, CLBF)
            }
            Else
            {
                Store (0x1F, Index (CLBF, 0x07))
                RWBK (Zero, 0xD2, 0x07, One, CLBF)
            }

            RWBK (Zero, 0xD3, Zero, 0x20, CLBF)
            Store (DerefOf (Index (CLBF, 0x07)), Local0)
            If (LEqual (Local0, 0x75))
            {
                RWBK (Zero, 0xD3, Zero, 0x20, CLBF)
                Store (DerefOf (Index (CLBF, 0x10)), Local0)
                And (Local0, 0x3F, Local1)
                ShiftRight (And (Local0, 0xC0, Local2), 0x05, Local2)
                ShiftLeft (DerefOf (Index (CLBF, 0x11)), 0x03, Local3)
                ShiftRight (And (DerefOf (Index (CLBF, 0x14)), 0x80, Local4), 0x07, 
                    Local4)
                Or (Local2, Local3, Local2)
                Or (Local4, Local2, Local4)
                Multiply (Local4, 0x19, Local4)
                Divide (Local4, Local1, , Local4)
                Subtract (Local4, 0xC8, Local4)
                Return (Local4)
            }
            Else
            {
                Store (GVCO (0x0B, 0x0C, 0x1C, 0x37EE), Local0)
                Divide (Local0, 0x02, , Local0)
                Add (Local0, 0x01F4, Local0)
                Divide (Local0, 0x03E8, , Local4)
                If (LLess (Local4, 0xC8))
                {
                    Store (0xC8, Local4)
                }

                Subtract (Local4, 0xC8, Local4)
                Return (Local4)
            }
        }

        Method (DCMN, 1, NotSerialized)
        {
            Add (Arg0, 0xC8, Local1)
            RWBK (Zero, 0xD3, Zero, 0x20, CLBF)
            Store (DerefOf (Index (CLBF, 0x07)), Local0)
            If (LEqual (Local0, 0x75))
            {
                RWBK (Zero, 0xD3, Zero, 0x20, CLBF)
                And (DerefOf (Index (CLBF, 0x10)), 0x3F, Local0)
                If (LEqual (Local0, 0x19))
                {
                    SVMN (Local1)
                }
                Else
                {
                    ADMN ()
                    SVMN (Local1)
                }
            }
            Else
            {
                Multiply (Local1, 0x07D0, Local1)
                MNCC (Local1, 0x37EE)
                Store (And (DerefOf (Index (CLBF, 0x05)), 0xDF), Index (
                    CLBF, 0x05))
                RWBK (Zero, 0xD2, 0x05, One, CLBF)
                Store (Or (And (ShiftLeft (NVCO, 0x05), 0xC0), MVCO
                    ), Index (CLBF, 0x0B))
                Store (And (ShiftRight (NVCO, 0x03), 0xFF), Index (CLBF, 
                    0x0C))
                RWBK (Zero, 0xD2, 0x0B, 0x02, CLBF)
                Or (And (DerefOf (Index (CLBF, 0x1C)), 0x7F), And (
                    ShiftLeft (NVCO, 0x07), 0x80), Index (CLBF, 0x1C))
                RWBK (Zero, 0xD2, 0x1C, One, CLBF)
                Store (Or (DerefOf (Index (CLBF, 0x05)), 0x20), Index (
                    CLBF, 0x05))
                RWBK (Zero, 0xD2, 0x05, One, CLBF)
            }
        }

        Method (SVMN, 1, NotSerialized)
        {
            ShiftLeft (And (Arg0, One), 0x07, Local0)
            ShiftLeft (And (Arg0, 0x06, Local1), 0x05, Local1)
            ShiftRight (Arg0, 0x03, Local2)
            RWBK (Zero, 0xD3, Zero, 0x20, CLBF)
            Store (Or (And (DerefOf (Index (CLBF, 0x14)), 0x7F), 
                Local0), Index (CLBF, 0x14))
            Store (Or (And (DerefOf (Index (CLBF, 0x10)), 0x3F), 
                Local1), Index (CLBF, 0x10))
            Store (Local2, Index (CLBF, 0x11))
            RWBK (Zero, 0xD2, 0x10, 0x05, CLBF)
        }

        Method (ADMN, 0, NotSerialized)
        {
            RWBK (Zero, 0xD3, Zero, 0x20, CLBF)
            If (LEqual (And (DerefOf (Index (CLBF, 0x10)), 0x3F), 
                0x0A))
            {
                Store (Or (DerefOf (Index (CLBF, 0x05)), 0x10), Index (
                    CLBF, 0x05))
                RWBK (Zero, 0xD2, 0x05, One, CLBF)
                Store (And (DerefOf (Index (CLBF, 0x0C)), 0x7F), Index (
                    CLBF, 0x0C))
                RWBK (Zero, 0xD2, 0x0C, One, CLBF)
                Store (And (DerefOf (Index (CLBF, 0x14)), 0x7F), Index (
                    CLBF, 0x14))
                Store (0x19, Index (CLBF, 0x10))
                Store (0x19, Index (CLBF, 0x11))
                RWBK (Zero, 0xD2, 0x10, 0x05, CLBF)
                Store (Or (DerefOf (Index (CLBF, 0x14)), 0x80), Index (
                    CLBF, 0x0C))
                RWBK (Zero, 0xD2, 0x0C, One, CLBF)
                Store (And (DerefOf (Index (CLBF, 0x05)), 0xEF), Index (
                    CLBF, 0x05))
                RWBK (Zero, 0xD2, 0x05, One, CLBF)
            }
        }

        Name (NVCO, Zero)
        Name (MVCO, Zero)
        Method (MNCC, 2, NotSerialized)
        {
            Store (Arg1, Local0)
            Store (CABS (Arg0, Arg1), Local1)
            Store (0x09, Local2)
            While (LLess (Local2, 0x3F))
            {
                Add (Divide (Multiply (Arg0, Local2), Arg1, ), 0x02, 
                    Local3)
                If (LGreater (Local3, 0x0800))
                {
                    Store (0x0800, Local3)
                }

                If (LGreater (Divide (Multiply (Arg0, Local2), Arg1, ), 
                    0x02))
                {
                    Subtract (Divide (Multiply (Arg0, Local2), Arg1, ), 0x02, 
                        Local4)
                    If (LLess (Local4, 0x02))
                    {
                        Store (0x02, Local4)
                    }
                }
                Else
                {
                    Store (0x02, Local4)
                }

                While (LLessEqual (Local4, Local3))
                {
                    Store (Divide (Multiply (Arg1, Local4), Local2, ), Local0)
                    Store (CABS (Arg0, Local0), Local5)
                    If (LLess (Local5, Local1))
                    {
                        Store ("N", Debug)
                        Store (Local4, Debug)
                        Store ("M", Debug)
                        Store (Local2, Debug)
                        Store ("Diff", Debug)
                        Store (Local5, Debug)
                        Store (Local4, NVCO)
                        Store (Local2, MVCO)
                        Store (Local5, Local1)
                        If (LLess (Local5, 0x012C))
                        {
                            Break
                        }
                    }

                    Increment (Local4)
                }

                Increment (Local2)
            }
        }

        Method (GVCO, 4, NotSerialized)
        {
            And (DerefOf (Index (CLBF, Arg2)), 0x80, Local0)
            ShiftRight (Local0, 0x07, Local0)
            And (DerefOf (Index (CLBF, Arg0)), 0xC0, Local1)
            ShiftRight (Local1, 0x05, Local1)
            And (DerefOf (Index (CLBF, Arg1)), 0xFF, Local2)
            ShiftLeft (Local2, 0x03, Local2)
            Or (Local0, Local1, Local0)
            Or (Local0, Local2, Local0)
            And (DerefOf (Index (CLBF, Arg0)), 0x3F, Local1)
            Multiply (Arg3, Local0, Local2)
            Divide (Local2, Local1, , Local3)
            Return (Local3)
        }

        Method (CABS, 2, NotSerialized)
        {
            If (LLess (Arg0, Arg1))
            {
                Return (Subtract (Arg1, Arg0))
            }
            Else
            {
                Return (Subtract (Arg0, Arg1))
            }
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (G5T2, Package (0x08)
        {
            0x05080002, 
            "AI Profile", 
            Zero, 
            Zero, 
            0x03, 
            "Race Car", 
            "Jet Plane", 
            "Rocket"
        })
        Name (GRP5, Package (0x01)
        {
            G5T2
        })
        Name (BUF0, Package (0x18)
        {
            0x03010011, 
            Ones, 
            0x03020012, 
            Ones, 
            0x03060013, 
            Ones, 
            0x03020015, 
            Ones, 
            0x03020016, 
            Ones, 
            0x03020032, 
            Ones, 
            0x03020034, 
            Ones, 
            0x03020035, 
            Ones, 
            0x03020051, 
            Ones, 
            0x03020052, 
            Ones, 
            0x03020053, 
            Ones, 
            0x03020054, 
            Ones
        })
        Name (BUF1, Package (0x18)
        {
            0x03010011, 
            Ones, 
            0x03020012, 
            Ones, 
            0x03060013, 
            Ones, 
            0x03020015, 
            Ones, 
            0x03020016, 
            Ones, 
            0x03020032, 
            Ones, 
            0x03020034, 
            Ones, 
            0x03020035, 
            Ones, 
            0x03020051, 
            Ones, 
            0x03020052, 
            Ones, 
            0x03020053, 
            Ones, 
            0x03020054, 
            Ones
        })
        Name (BUF2, Package (0x18)
        {
            0x03010011, 
            Ones, 
            0x03020012, 
            Ones, 
            0x03060013, 
            Ones, 
            0x03020015, 
            Ones, 
            0x03020016, 
            Ones, 
            0x03020032, 
            Ones, 
            0x03020034, 
            Ones, 
            0x03020035, 
            Ones, 
            0x03020051, 
            Ones, 
            0x03020052, 
            Ones, 
            0x03020053, 
            Ones, 
            0x03020054, 
            Ones
        })
        Method (MVBF, 1, NotSerialized)
        {
            Name (TTT0, Zero)
            Store (And (Arg0, 0xFFFF), TTT0)
            If (LEqual (TTT0, Zero))
            {
                Store (Zero, Local0)
                Store (0x08, Local2)
                Store (SizeOf (BUF0), Local3)
                While (LNotEqual (Local0, Local3))
                {
                    Add (Local0, One, Local1)
                    If (LNotEqual (DerefOf (Index (BUF0, Local1)), Ones))
                    {
                        STBF (DerefOf (Index (BUF0, Local0)), Local2)
                        Add (Local2, 0x04, Local2)
                        STBF (DerefOf (Index (BUF0, Local1)), Local2)
                        Add (Local2, 0x04, Local2)
                    }

                    STBF (Ones, Local2)
                    Add (Local0, 0x02, Local0)
                }
            }
            Else
            {
                If (LEqual (TTT0, One))
                {
                    Store (Zero, Local0)
                    Store (0x08, Local2)
                    Store (SizeOf (BUF1), Local3)
                    While (LNotEqual (Local0, Local3))
                    {
                        Add (Local0, One, Local1)
                        If (LNotEqual (DerefOf (Index (BUF1, Local1)), Ones))
                        {
                            STBF (DerefOf (Index (BUF1, Local0)), Local2)
                            Add (Local2, 0x04, Local2)
                            STBF (DerefOf (Index (BUF1, Local1)), Local2)
                            Add (Local2, 0x04, Local2)
                        }

                        STBF (Ones, Local2)
                        Add (Local0, 0x02, Local0)
                    }
                }
                Else
                {
                    If (LEqual (TTT0, 0x02))
                    {
                        Store (Zero, Local0)
                        Store (0x08, Local2)
                        Store (SizeOf (BUF2), Local3)
                        While (LNotEqual (Local0, Local3))
                        {
                            Add (Local0, One, Local1)
                            If (LNotEqual (DerefOf (Index (BUF2, Local1)), Ones))
                            {
                                STBF (DerefOf (Index (BUF2, Local0)), Local2)
                                Add (Local2, 0x04, Local2)
                                STBF (DerefOf (Index (BUF2, Local1)), Local2)
                                Add (Local2, 0x04, Local2)
                            }

                            STBF (Ones, Local2)
                            Add (Local0, 0x02, Local0)
                        }
                    }
                }
            }
        }

        Method (STBF, 2, NotSerialized)
        {
            Store (Arg0, Local0)
            Store (Arg1, Local1)
            Store (Zero, Local2)
            While (LNotEqual (Local2, 0x20))
            {
                Store (ShiftRight (Local0, Local2), Index (ASBF, Local1))
                Add (Local2, 0x08, Local2)
                Add (Local1, One, Local1)
            }
        }

        Method (UPBF, 1, NotSerialized)
        {
            Name (TTT0, Zero)
            Store (And (Arg0, 0xFFFF), TTT0)
            If (LEqual (TTT0, Zero))
            {
                Store (Zero, Local0)
                Store (SizeOf (BUF0), Local3)
                While (LNotEqual (Local0, Local3))
                {
                    Add (Local0, One, Local1)
                    Store (DerefOf (Index (BUF0, Local0)), Local4)
                    Store (GTBF (MOBF (Local4), Zero), Local5)
                    If (LNotEqual (Local5, Ones))
                    {
                        Store (Local5, Index (BUF0, Local1))
                    }

                    Add (Local0, 0x02, Local0)
                }
            }
            Else
            {
                If (LEqual (TTT0, One))
                {
                    Store (Zero, Local0)
                    Store (SizeOf (BUF1), Local3)
                    While (LNotEqual (Local0, Local3))
                    {
                        Add (Local0, One, Local1)
                        Store (DerefOf (Index (BUF1, Local0)), Local4)
                        Store (GTBF (MOBF (Local4), One), Local5)
                        If (LNotEqual (Local5, Ones))
                        {
                            Store (Local5, Index (BUF1, Local1))
                        }

                        Add (Local0, 0x02, Local0)
                    }
                }
                Else
                {
                    If (LEqual (TTT0, 0x02))
                    {
                        Store (Zero, Local0)
                        Store (SizeOf (BUF2), Local3)
                        While (LNotEqual (Local0, Local3))
                        {
                            Add (Local0, One, Local1)
                            Store (DerefOf (Index (BUF2, Local0)), Local4)
                            Store (GTBF (MOBF (Local4), 0x02), Local5)
                            If (LNotEqual (Local5, Ones))
                            {
                                Store (Local5, Index (BUF2, Local1))
                            }

                            Add (Local0, 0x02, Local0)
                        }
                    }
                }
            }
        }

        Method (MOBF, 1, NotSerialized)
        {
            Store (Arg0, Local0)
            And (Local0, 0xFF, Local1)
            ShiftRight (Local0, 0x18, Local2)
            ShiftLeft (Local2, 0x08, Local2)
            Add (Local1, Local2, Local1)
            Return (Local1)
        }

        Method (GIT5, 2, NotSerialized)
        {
            Name (TTT0, Zero)
            Store (And (Arg0, 0xFFFF), TTT0)
            If (LEqual (TTT0, 0x02))
            {
                UPBF (Arg1)
                MVBF (Arg1)
                Store (0x05, ASB1)
            }
            Else
            {
                Store (Zero, ASB0)
            }
        }

        Method (SIT5, 3, NotSerialized)
        {
            Store (Zero, ASB0)
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (PFLG, Zero)
        Name (LPFG, Zero)
        Name (RFLG, Zero)
        Method (CCPW, 0, NotSerialized)
        {
            If (LEqual (RFLG, Zero))
            {
                ISMI (0x91)
                Store (PAR0, Local0)
                Store (And (Local0, 0x0F), PFLG)
                Store (And (Local0, 0xF0), Local1)
                ShiftRight (Local1, 0x04, Local2)
                Store (Local2, LPFG)
                Increment (RFLG)
            }
        }

        Method (SPPH, 0, NotSerialized)
        {
            If (LNotEqual (PFLG, Zero))
            {
                WBYT (0x40, 0x1A, 0xFF)
                WBYT (0x40, 0x1C, 0xFF)
            }
        }

        Method (CPPH, 0, NotSerialized)
        {
            WBYT (0x40, 0x1A, 0xA8)
            WBYT (0x40, 0x1C, 0xAF)
        }

        Method (INTA, 0, NotSerialized)
        {
            SEPU (0x04)
        }

        Method (GPAS, 0, NotSerialized)
        {
            Store (RBYT (0x40, 0x18), Local0)
            ShiftRight (Local0, 0x06, Local0)
            Increment (Local0)
            Return (Local0)
        }

        Method (GCVI, 0, NotSerialized)
        {
            Store (RBYT (0x40, 0x0E), Local0)
            Multiply (Local0, 0x0356, Local0)
            Return (Local0)
        }

        OperationRegion (SIOX, SystemIO, 0x0300, 0x0A)
        Field (SIOX, ByteAcc, NoLock, Preserve)
        {
                    Offset (0x02), 
            SIOD,   8
        }

        Name (VERF, Zero)
        Method (GVER, 0, NotSerialized)
        {
            Store (Zero, VERF)
        }

        Name (AUTD, Buffer (0x2E)
        {
            /* 0000 */    0x01, 0x11, 0x02, 0x28, 0x03, 0xFF, 0x04, 0x83, 
            /* 0008 */    0x05, 0x83, 0x06, 0x00, 0x07, 0x00, 0x08, 0x0F, 
            /* 0010 */    0x09, 0xA5, 0x0A, 0x09, 0x0B, 0x09, 0x0C, 0x0F, 
            /* 0018 */    0x0D, 0x0F, 0x10, 0x00, 0x11, 0x00, 0x12, 0x00, 
            /* 0020 */    0x13, 0x00, 0x14, 0x00, 0x15, 0x0E, 0x1A, 0xA8, 
            /* 0028 */    0x1B, 0xA2, 0x1C, 0xAF, 0x1D, 0x80
        })
        Name (AUT2, Buffer (0x2E)
        {
            /* 0000 */    0x01, 0x11, 0x02, 0x28, 0x03, 0xFF, 0x04, 0x83, 
            /* 0008 */    0x05, 0x83, 0x06, 0x00, 0x07, 0x00, 0x08, 0x0F, 
            /* 0010 */    0x09, 0xA5, 0x0A, 0x09, 0x0B, 0x09, 0x0C, 0x0F, 
            /* 0018 */    0x0D, 0x0F, 0x10, 0x00, 0x11, 0x00, 0x12, 0x00, 
            /* 0020 */    0x13, 0x00, 0x14, 0x00, 0x15, 0x0E, 0x1A, 0xA8, 
            /* 0028 */    0x1B, 0xA2, 0x1C, 0xAF, 0x1D, 0x80
        })
        Name (PLAE, Buffer (0x24)
        {
            /* 0000 */    0x01, 0x11, 0x02, 0x28, 0x03, 0xFF, 0x08, 0xFF, 
            /* 0008 */    0x09, 0x00, 0x0A, 0x0F, 0x0B, 0x0F, 0x0C, 0x0F, 
            /* 0010 */    0x0D, 0x0F, 0x10, 0x00, 0x11, 0x00, 0x13, 0x00, 
            /* 0018 */    0x14, 0x00, 0x15, 0x0E, 0x1A, 0xA8, 0x1B, 0xA2, 
            /* 0020 */    0x1C, 0xAF, 0x1D, 0x80
        })
        Name (WALK, Buffer (0x24)
        {
            /* 0000 */    0x01, 0x11, 0x02, 0x28, 0x03, 0xFF, 0x08, 0x00, 
            /* 0008 */    0x09, 0xA5, 0x0A, 0x09, 0x0B, 0x09, 0x0C, 0x09, 
            /* 0010 */    0x0D, 0x09, 0x10, 0x00, 0x11, 0x00, 0x13, 0x00, 
            /* 0018 */    0x14, 0x00, 0x15, 0x0E, 0x1A, 0xA8, 0x1B, 0xA2, 
            /* 0020 */    0x1C, 0xAF, 0x1D, 0x80
        })
        Name (LLVT, Package (0x04)
        {
            Package (0x0C)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            }, 

            Package (0x0C)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            }, 

            Package (0x0C)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x83, 
                Zero, 
                0x83, 
                Zero, 
                0x85, 
                Zero, 
                0x85, 
                Zero
            }, 

            Package (0x0C)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x83, 
                Zero, 
                0x83, 
                Zero, 
                0x85, 
                Zero, 
                0x85, 
                Zero
            }
        })
        Method (SLLV, 2, NotSerialized)
        {
            Store (GVOT (0x02, Arg1), Local1)
            Store (GVOT (One, Arg1), Local3)
            Multiply (Local1, 0x04, Local1)
            Store (DerefOf (Index (DerefOf (Index (LLVT, Arg0)), Local1)), 
                Local1)
            Multiply (Local3, 0x04, Local3)
            Add (Local3, 0x02, Local3)
            Store (DerefOf (Index (DerefOf (Index (LLVT, Arg0)), Local3)), 
                Local3)
            WBYT (0x40, 0x04, Local1)
            WBYT (0x40, 0x05, Local1)
            WBYT (0x40, 0x06, Local1)
            WBYT (0x40, 0x07, Local1)
            WBYT (0x40, 0x12, Local3)
        }

        Method (SEPU, 1, NotSerialized)
        {
            DEPU ()
            Name (TTT0, Zero)
            Store (And (0xFF, Arg0), TTT0)
            If (LEqual (TTT0, Zero)) {}
            Else
            {
                If (LEqual (TTT0, One))
                {
                    Store (SizeOf (PLAE), Local0)
                    Store (Zero, Local1)
                    While (LLess (Local1, Local0))
                    {
                        Add (Local1, One, Local2)
                        WBYT (0x40, DerefOf (Index (PLAE, Local1)), DerefOf (Index (PLAE, 
                            Local2)))
                        Add (Local1, 0x02, Local1)
                    }

                    If (LEqual (PFLG, 0x02))
                    {
                        SLLV (One, 0x02)
                    }
                    Else
                    {
                        SLLV (Zero, 0x02)
                    }
                }
                Else
                {
                    If (LEqual (TTT0, 0x03))
                    {
                        Store (SizeOf (WALK), Local0)
                        Store (Zero, Local1)
                        While (LLess (Local1, Local0))
                        {
                            Add (Local1, One, Local2)
                            WBYT (0x40, DerefOf (Index (WALK, Local1)), DerefOf (Index (WALK, 
                                Local2)))
                            Add (Local1, 0x02, Local1)
                        }

                        If (LEqual (PFLG, 0x02))
                        {
                            SLLV (0x03, 0x03)
                        }
                        Else
                        {
                            SLLV (0x02, 0x03)
                        }

                        SPPH ()
                    }
                    Else
                    {
                        If (LEqual (TTT0, 0x04))
                        {
                            If (LEqual (PFLG, 0x02))
                            {
                                Store (SizeOf (AUT2), Local0)
                                Store (Zero, Local1)
                                While (LLess (Local1, Local0))
                                {
                                    Add (Local1, One, Local2)
                                    WBYT (0x40, DerefOf (Index (AUT2, Local1)), DerefOf (Index (AUT2, 
                                        Local2)))
                                    Add (Local1, 0x02, Local1)
                                }
                            }
                            Else
                            {
                                Store (SizeOf (AUTD), Local0)
                                Store (Zero, Local1)
                                While (LLess (Local1, Local0))
                                {
                                    Add (Local1, One, Local2)
                                    WBYT (0x40, DerefOf (Index (AUTD, Local1)), DerefOf (Index (AUTD, 
                                        Local2)))
                                    Add (Local1, 0x02, Local1)
                                }
                            }
                        }
                    }
                }
            }

            EEPU ()
        }

        Method (DEPU, 0, NotSerialized)
        {
            WBYT (0x40, 0x19, Zero)
        }

        Method (EEPU, 0, NotSerialized)
        {
            WBYT (0x40, 0x19, 0xFB)
        }

        Method (PCSU, 0, NotSerialized)
        {
            Store (RBYT (0x40, 0x0E), Local0)
            Store (RBYT (0x40, 0x0F), Local1)
            Store (RBYT (0x40, 0x16), Local2)
            Store (RBYT (0x40, 0x17), Local3)
            Store (GVTG (Local1), Local1)
            Multiply (Local0, 0x0356, Local0)
            Multiply (Local0, Local1, Local4)
            Store (GVTG (Local3), Local3)
            If (LGreater (Local2, 0x18))
            {
                Store (Subtract (Local2, 0x18), Local2)
            }
            Else
            {
                Store (Zero, Local2)
            }

            Multiply (Local2, 0xFA, Local2)
            Multiply (Local2, Local3, Local2)
            Store (Add (Local4, Local2), Local0)
            Divide (Local0, 0x03E8, Local1, Local0)
            Return (Local0)
        }

        Method (GVTG, 1, NotSerialized)
        {
            Store (Arg0, Local0)
            Store (And (Local0, 0x7F), Local0)
            If (LLess (Local0, 0x7C))
            {
                Multiply (Local0, 0x19, Local0)
                Subtract (0x0C1C, Local0, Local0)
                Divide (Local0, 0x02, Local1, Local0)
                Return (Local0)
            }
            Else
            {
                Return (Zero)
            }
        }

        OperationRegion (SMRG, SystemIO, 0x0B00, 0x30)
        Field (SMRG, ByteAcc, NoLock, Preserve)
        {
            HSTS,   8, 
            SSTS,   8, 
            HSTC,   8, 
            HCMD,   8, 
            HADR,   8, 
            HDT0,   8, 
            HDT1,   8, 
            BLKD,   8
        }

        Field (SMRG, ByteAcc, NoLock, Preserve)
        {
                    Offset (0x05), 
            HDTW,   16
        }

        Method (ASCM, 4, Serialized)
        {
            Store (SMBU, Local5)
            While (Not (LEqual (And (Local5, One), Zero)))
            {
                Sleep (0x0A)
                Store (SMBU, Local5)
            }

            Store (One, SMBU)
            Store (0x05, Local0)
            While (Decrement (Local0))
            {
                Store (Arg1, HCMD)
                Stall (0x0A)
                Store (Arg0, HADR)
                Stall (0x0A)
                And (Arg0, One, Local2)
                Store (Arg3, HSTC)
                Stall (0x0A)
                Store (Arg2, HDT0)
                Stall (0x0A)
                Store (0x1E, HSTS)
                Stall (0x0A)
                While (LAnd (And (HSTS, One), One))
                {
                    Store (0x1E, HSTS)
                    Stall (0x0A)
                }

                Or (HSTC, 0x40, HSTC)
                Stall (0x0A)
                Store (0xFFFF, Local1)
                While (LEqual (And (HSTS, One), One))
                {
                    Stall (0x14)
                }

                If (And (HSTS, 0x1C))
                {
                    Store (Zero, SMBU)
                    Return (Ones)
                }

                If (Local2)
                {
                    Store (Zero, SMBU)
                    Return (HDT0)
                }
            }

            Store (Zero, SMBU)
            Return (Ones)
        }

        Method (WBYT, 3, NotSerialized)
        {
            ASCM (Arg0, Arg1, Arg2, 0x08)
        }

        Method (RBYT, 2, NotSerialized)
        {
            Or (Arg0, One, Arg0)
            Return (And (ASCM (Arg0, Arg1, Zero, 0x08), 0xFF))
        }
    }

    Method (NB2S, 1, NotSerialized)
    {
    }

    Method (NB2W, 1, NotSerialized)
    {
    }

    Method (NPTS, 1, NotSerialized)
    {
    }

    Method (NWAK, 1, NotSerialized)
    {
    }

    Scope (_SB.PCI0.SBRG.SIOR)
    {
        Method (HWV0, 0, NotSerialized)
        {
            Return (Multiply (VIV0, 0x0C))
        }

        Method (HWV1, 0, NotSerialized)
        {
            Return (Multiply (VIV1, 0x0C))
        }

        Method (HWV2, 0, NotSerialized)
        {
            Return (Multiply (VIV2, 0x0C))
        }

        Method (HWV3, 0, NotSerialized)
        {
            Return (Multiply (VIV3, 0x0C))
        }

        Method (HWV4, 0, NotSerialized)
        {
            Return (Multiply (VIV4, 0x0C))
        }

        Method (HWV5, 0, NotSerialized)
        {
            Return (Multiply (VIV5, 0x0C))
        }

        Method (HWV6, 0, NotSerialized)
        {
            Return (Multiply (VIV6, 0x0C))
        }

        Method (HWV7, 0, NotSerialized)
        {
            Return (Multiply (VIV7, 0x0C))
        }

        Method (HWT1, 0, NotSerialized)
        {
            Store (TPI1, Local0)
            If (LGreater (Local0, 0x80))
            {
                Subtract (0x0100, Local0, Local0)
            }

            Add (Local0, T1OF, Local0)
            Return (Multiply (Local0, 0x0A))
        }

        Method (HWT2, 0, NotSerialized)
        {
            Store (TPI2, Local0)
            If (LGreater (Local0, 0x80))
            {
                Subtract (0x0100, Local0, Local0)
            }

            Add (Local0, T2OF, Local0)
            Return (Multiply (Local0, 0x0A))
        }

        Method (HWT3, 0, NotSerialized)
        {
            Store (TPI3, Local0)
            If (LGreater (Local0, 0x80))
            {
                Subtract (0x0100, Local0, Local0)
            }

            Add (Local0, T3OF, Local0)
            Return (Multiply (Local0, 0x0A))
        }

        Method (HWF1, 0, NotSerialized)
        {
            Or (ShiftLeft (EFN1, 0x08), FTC1, Local0)
            Return (CF16 (Local0))
        }

        Method (HWF2, 0, NotSerialized)
        {
            Or (ShiftLeft (EFN2, 0x08), FTC2, Local0)
            Return (CF16 (Local0))
        }

        Method (HWF3, 0, NotSerialized)
        {
            Or (ShiftLeft (EFN3, 0x08), FTC3, Local0)
            Return (CF16 (Local0))
        }

        Method (HWF4, 0, NotSerialized)
        {
            Or (ShiftLeft (EFN4, 0x08), FTC4, Local0)
            Return (CF16 (Local0))
        }

        Method (HWF5, 0, NotSerialized)
        {
            Or (ShiftLeft (EFN5, 0x08), FTC5, Local0)
            Return (CF16 (Local0))
        }

        Method (CF08, 2, NotSerialized)
        {
            If (LOr (LEqual (Arg0, Zero), LEqual (Arg0, 0xFF)))
            {
                Return (Zero)
            }

            Divide (FTFR, Multiply (Arg0, Arg1), , Local0)
            Return (Local0)
        }

        Method (CF16, 1, NotSerialized)
        {
            If (LOr (LEqual (Arg0, Zero), LEqual (Arg0, 0xFFFF)))
            {
                Return (Zero)
            }

            Divide (FTFR, Multiply (Arg0, 0x02), , Local0)
            Return (Local0)
        }

        Name (FTFR, 0x00149970)
        Name (FHMT, 0x78)
        Name (FHM3, 0x3C)
        Name (FLMT, 0xFE)
        Name (DTB1, Package (0x08)
        {
            One, 
            0x02, 
            0x04, 
            0x08, 
            0x10, 
            0x20, 
            0x40, 
            0x80
        })
        Name (DTB2, Package (0x02)
        {
            0x02, 
            0x08
        })
        OperationRegion (ECRE, SystemIO, IOEB, 0x20)
        Field (ECRE, ByteAcc, NoLock, Preserve)
        {
                    Offset (0x05), 
            HIDX,   8, 
            HDAT,   8
        }

        IndexField (HIDX, HDAT, ByteAcc, NoLock, Preserve)
        {
                    Offset (0x0D), 
            FTC1,   8, 
            FTC2,   8, 
            FTC3,   8, 
                    Offset (0x18), 
            EFN1,   8, 
            EFN2,   8, 
            EFN3,   8, 
                    Offset (0x20), 
            VIV0,   8, 
            VIV1,   8, 
            VIV2,   8, 
            VIV3,   8, 
            VIV4,   8, 
            VIV5,   8, 
            VIV6,   8, 
            VIV7,   8, 
                    Offset (0x29), 
            TPI1,   8, 
            TPI2,   8, 
            TPI3,   8, 
                    Offset (0x80), 
            FTC4,   8, 
            EFN4,   8, 
            FTC5,   8, 
            EFN5,   8
        }
    }

    Scope (\)
    {
        Field (RAMW, ByteAcc, NoLock, Preserve)
        {
                    Offset (0x20), 
            CPUQ,   8, 
            CPVL,   16, 
            CPVH,   16, 
            CPVC,   1
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (CORV, Package (0x05)
        {
            0x06020000, 
            "Vcore Voltage", 
            0x0352, 
            0x0640, 
            One
        })
        Name (V3VV, Package (0x05)
        {
            0x06020001, 
            " +3.3 Voltage", 
            0x0B9A, 
            0x0E2E, 
            One
        })
        Name (V5VV, Package (0x05)
        {
            0x06020002, 
            " +5 Voltage", 
            0x1194, 
            0x157C, 
            One
        })
        Name (VV12, Package (0x05)
        {
            0x06020003, 
            " +12 Voltage", 
            0x27D8, 
            0x35E8, 
            One
        })
        Name (VPAR, Package (0x04)
        {
            Package (0x03)
            {
                Zero, 
                One, 
                Zero
            }, 

            Package (0x03)
            {
                0x0289, 
                0x03E8, 
                Zero
            }, 

            Package (0x03)
            {
                0x0F, 
                0x0A, 
                Zero
            }, 

            Package (0x03)
            {
                0x0176, 
                0x52, 
                Zero
            }
        })
        Name (VBUF, Package (0x05)
        {
            0x04, 
            CORV, 
            V3VV, 
            V5VV, 
            VV12
        })
        Method (VGET, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Return (^^SIOR.HWV0 ())
            }

            If (LEqual (Arg0, One))
            {
                Return (^^SIOR.HWV4 ())
            }

            If (LEqual (Arg0, 0x02))
            {
                Return (^^SIOR.HWV3 ())
            }

            If (LEqual (Arg0, 0x03))
            {
                Return (^^SIOR.HWV2 ())
            }
        }

        Name (CPUT, Package (0x05)
        {
            0x06030000, 
            "CPU Temperature", 
            0x0258, 
            0x03B6, 
            0x00010001
        })
        Name (MBTP, Package (0x05)
        {
            0x06030001, 
            "MB Temperature", 
            0x01C2, 
            0x02EE, 
            0x00010001
        })
        Name (TBUF, Package (0x03)
        {
            0x02, 
            CPUT, 
            MBTP
        })
        Method (TGET, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Return (^^SIOR.HWT1 ())
            }

            If (LEqual (Arg0, One))
            {
                Return (^^SIOR.HWT2 ())
            }
        }

        Name (CPUF, Package (0x05)
        {
            0x06040000, 
            "CPU FAN Speed", 
            0x0258, 
            0x1C20, 
            0x00010001
        })
        Name (CHAF, Package (0x05)
        {
            0x06040001, 
            "CHASSIS FAN Speed", 
            0x0258, 
            0x1C20, 
            0x00010001
        })
        Name (FBUF, Package (0x03)
        {
            0x02, 
            CPUF, 
            CHAF
        })
        Method (FGET, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Return (^^SIOR.HWF1 ())
            }

            If (LEqual (Arg0, One))
            {
                Return (^^SIOR.HWF1 ())
            }
        }

        Name (QCFN, Package (0x06)
        {
            0x04070010, 
            "Q-Fan Control", 
            Zero, 
            One, 
            0x02, 
            0x00010000
        })
        Name (QBUF, Package (0x02)
        {
            One, 
            QCFN
        })
        Method (VSIF, 0, NotSerialized)
        {
            Return (VBUF)
        }

        Method (RVLT, 1, NotSerialized)
        {
            And (Arg0, 0xFFFF, Local0)
            Store (VGET (Local0), Local1)
            Store (DerefOf (Index (DerefOf (Index (VPAR, Local0)), Zero)), 
                Local2)
            Store (DerefOf (Index (DerefOf (Index (VPAR, Local0)), One)), 
                Local3)
            Store (DerefOf (Index (DerefOf (Index (VPAR, Local0)), 0x02)), 
                Local4)
            Multiply (Local1, Add (Local2, Local3), Local5)
            Divide (Local5, Local3, , Local5)
            Add (Local5, Local4, Local5)
            Return (Local5)
        }

        Method (SVLT, 1, NotSerialized)
        {
            And (DerefOf (Index (Arg0, Zero)), 0xFFFF, Local0)
            Store (DerefOf (Index (VBUF, Zero)), Local1)
            If (LGreaterEqual (Local0, Local1))
            {
                Return (Zero)
            }

            Increment (Local0)
            Store (DerefOf (Index (Arg0, One)), Index (DerefOf (Index (VBUF, 
                Local0)), One))
            Store (DerefOf (Index (Arg0, 0x02)), Index (DerefOf (Index (VBUF, 
                Local0)), 0x02))
            Store (DerefOf (Index (Arg0, 0x03)), Index (DerefOf (Index (VBUF, 
                Local0)), 0x03))
            Store (DerefOf (Index (Arg0, 0x04)), Index (DerefOf (Index (VBUF, 
                Local0)), 0x04))
            Return (One)
        }

        Method (TSIF, 0, NotSerialized)
        {
            Return (TBUF)
        }

        Method (RTMP, 1, NotSerialized)
        {
            And (Arg0, 0xFFFF, Local0)
            Store (TGET (Local0), Local1)
            Return (Local1)
        }

        Method (STMP, 1, NotSerialized)
        {
            Store (And (DerefOf (Index (Arg0, Zero)), 0xFFFF), Local0)
            Store (DerefOf (Index (TBUF, Zero)), Local1)
            If (LGreaterEqual (Local0, Local1))
            {
                Return (Zero)
            }

            Increment (Local0)
            Store (DerefOf (Index (Arg0, One)), Index (DerefOf (Index (TBUF, 
                Local0)), One))
            Store (DerefOf (Index (Arg0, 0x02)), Index (DerefOf (Index (TBUF, 
                Local0)), 0x02))
            Store (DerefOf (Index (Arg0, 0x03)), Index (DerefOf (Index (TBUF, 
                Local0)), 0x03))
            Store (DerefOf (Index (Arg0, 0x04)), Index (DerefOf (Index (TBUF, 
                Local0)), 0x04))
            Return (One)
        }

        Method (FSIF, 0, NotSerialized)
        {
            Return (FBUF)
        }

        Method (RFAN, 1, NotSerialized)
        {
            And (Arg0, 0xFFFF, Local0)
            Store (FGET (Local0), Local1)
            Return (Local1)
        }

        Method (SFAN, 1, NotSerialized)
        {
            And (DerefOf (Index (Arg0, Zero)), 0xFFFF, Local0)
            Store (DerefOf (Index (FBUF, Zero)), Local1)
            If (LGreaterEqual (Local0, Local1))
            {
                Return (Zero)
            }

            Increment (Local0)
            Store (DerefOf (Index (Arg0, One)), Index (DerefOf (Index (FBUF, 
                Local0)), One))
            Store (DerefOf (Index (Arg0, 0x02)), Index (DerefOf (Index (FBUF, 
                Local0)), 0x02))
            Store (DerefOf (Index (Arg0, 0x03)), Index (DerefOf (Index (FBUF, 
                Local0)), 0x03))
            Store (DerefOf (Index (Arg0, 0x04)), Index (DerefOf (Index (FBUF, 
                Local0)), 0x04))
            Return (One)
        }

        Method (QFIF, 0, NotSerialized)
        {
            If (LEqual (CPUQ, Zero))
            {
                And (DerefOf (Index (QCFN, 0x05)), 0xFFFDFFFF, Local0)
                Store (Local0, Index (QCFN, 0x05))
            }
            Else
            {
                Or (DerefOf (Index (QCFN, 0x05)), 0x00020000, Local0)
                Store (Local0, Index (QCFN, 0x05))
            }

            Return (QBUF)
        }

        Method (GCQV, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Return (CPVL)
            }

            If (LEqual (Arg0, One))
            {
                Return (CPVH)
            }

            If (LEqual (Arg0, 0x02))
            {
                Return (CPVC)
            }

            Return (Zero)
        }

        Method (QFST, 1, NotSerialized)
        {
            If (LEqual (Arg0, DerefOf (Index (QCFN, Zero))))
            {
                Return (CQST)
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.SBRG)
    {
        Method (SIAS, 1, NotSerialized)
        {
            If (LEqual (Arg0, 0x03))
            {
                ENFG (0x04)
                And (OPF9, 0x7F, OPF9)
                EXFG ()
            }
        }
    }

    Scope (_SB)
    {
        Scope (PCI0)
        {
            Name (CRS, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, )
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0CF8,             // Length
                    ,, , TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    ,, , TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, _Y21, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y22, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y23, AddressRangeMemory, TypeStatic)
            })
            CreateDWordField (CRS, \_SB.PCI0._Y21._MIN, MIN5)
            CreateDWordField (CRS, \_SB.PCI0._Y21._MAX, MAX5)
            CreateDWordField (CRS, \_SB.PCI0._Y21._LEN, LEN5)
            CreateDWordField (CRS, \_SB.PCI0._Y22._MIN, MIN6)
            CreateDWordField (CRS, \_SB.PCI0._Y22._MAX, MAX6)
            CreateDWordField (CRS, \_SB.PCI0._Y22._LEN, LEN6)
            CreateDWordField (CRS, \_SB.PCI0._Y23._MIN, MIN7)
            CreateDWordField (CRS, \_SB.PCI0._Y23._MAX, MAX7)
            CreateDWordField (CRS, \_SB.PCI0._Y23._LEN, LEN7)
            Method (_CRS, 0, NotSerialized)
            {
                Store (MG1L, Local0)
                If (Local0)
                {
                    Store (MG1B, MIN5)
                    Store (MG1L, LEN5)
                    Add (MIN5, Decrement (Local0), MAX5)
                }

                Store (MG2B, MIN6)
                Store (MG2L, LEN6)
                Store (MG2L, Local0)
                Add (MIN6, Decrement (Local0), MAX6)
                Store (MG3B, MIN7)
                Store (MG3L, LEN7)
                Store (MG3L, Local0)
                Add (MIN7, Decrement (Local0), MAX7)
                Return (CRS)
            }
        }
    }

    Name (WOTB, Zero)
    Name (WSSB, Zero)
    Name (WAXB, Zero)
    Method (_PTS, 1, NotSerialized)
    {
        Store (Arg0, DBG8)
        PTS (Arg0)
        Store (Zero, Index (WAKP, Zero))
        Store (Zero, Index (WAKP, One))
        If (LAnd (LEqual (Arg0, 0x04), LEqual (OSFL (), 0x02)))
        {
            Sleep (0x0BB8)
        }

        Store (ASSB, WSSB)
        Store (AOTB, WOTB)
        Store (AAXB, WAXB)
        Store (Arg0, ASSB)
        Store (OSFL (), AOTB)
        Store (OSYS (), OSTP)
        Store (Zero, AAXB)
    }

    Method (_WAK, 1, NotSerialized)
    {
        ShiftLeft (Arg0, 0x04, DBG8)
        WAK (Arg0)
        If (IOWK) {}
        Else
        {
            Notify (\_SB.PWRB, 0x02)
        }

        If (ASSB)
        {
            Store (WSSB, ASSB)
            Store (WOTB, AOTB)
            Store (WAXB, AAXB)
        }

        If (DerefOf (Index (WAKP, Zero)))
        {
            Store (Zero, Index (WAKP, One))
        }
        Else
        {
            Store (Arg0, Index (WAKP, One))
        }

        Return (WAKP)
    }

    OperationRegion (IORK, SystemIO, 0xB1, One)
    Field (IORK, ByteAcc, NoLock, Preserve)
    {
        IOWK,   8
    }

    Scope (_SB.PCI0)
    {
        Method (_INI, 0, NotSerialized)
        {
            Store (0x10, OSTY)
            If (CondRefOf (_OSI, Local1))
            {
                If (_OSI ("Windows 2000"))
                {
                    Store (0x12, OSTY)
                }

                If (_OSI ("Windows 2001"))
                {
                    Store (0x13, OSTY)
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    Store (0x13, OSTY)
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    Store (0x13, OSTY)
                }

                If (_OSI ("Windows 2001.1"))
                {
                    Store (0x14, OSTY)
                }

                If (_OSI ("Windows 2001.1 SP1"))
                {
                    Store (0x14, OSTY)
                }

                If (_OSI ("Windows 2006"))
                {
                    Store (0x15, OSTY)
                }
            }
            Else
            {
                If (MCTH (_OS, "Microsoft Windows NT"))
                {
                    Store (0x12, Local0)
                }
                Else
                {
                    If (MCTH (_OS, "Microsoft WindowsME: Millennium Edition"))
                    {
                        Store (0x11, OSTY)
                    }

                    If (MCTH (_OS, "Linux"))
                    {
                        Store (One, OSTY)
                    }
                }
            }

            If (LGreaterEqual (OSTY, 0x0F))
            {
                Store (One, PWDE)
                Store (Zero, DPPF)
            }
        }
    }

    Scope (\)
    {
        OperationRegion (SOR1, SystemIO, SBA1, 0x10)
        Field (SOR1, ByteAcc, NoLock, Preserve)
        {
            SMSA,   8, 
            SSSA,   8, 
            SBCA,   8, 
            SHCA,   8, 
            SBAA,   8, 
            SD0A,   8, 
            SD1A,   8, 
            SBDA,   8, 
            SSCA,   8, 
            SMCA,   8, 
            SSEA,   16, 
            SSDA,   16, 
            SMTA,   8
        }

        OperationRegion (SOR2, SystemIO, SBA2, 0x10)
        Field (SOR2, ByteAcc, NoLock, Preserve)
        {
            SMSB,   8, 
            SSSB,   8, 
            SBCB,   8, 
            SHCB,   8, 
            SBAB,   8, 
            SD0B,   8, 
            SD1B,   8, 
            SBDB,   8, 
            SSCB,   8, 
            SMCB,   8, 
            SSEB,   16, 
            SSDB,   16, 
            SMTB,   8
        }

        Mutex (MSMB, 0x00)
        Name (SMBF, Zero)
        Name (SM00, Zero)
        Method (ISMB, 0, NotSerialized)
        {
            And (SM00, 0xFFFE, Local0)
            If (LNotEqual (Local0, SBA1))
            {
                Store (SM00, SMBF)
            }
        }

        Method (CSMB, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                If (SMBF)
                {
                    Add (SBA1, One, Local0)
                    Store (Local0, SM00)
                }

                Store (SMBU, Local0)
                While (Local0)
                {
                    Store (SMBU, Local0)
                }

                Store (One, SMBU)
            }
            Else
            {
                If (SMBF)
                {
                    Store (SMBF, SM00)
                }

                Store (Zero, SMBU)
            }
        }

        Method (RWBK, 5, NotSerialized)
        {
            Acquire (MSMB, 0xFFFF)
            If (LEqual (Arg0, Zero))
            {
                Store (SMSA, Local0)
                And (Local0, Zero, Local0)
                Or (Local0, 0xFF, Local0)
                Store (Local0, SMSA)
                Sleep (0x02)
                Store (SBAA, Local0)
                And (Local0, Zero, Local0)
                Or (Local0, Arg1, Local0)
                Store (Local0, SBAA)
                Sleep (0x02)
                Store (SHCA, Local0)
                And (Local0, Zero, Local0)
                Or (Local0, Arg2, Local0)
                Store (Local0, SHCA)
                Sleep (0x02)
                Store (SBCA, Local0)
                And (Local0, Zero, Local0)
                Or (Local0, 0x14, Local0)
                Store (Local0, SBCA)
                Sleep (0x02)
                Store (SD0A, Local0)
                And (Local0, Zero, Local0)
                Or (Local0, Arg3, Local0)
                Store (Local0, SD0A)
                Sleep (0x02)
                And (Arg1, One, Local1)
                If (LEqual (Local1, Zero))
                {
                    Store (Arg3, Local2)
                    Store (Arg2, Local3)
                    While (Local2)
                    {
                        Store (DerefOf (Index (Arg4, Local3)), Local4)
                        Store (Local4, SBDA)
                        Sleep (0x02)
                        Decrement (Local2)
                        Increment (Local3)
                    }
                }

                Store (SBCA, Local0)
                And (Local0, Zero, Local0)
                Or (Local0, 0x54, Local0)
                Store (Local0, SBCA)
                Sleep (0x02)
                Store (SMSA, Local1)
                While (LNot (And (Local1, One)))
                {
                    Store (SMSA, Local1)
                    If (And (Local1, 0x1C))
                    {
                        Release (MSMB)
                        Return (One)
                    }

                    If (And (Local1, 0x02))
                    {
                        Break
                    }

                    Sleep (0x02)
                }

                Store (SMSA, Local1)
                While (And (Local1, One))
                {
                    Store (SMSA, Local1)
                    Sleep (0x02)
                }

                And (Arg1, One, Local1)
                If (Local1)
                {
                    Store (Arg2, Local1)
                    Store (Arg3, Local2)
                    While (Local2)
                    {
                        Store (SBDA, Index (Arg4, Local1))
                        Sleep (0x02)
                        Increment (Local1)
                        Decrement (Local2)
                    }
                }
            }

            If (LEqual (Arg0, One)) {}
            Release (MSMB)
            Return (Zero)
        }

        Name (BTBF, Zero)
        Method (RWBT, 4, NotSerialized)
        {
            Acquire (MSMB, 0xFFFF)
            CSMB (Zero)
            If (LEqual (Arg0, Zero))
            {
                Store (SMSA, SMSA)
                Sleep (0x02)
                Store (Arg1, SBAA)
                Sleep (0x02)
                Store (Arg2, SHCA)
                Sleep (0x02)
                And (Arg1, One, Local1)
                If (LEqual (Local1, Zero))
                {
                    Store (Arg3, SD0A)
                }

                Store (0x48, SBCA)
                Sleep (0x02)
                Store (SMSA, Local1)
                While (LNot (And (Local1, One)))
                {
                    Store (SMSA, Local1)
                    If (And (Local1, 0x1C))
                    {
                        CSMB (One)
                        Release (MSMB)
                        Return (0xFF)
                    }

                    If (And (Local1, 0x02))
                    {
                        Break
                    }

                    Sleep (0x02)
                }

                Store (SMSA, Local1)
                While (And (Local1, One))
                {
                    Store (SMSA, Local1)
                    Sleep (0x02)
                }

                Store (SD0A, Arg3)
            }

            If (LEqual (Arg0, One)) {}
            CSMB (One)
            Release (MSMB)
            Return (Arg3)
        }

        Name (SMBV, Buffer (One)
        {
            0x00
        })
        Method (RWSM, 4, NotSerialized)
        {
            Store (SMBU, Local5)
            While (Not (LEqual (And (Local5, Add (Arg0, One)), 
                Zero)))
            {
                Sleep (0x0A)
                Store (SMBU, Local5)
            }

            Store (Add (Arg0, One), SMBU)
            If (LEqual (Arg0, Zero))
            {
                Store (SHCA, Local0)
                And (Local0, Zero, Local0)
                Or (Local0, Arg2, Local0)
                Store (Local0, SHCA)
                Sleep (0x02)
                Store (SBAA, Local0)
                And (Local0, Zero, Local0)
                Or (Local0, Arg1, Local0)
                Store (Local0, SBAA)
                Sleep (0x02)
                Store (SBCA, Local0)
                And (Local0, Zero, Local0)
                Or (Local0, 0x08, Local0)
                Store (Local0, SBCA)
                Sleep (0x02)
                And (Arg1, One, Local1)
                If (LEqual (Local1, Zero))
                {
                    Store (SD0A, Local0)
                    And (Local0, Zero, Local0)
                    Or (Local0, DerefOf (Index (Arg3, Zero)), Local0)
                    Store (Local0, SD0A)
                    Sleep (0x02)
                }

                Store (SMSA, Local0)
                And (Local0, Zero, Local0)
                Or (Local0, 0x1E, Local0)
                Store (Local0, SMSA)
                Sleep (0x02)
                Store (SMSA, Local1)
                While (And (Local1, One))
                {
                    Store (SMSA, Local1)
                    Sleep (0x02)
                }

                Store (SBCA, Local1)
                Sleep (0x02)
                Or (Local1, 0x40, Local0)
                Store (Local0, SBCA)
                Sleep (0x02)
                Store (SMSA, Local1)
                Sleep (0x02)
                If (And (Local1, 0x1C))
                {
                    Store (Zero, SMBU)
                    Return (One)
                }

                While (And (Local1, One))
                {
                    Store (SMSA, Local1)
                    Sleep (0x02)
                    If (And (Local1, 0x1C))
                    {
                        Store (Zero, SMBU)
                        Return (One)
                    }
                }

                And (Arg1, One, Local1)
                If (Local1)
                {
                    Store (SD0A, Index (Arg3, Zero))
                    Sleep (0x02)
                }
            }

            If (LEqual (Arg0, One))
            {
                Store (SHCB, Local0)
                And (Local0, Zero, Local0)
                Or (Local0, Arg2, Local0)
                Store (Local0, SHCB)
                Sleep (0x02)
                Store (SBAB, Local0)
                And (Local0, Zero, Local0)
                Or (Local0, Arg1, Local0)
                Store (Local0, SBAB)
                Sleep (0x02)
                Store (SBCB, Local0)
                And (Local0, Zero, Local0)
                Or (Local0, 0x08, Local0)
                Store (Local0, SBCB)
                Sleep (0x02)
                And (Arg1, One, Local1)
                If (LEqual (Local1, Zero))
                {
                    Store (SD0B, Local0)
                    And (Local0, Zero, Local0)
                    Or (Local0, DerefOf (Index (Arg3, Zero)), Local0)
                    Store (Local0, SD0B)
                    Sleep (0x02)
                }

                Store (SMSB, Local0)
                And (Local0, Zero, Local0)
                Or (Local0, 0x1E, Local0)
                Store (Local0, SMSB)
                Sleep (0x02)
                Store (SMSB, Local1)
                While (And (Local1, One))
                {
                    Store (SMSB, Local1)
                    Sleep (0x02)
                }

                Store (SBCB, Local1)
                Sleep (0x02)
                Or (Local1, 0x40, Local0)
                Store (Local0, SBCB)
                Sleep (0x02)
                Store (SMSB, Local1)
                Sleep (0x02)
                If (And (Local1, 0x1C))
                {
                    Store (Zero, SMBU)
                    Return (One)
                }

                While (And (Local1, One))
                {
                    Store (SMSB, Local1)
                    Sleep (0x02)
                    If (And (Local1, 0x1C))
                    {
                        Store (Zero, SMBU)
                        Return (One)
                    }
                }

                And (Arg1, One, Local1)
                If (Local1)
                {
                    Store (SD0B, Index (Arg3, Zero))
                    Sleep (0x02)
                }
            }

            Store (Zero, SMBU)
            Return (Zero)
        }

        OperationRegion (IOOR, SystemIO, SIOP, 0x02)
        Field (IOOR, ByteAcc, NoLock, Preserve)
        {
            IOID,   8, 
            IODT,   8
        }

        OperationRegion (GBOR, SystemIO, GIOB, 0x08)
        Field (GBOR, ByteAcc, NoLock, Preserve)
        {
                    Offset (0x06), 
            GP70,   1, 
            GP71,   1, 
            GP72,   1, 
            GP73,   1, 
            GP74,   1, 
            GP75,   1, 
            GP76,   1, 
            GP77,   1, 
            GP80,   1, 
            GP81,   1, 
            GP82,   1, 
            GP83,   1, 
            GP84,   1, 
            GP85,   1, 
            GP86,   1, 
            GP87,   1
        }

        Method (RSIO, 1, NotSerialized)
        {
            Store (Arg0, IOID)
            Return (IODT)
        }

        Method (WSIO, 2, NotSerialized)
        {
            Store (Arg0, IOID)
            Store (Arg1, IODT)
        }

        Method (RWIO, 3, NotSerialized)
        {
            WSIO (Arg0, Or (And (RSIO (Arg0), Arg1), Arg2))
        }

        Name (IPSW, Package (0x02)
        {
            Package (0x04)
            {
                0x87, 
                One, 
                0x55, 
                0x55
            }, 

            Package (0x04)
            {
                0x87, 
                One, 
                0x55, 
                0xAA
            }
        })
        Method (SLDN, 1, NotSerialized)
        {
            Store (Zero, Local1)
            If (LEqual (SIOP, 0x2E))
            {
                Store (Zero, Local1)
            }

            If (LEqual (SIOP, 0x4E))
            {
                Store (One, Local1)
            }

            Store (Zero, Local0)
            While (LNotEqual (Local0, 0x04))
            {
                Store (DerefOf (Index (DerefOf (Index (IPSW, Local1)), Local0)), 
                    IOID)
                Increment (Local0)
            }

            WSIO (0x07, Arg0)
        }

        Method (APTS, 1, NotSerialized)
        {
            \AOD.APTS (Arg0)
        }

        Method (AWAK, 1, NotSerialized)
        {
            \AOD.AWAK (Arg0)
        }

        Device (AOD)
        {
            Name (DBG, Zero)
            Name (GDBG, One)
            Name (CDBG, Zero)
            Name (VDBG, Zero)
            Name (RDBG, Zero)
            Name (OBID, Package (0x1C)
            {
                0x09, 
                0x01010000, 
                0x01020000, 
                0x02010000, 
                Zero, 
                0x02030000, 
                0x02040000, 
                Zero, 
                Zero, 
                Zero, 
                One, 
                One, 
                One, 
                0xFF, 
                One, 
                One, 
                0xFF, 
                0xFF, 
                0xFF, 
                "CPU Clock", 
                "PCIE Clock", 
                "DRAM Voltage", 
                "", 
                "HT Voltage", 
                "GPU Voltage", 
                "", 
                "", 
                ""
            })
            Name (OBIT, Package (0x1F)
            {
                0x01010000, 
                0x000186A0, 
                0x00061A80, 
                Zero, 
                0x03E8, 
                Zero, 
                0x01020000, 
                0x1388, 
                0x0003D090, 
                Zero, 
                0x03E8, 
                Zero, 
                0x02010000, 
                0x00020F58, 
                0x00035D54, 
                Zero, 
                0x05DC, 
                Zero, 
                0x02030000, 
                0x0001D4C0, 
                0x00021B10, 
                Zero, 
                0x05DC, 
                Zero, 
                0x02040000, 
                0x0001ADB0, 
                0x000251C0, 
                Zero, 
                0x05DC, 
                Zero, 
                Zero
            })
            Name (OBDT, Package (0x01)
            {
                Zero
            })
            Method (BM01, 0, NotSerialized)
            {
                PWMI ()
            }

            Method (XINI, 0, NotSerialized)
            {
            }

            Method (EM01, 0, NotSerialized)
            {
            }

            Method (BM05, 1, NotSerialized)
            {
            }

            Method (EM05, 1, NotSerialized)
            {
            }

            Method (HM06, 0, NotSerialized)
            {
            }

            Method (HM07, 1, NotSerialized)
            {
            }

            Method (DISC, 0, NotSerialized)
            {
            }

            Method (CNCT, 0, NotSerialized)
            {
            }

            Name (PWMT, Buffer (0x21)
            {
                /* 0000 */    0x01, 0x01, 0x01, 0x00, 0x3F, 0x05, 0x01, 0x3F, 
                /* 0008 */    0x02, 0x02, 0x01, 0x00, 0x05, 0x00, 0x01, 0x05, 
                /* 0010 */    0x03, 0x03, 0x01, 0x00, 0x15, 0x00, 0x01, 0x15, 
                /* 0018 */    0x04, 0x04, 0x01, 0x00, 0x29, 0x00, 0x01, 0x29, 
                /* 0020 */    0xFF
            })
            Method (PWMI, 0, NotSerialized)
            {
                Store (DerefOf (Index (\_SB.PCI0.SBRG.ASOC.G3D2, 0x03)), Local0)
                Store (Local0, Index (PWMT, 0x05))
                Store (DerefOf (Index (\_SB.PCI0.SBRG.ASOC.G354, 0x03)), Local0)
                Store (Local0, Index (PWMT, 0x15))
                Store (DerefOf (Index (\_SB.PCI0.SBRG.ASOC.G355, 0x03)), Local0)
                Store (Local0, Index (PWMT, 0x1D))
            }

            Method (VTR, 1, NotSerialized)
            {
                Store (Zero, Local0)
                Store (Arg0, Local1)
                If (LEqual (PWMX, One))
                {
                    Store (Add (Divide (Subtract (Local1, 0x00020F58), 0x05DC, ), 
                        PMIN), Local0)
                    \_SB.PCI0.SBRG.ASOC.SIT3 (0x03020032, Local0, 0x02)
                }
                Else
                {
                    If (LEqual (PWMX, 0x03))
                    {
                        Store (Add (Divide (Subtract (Local1, 0x0001D4C0), 0x05DC, ), 
                            PMIN), Local0)
                        \_SB.PCI0.SBRG.ASOC.SIT3 (0x03020054, Local0, 0x02)
                    }
                    Else
                    {
                        If (LEqual (PWMX, 0x04))
                        {
                            Store (Add (Divide (Subtract (Local1, 0x0001ADB0), 0x05DC, ), 
                                PMIN), Local0)
                            \_SB.PCI0.SBRG.ASOC.SIT3 (0x03020055, Local0, 0x02)
                        }
                    }
                }

                Return (Local0)
            }

            Method (RTV, 1, NotSerialized)
            {
                Store (Arg0, Local0)
                Store (Zero, Local1)
                If (LEqual (PWMX, One))
                {
                    \_SB.PCI0.SBRG.ASOC.GIT3 (0x03020032)
                    Store (\_SB.PCI0.SBRG.ASOC.ASB1, Local0)
                    Store (Add (0x00020F58, Multiply (Subtract (Local0, PMIN), 0x05DC)
                        ), Local1)
                }
                Else
                {
                    If (LEqual (PWMX, 0x03))
                    {
                        \_SB.PCI0.SBRG.ASOC.GIT3 (0x03020054)
                        Store (\_SB.PCI0.SBRG.ASOC.ASB1, Local0)
                        Store (Add (0x0001D4C0, Multiply (Subtract (Local0, PMIN), 0x05DC)
                            ), Local1)
                    }
                    Else
                    {
                        If (LEqual (PWMX, 0x04))
                        {
                            \_SB.PCI0.SBRG.ASOC.GIT3 (0x03020055)
                            Store (\_SB.PCI0.SBRG.ASOC.ASB1, Local0)
                            Store (Add (0x0001ADB0, Multiply (Subtract (Local0, PMIN), 0x05DC)
                                ), Local1)
                        }
                    }
                }

                Return (Local1)
            }

            Name (QLST, Package (0x0E)
            {
                0x0D, 
                Package (0x05)
                {
                    0x2658, 
                    "Memory Clock Mode", 
                    Zero, 
                    0x03, 
                    Package (0x03)
                    {
                        Buffer (0x05)
                        {
                            "Auto"
                        }, 

                        Buffer (0x06)
                        {
                            "Limit"
                        }, 

                        Buffer (0x07)
                        {
                            "Manual"
                        }
                    }
                }, 

                Package (0x06)
                {
                    0x44F8, 
                    "Memclock Value", 
                    One, 
                    Buffer (0x05)
                    {
                        0x02, 0x00, 0x01, 0x03, 0x00
                    }, 

                    0x08, 
                    Package (0x08)
                    {
                        Buffer (0x04)
                        {
                            "rvd"
                        }, 

                        Buffer (0x04)
                        {
                            "rvd"
                        }, 

                        Buffer (0x04)
                        {
                            "rvd"
                        }, 

                        Buffer (0x04)
                        {
                            "400"
                        }, 

                        Buffer (0x04)
                        {
                            "533"
                        }, 

                        Buffer (0x04)
                        {
                            "667"
                        }, 

                        Buffer (0x04)
                        {
                            "800"
                        }, 

                        Buffer (0x05)
                        {
                            "Auto"
                        }
                    }
                }, 

                Package (0x05)
                {
                    0x2658, 
                    "DRAM Timing Mode", 
                    Zero, 
                    0x04, 
                    Package (0x04)
                    {
                        Buffer (0x05)
                        {
                            "Auto"
                        }, 

                        Buffer (0x04)
                        {
                            "rvd"
                        }, 

                        Buffer (0x04)
                        {
                            "rvd"
                        }, 

                        Buffer (0x05)
                        {
                            "Both"
                        }
                    }
                }, 

                Package (0x07)
                {
                    0x44FC, 
                    "DCT0 CAS Latency (CL)", 
                    0x02, 
                    Buffer (0x05)
                    {
                        0x02, 0x00, 0x03, 0x03, 0x00
                    }, 

                    Buffer (0x05)
                    {
                        0x02, 0x02, 0x03, 0x03, 0x00
                    }, 

                    0x10, 
                    Package (0x10)
                    {
                        Buffer (0x05)
                        {
                            "Auto"
                        }, 

                        Buffer (0x04)
                        {
                            "rvd"
                        }, 

                        Buffer (0x04)
                        {
                            "rvd"
                        }, 

                        Buffer (0x06)
                        {
                            "4 CLK"
                        }, 

                        Buffer (0x06)
                        {
                            "5 CLK"
                        }, 

                        Buffer (0x06)
                        {
                            "6 CLK"
                        }, 

                        Buffer (0x06)
                        {
                            "7 CLK"
                        }, 

                        Buffer (0x06)
                        {
                            "8 CLK"
                        }, 

                        Buffer (0x06)
                        {
                            "9 CLK"
                        }, 

                        Buffer (0x07)
                        {
                            "10 CLK"
                        }, 

                        Buffer (0x07)
                        {
                            "11 CLK"
                        }, 

                        Buffer (0x07)
                        {
                            "12 CLK"
                        }, 

                        Buffer (0x04)
                        {
                            "rvd"
                        }, 

                        Buffer (0x04)
                        {
                            "rvd"
                        }, 

                        Buffer (0x04)
                        {
                            "rvd"
                        }, 

                        Buffer (0x04)
                        {
                            "rvd"
                        }
                    }
                }, 

                Package (0x05)
                {
                    0x35FB, 
                    "NB FID Control", 
                    Zero, 
                    0x02, 
                    Package (0x02)
                    {
                        Buffer (0x07)
                        {
                            "Manual"
                        }, 

                        Buffer (0x05)
                        {
                            "Auto"
                        }
                    }
                }, 

                Package (0x06)
                {
                    0x53F0, 
                    "NBFID ID", 
                    One, 
                    Buffer (0x05)
                    {
                        0x02, 0x01, 0x06, 0x03, 0x00
                    }, 

                    0x21, 
                    Package (0x21)
                    {
                        Buffer (0x02)
                        {
                            "3"
                        }, 

                        Buffer (0x02)
                        {
                            "4"
                        }, 

                        Buffer (0x02)
                        {
                            "5"
                        }, 

                        Buffer (0x02)
                        {
                            "6"
                        }, 

                        Buffer (0x02)
                        {
                            "7"
                        }, 

                        Buffer (0x02)
                        {
                            "8"
                        }, 

                        Buffer (0x02)
                        {
                            "9"
                        }, 

                        Buffer (0x03)
                        {
                            "10"
                        }, 

                        Buffer (0x03)
                        {
                            "11"
                        }, 

                        Buffer (0x03)
                        {
                            "12"
                        }, 

                        Buffer (0x03)
                        {
                            "13"
                        }, 

                        Buffer (0x03)
                        {
                            "14"
                        }, 

                        Buffer (0x03)
                        {
                            "15"
                        }, 

                        Buffer (0x03)
                        {
                            "16"
                        }, 

                        Buffer (0x03)
                        {
                            "17"
                        }, 

                        Buffer (0x03)
                        {
                            "18"
                        }, 

                        Buffer (0x03)
                        {
                            "19"
                        }, 

                        Buffer (0x03)
                        {
                            "20"
                        }, 

                        Buffer (0x03)
                        {
                            "21"
                        }, 

                        Buffer (0x03)
                        {
                            "22"
                        }, 

                        Buffer (0x03)
                        {
                            "23"
                        }, 

                        Buffer (0x03)
                        {
                            "24"
                        }, 

                        Buffer (0x03)
                        {
                            "25"
                        }, 

                        Buffer (0x03)
                        {
                            "26"
                        }, 

                        Buffer (0x03)
                        {
                            "27"
                        }, 

                        Buffer (0x03)
                        {
                            "28"
                        }, 

                        Buffer (0x03)
                        {
                            "29"
                        }, 

                        Buffer (0x03)
                        {
                            "30"
                        }, 

                        Buffer (0x03)
                        {
                            "31"
                        }, 

                        Buffer (0x03)
                        {
                            "32"
                        }, 

                        Buffer (0x03)
                        {
                            "33"
                        }, 

                        Buffer (0x03)
                        {
                            "34"
                        }, 

                        Buffer (0x03)
                        {
                            "35"
                        }
                    }
                }, 

                Package (0x05)
                {
                    0x175E, 
                    "DDR3 Memory Profile", 
                    Zero, 
                    0x02, 
                    Package (0x02)
                    {
                        Buffer (0x09)
                        {
                            "Disabled"
                        }, 

                        Buffer (0x08)
                        {
                            "Enabled"
                        }
                    }
                }, 

                Package (0x08)
                {
                    0x26A6, 
                    "Advanced Clock Calibration", 
                    Zero, 
                    0x04, 
                    Buffer (0x09)
                    {
                        "Disabled"
                    }, 

                    Buffer (0x05)
                    {
                        "Auto"
                    }, 

                    Buffer (0x0A)
                    {
                        "All Cores"
                    }, 

                    Buffer (0x09)
                    {
                        "Per Core"
                    }
                }, 

                Package (0x16)
                {
                    0x453C, 
                    "Value (All Cores)", 
                    0x02, 
                    Buffer (0x05)
                    {
                        0x82, 0x02, 0x01, 0x03, 0x00
                    }, 

                    Buffer (0x05)
                    {
                        0x86, 0x10, 0x00, 0x02, 0x00
                    }, 

                    0x10, 
                    Buffer (0x03)
                    {
                        "0%"
                    }, 

                    Buffer (0x05)
                    {
                        "+ 2%"
                    }, 

                    Buffer (0x05)
                    {
                        "+ 4%"
                    }, 

                    Buffer (0x05)
                    {
                        "+ 6%"
                    }, 

                    Buffer (0x05)
                    {
                        "+ 8%"
                    }, 

                    Buffer (0x05)
                    {
                        "+10%"
                    }, 

                    Buffer (0x05)
                    {
                        "+12%"
                    }, 

                    Buffer (0x09)
                    {
                        "RESERVED"
                    }, 

                    Buffer (0x09)
                    {
                        "RESERVED"
                    }, 

                    Buffer (0x05)
                    {
                        "- 2%"
                    }, 

                    Buffer (0x05)
                    {
                        "- 4%"
                    }, 

                    Buffer (0x05)
                    {
                        "- 6%"
                    }, 

                    Buffer (0x05)
                    {
                        "- 8%"
                    }, 

                    Buffer (0x05)
                    {
                        "-10%"
                    }, 

                    Buffer (0x05)
                    {
                        "-12%"
                    }, 

                    Buffer (0x09)
                    {
                        "RESERVED"
                    }
                }, 

                Package (0x16)
                {
                    0x4540, 
                    "Value (Core 0)", 
                    0x02, 
                    Buffer (0x05)
                    {
                        0x82, 0x03, 0x01, 0x03, 0x00
                    }, 

                    Buffer (0x05)
                    {
                        0x86, 0x10, 0x00, 0x02, 0x00
                    }, 

                    0x10, 
                    Buffer (0x03)
                    {
                        "0%"
                    }, 

                    Buffer (0x05)
                    {
                        "+ 2%"
                    }, 

                    Buffer (0x05)
                    {
                        "+ 4%"
                    }, 

                    Buffer (0x05)
                    {
                        "+ 6%"
                    }, 

                    Buffer (0x05)
                    {
                        "+ 8%"
                    }, 

                    Buffer (0x05)
                    {
                        "+10%"
                    }, 

                    Buffer (0x05)
                    {
                        "+12%"
                    }, 

                    Buffer (0x09)
                    {
                        "RESERVED"
                    }, 

                    Buffer (0x09)
                    {
                        "RESERVED"
                    }, 

                    Buffer (0x05)
                    {
                        "- 2%"
                    }, 

                    Buffer (0x05)
                    {
                        "- 4%"
                    }, 

                    Buffer (0x05)
                    {
                        "- 6%"
                    }, 

                    Buffer (0x05)
                    {
                        "- 8%"
                    }, 

                    Buffer (0x05)
                    {
                        "-10%"
                    }, 

                    Buffer (0x05)
                    {
                        "-12%"
                    }, 

                    Buffer (0x09)
                    {
                        "RESERVED"
                    }
                }, 

                Package (0x16)
                {
                    0x4544, 
                    "Value (Core 1)", 
                    0x02, 
                    Buffer (0x05)
                    {
                        0x82, 0x03, 0x01, 0x03, 0x00
                    }, 

                    Buffer (0x05)
                    {
                        0x86, 0x10, 0x00, 0x02, 0x00
                    }, 

                    0x10, 
                    Buffer (0x03)
                    {
                        "0%"
                    }, 

                    Buffer (0x05)
                    {
                        "+ 2%"
                    }, 

                    Buffer (0x05)
                    {
                        "+ 4%"
                    }, 

                    Buffer (0x05)
                    {
                        "+ 6%"
                    }, 

                    Buffer (0x05)
                    {
                        "+ 8%"
                    }, 

                    Buffer (0x05)
                    {
                        "+10%"
                    }, 

                    Buffer (0x05)
                    {
                        "+12%"
                    }, 

                    Buffer (0x09)
                    {
                        "RESERVED"
                    }, 

                    Buffer (0x09)
                    {
                        "RESERVED"
                    }, 

                    Buffer (0x05)
                    {
                        "- 2%"
                    }, 

                    Buffer (0x05)
                    {
                        "- 4%"
                    }, 

                    Buffer (0x05)
                    {
                        "- 6%"
                    }, 

                    Buffer (0x05)
                    {
                        "- 8%"
                    }, 

                    Buffer (0x05)
                    {
                        "-10%"
                    }, 

                    Buffer (0x05)
                    {
                        "-12%"
                    }, 

                    Buffer (0x09)
                    {
                        "RESERVED"
                    }
                }, 

                Package (0x16)
                {
                    0x4548, 
                    "Value (Core 2)", 
                    0x02, 
                    Buffer (0x05)
                    {
                        0x82, 0x03, 0x01, 0x03, 0x00
                    }, 

                    Buffer (0x05)
                    {
                        0x86, 0x10, 0x00, 0x02, 0x00
                    }, 

                    0x10, 
                    Buffer (0x03)
                    {
                        "0%"
                    }, 

                    Buffer (0x05)
                    {
                        "+ 2%"
                    }, 

                    Buffer (0x05)
                    {
                        "+ 4%"
                    }, 

                    Buffer (0x05)
                    {
                        "+ 6%"
                    }, 

                    Buffer (0x05)
                    {
                        "+ 8%"
                    }, 

                    Buffer (0x05)
                    {
                        "+10%"
                    }, 

                    Buffer (0x05)
                    {
                        "+12%"
                    }, 

                    Buffer (0x09)
                    {
                        "RESERVED"
                    }, 

                    Buffer (0x09)
                    {
                        "RESERVED"
                    }, 

                    Buffer (0x05)
                    {
                        "- 2%"
                    }, 

                    Buffer (0x05)
                    {
                        "- 4%"
                    }, 

                    Buffer (0x05)
                    {
                        "- 6%"
                    }, 

                    Buffer (0x05)
                    {
                        "- 8%"
                    }, 

                    Buffer (0x05)
                    {
                        "-10%"
                    }, 

                    Buffer (0x05)
                    {
                        "-12%"
                    }, 

                    Buffer (0x09)
                    {
                        "RESERVED"
                    }
                }, 

                Package (0x16)
                {
                    0x454C, 
                    "Value (Core 3)", 
                    0x02, 
                    Buffer (0x05)
                    {
                        0x82, 0x03, 0x01, 0x03, 0x00
                    }, 

                    Buffer (0x05)
                    {
                        0x86, 0x10, 0x00, 0x02, 0x00
                    }, 

                    0x10, 
                    Buffer (0x03)
                    {
                        "0%"
                    }, 

                    Buffer (0x05)
                    {
                        "+ 2%"
                    }, 

                    Buffer (0x05)
                    {
                        "+ 4%"
                    }, 

                    Buffer (0x05)
                    {
                        "+ 6%"
                    }, 

                    Buffer (0x05)
                    {
                        "+ 8%"
                    }, 

                    Buffer (0x05)
                    {
                        "+10%"
                    }, 

                    Buffer (0x05)
                    {
                        "+12%"
                    }, 

                    Buffer (0x09)
                    {
                        "RESERVED"
                    }, 

                    Buffer (0x09)
                    {
                        "RESERVED"
                    }, 

                    Buffer (0x05)
                    {
                        "- 2%"
                    }, 

                    Buffer (0x05)
                    {
                        "- 4%"
                    }, 

                    Buffer (0x05)
                    {
                        "- 6%"
                    }, 

                    Buffer (0x05)
                    {
                        "- 8%"
                    }, 

                    Buffer (0x05)
                    {
                        "-10%"
                    }, 

                    Buffer (0x05)
                    {
                        "-12%"
                    }, 

                    Buffer (0x09)
                    {
                        "RESERVED"
                    }
                }
            })
            OperationRegion (AODT, SystemMemory, 0x000EFE6C, 0x0100)
            Field (AODT, AnyAcc, NoLock, Preserve)
            {
                ASCD,   16, 
                ASTS,   32, 
                        Offset (0x08), 
                ASBF,   960, 
                GFXO,   1, 
                GMOD,   2, 
                        Offset (0x84), 
                RAMB,   32, 
                RAMS,   32
            }

            Name (ID01, Zero)
            Name (ID02, Zero)
            Method (SOID, 1, NotSerialized)
            {
                ShiftRight (Arg0, 0x18, ID01)
                ShiftRight (And (Arg0, 0x00FF0000), 0x10, ID02)
                Return (Zero)
            }

            Method (WROW, 4, NotSerialized)
            {
                Name (IFPK, Package (0x06)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                })
                CreateDWordField (Arg0, Zero, BUF0)
                CreateDWordField (Arg0, 0x04, BUF1)
                CreateDWordField (Arg0, 0x08, BUF2)
                CreateDWordField (Arg0, 0x0C, BUF3)
                CreateDWordField (Arg0, 0x10, BUF4)
                CreateDWordField (Arg0, 0x14, BUF5)
                Store (BUF0, Index (IFPK, Zero))
                Store (BUF1, Index (IFPK, One))
                Store (BUF2, Index (IFPK, 0x02))
                Store (BUF3, Index (IFPK, 0x03))
                Store (BUF4, Index (IFPK, 0x04))
                Store (BUF5, Index (IFPK, 0x05))
                Store (Arg3, Local0)
                Store (Zero, Local1)
                While (Local0)
                {
                    Store (DerefOf (Index (IFPK, Local1)), Index (Arg1, Add (Multiply (
                        Arg2, Arg3), Local1)))
                    Increment (Local1)
                    Decrement (Local0)
                }
            }

            Method (GROW, 4, NotSerialized)
            {
                Name (IFPK, Package (0x06)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Store (Arg3, Local0)
                Store (Zero, Local1)
                While (Local0)
                {
                    Store (DerefOf (Index (Arg0, Add (Multiply (Arg2, Arg3), Local1
                        ))), Index (IFPK, Local1))
                    Increment (Local1)
                    Decrement (Local0)
                }

                CreateDWordField (Arg1, Zero, BUF0)
                CreateDWordField (Arg1, 0x04, BUF1)
                CreateDWordField (Arg1, 0x08, BUF2)
                CreateDWordField (Arg1, 0x0C, BUF3)
                CreateDWordField (Arg1, 0x10, BUF4)
                CreateDWordField (Arg1, 0x14, BUF5)
                Store (DerefOf (Index (IFPK, Zero)), BUF0)
                Store (DerefOf (Index (IFPK, One)), BUF1)
                Store (DerefOf (Index (IFPK, 0x02)), BUF2)
                Store (DerefOf (Index (IFPK, 0x03)), BUF3)
                Store (DerefOf (Index (IFPK, 0x04)), BUF4)
                Store (DerefOf (Index (IFPK, 0x05)), BUF5)
            }

            Method (CPTB, 2, NotSerialized)
            {
                Name (LOID, Zero)
                CreateDWordField (Arg1, Zero, BUF0)
                CreateDWordField (Arg1, 0x04, BUF1)
                CreateDWordField (Arg1, 0x08, BUF2)
                CreateDWordField (Arg1, 0x0C, BUF3)
                CreateDWordField (Arg1, 0x10, BUF4)
                Store (Zero, Local0)
                Store (DerefOf (Index (OBIT, Local0)), LOID)
                While (LOID)
                {
                    If (LEqual (LOID, Arg0))
                    {
                        Store (DerefOf (Index (OBIT, Add (Local0, Zero))), BUF0)
                        Store (DerefOf (Index (OBIT, Add (Local0, One))), BUF1)
                        Store (DerefOf (Index (OBIT, Add (Local0, 0x02))), BUF2)
                        Store (DerefOf (Index (OBIT, Add (Local0, 0x03))), BUF3)
                        Store (DerefOf (Index (OBIT, Add (Local0, 0x04))), BUF4)
                        Break
                    }

                    Add (Local0, 0x06, Local0)
                    Store (DerefOf (Index (OBIT, Local0)), LOID)
                }

                If (LEqual (LOID, Zero))
                {
                    Return (0xFF)
                }

                Return (Zero)
            }

            Method (CBTP, 1, NotSerialized)
            {
                Name (LOID, Zero)
                CreateDWordField (Arg0, Zero, BUF0)
                CreateDWordField (Arg0, 0x04, BUF1)
                CreateDWordField (Arg0, 0x08, BUF2)
                CreateDWordField (Arg0, 0x0C, BUF3)
                CreateDWordField (Arg0, 0x10, BUF4)
                CreateDWordField (Arg0, 0x14, BUF5)
                Store (Zero, Local0)
                Store (DerefOf (Index (OBIT, Local0)), LOID)
                While (LOID)
                {
                    If (LEqual (LOID, BUF0))
                    {
                        Store (BUF0, Index (OBIT, Add (Local0, Zero)))
                        Store (BUF1, Index (OBIT, Add (Local0, One)))
                        Store (BUF2, Index (OBIT, Add (Local0, 0x02)))
                        Store (BUF3, Index (OBIT, Add (Local0, 0x03)))
                        Store (BUF4, Index (OBIT, Add (Local0, 0x04)))
                        Store (BUF5, Index (OBIT, Add (Local0, 0x05)))
                        Break
                    }

                    Add (Local0, 0x06, Local0)
                    Store (DerefOf (Index (OBIT, Local0)), LOID)
                }

                If (LEqual (LOID, Zero))
                {
                    Return (0xFF)
                }

                Return (Zero)
            }

            Method (ABS, 2, NotSerialized)
            {
                If (LLess (Arg0, Arg1))
                {
                    Return (Subtract (Arg1, Arg0))
                }
                Else
                {
                    Return (Subtract (Arg0, Arg1))
                }
            }

            Name (DG01, One)
            Name (DG02, 0x02)
            Name (DG03, 0x03)
            Name (DG04, 0x04)
            Method (ADBG, 2, NotSerialized)
            {
                If (DBG)
                {
                    If (LEqual (Arg1, DG01))
                    {
                        If (GDBG)
                        {
                            Store ("[GEN]", Debug)
                            Store (Arg0, Debug)
                        }
                    }
                    Else
                    {
                        If (LEqual (Arg1, DG02))
                        {
                            If (CDBG)
                            {
                                Store ("[CLK]", Debug)
                                Store (Arg0, Debug)
                            }
                        }
                        Else
                        {
                            If (LEqual (Arg1, DG03))
                            {
                                If (VDBG)
                                {
                                    Store ("[VOL]", Debug)
                                    Store (Arg0, Debug)
                                }
                            }
                            Else
                            {
                                If (LEqual (Arg1, DG04))
                                {
                                    If (RDBG)
                                    {
                                        Store ("[RCMD]", Debug)
                                        Store (Arg0, Debug)
                                    }
                                }
                                Else
                                {
                                    Store ("[NULL]", Debug)
                                    Store (Arg0, Debug)
                                }
                            }
                        }
                    }
                }
            }

            OperationRegion (SMIX, SystemIO, SMIP, One)
            Field (SMIX, ByteAcc, NoLock, Preserve)
            {
                SMIC,   8
            }

            Name (EXBF, Buffer (0x78) {})
            Method (GCMS, 1, NotSerialized)
            {
                Name (TEMP, Buffer (0x06) {})
                CreateDWordField (TEMP, Zero, TMP1)
                CreateWordField (TEMP, 0x04, TMP2)
                Store (One, ASCD)
                CreateWordField (EXBF, Zero, CMSI)
                CreateWordField (EXBF, 0x02, CMSD)
                Store (Zero, EXBF)
                Store (Arg0, CMSI)
                Store (EXBF, ASBF)
                Store (AODS, SMIC)
                Store (ASBF, EXBF)
                Store (ASTS, TMP1)
                Store (CMSD, TMP2)
                Return (TEMP)
            }

            Method (SCMS, 2, NotSerialized)
            {
                Store (0x02, ASCD)
                CreateWordField (EXBF, Zero, CMSI)
                CreateWordField (EXBF, 0x02, CMSD)
                Store (Zero, EXBF)
                Store (Arg0, CMSI)
                Store (Arg1, CMSD)
                Store (EXBF, ASBF)
                Store (AODS, SMIC)
                Store (ASBF, EXBF)
                Return (ASTS)
            }

            Method (STNV, 2, NotSerialized)
            {
                Store (0x03, ASCD)
                CreateField (EXBF, Zero, Arg1, MOPD)
                Store (Zero, EXBF)
                Store (Arg0, MOPD)
                Store (EXBF, ASBF)
                Store (AODS, SMIC)
                Store (ASBF, EXBF)
                Return (ASTS)
            }

            Name (CPUD, Zero)
            Name (GFXD, Zero)
            Name (SBCD, Zero)
            Method (GETC, 1, NotSerialized)
            {
                If (RWBK (Zero, 0xD3, Zero, 0x20, TSBF))
                {
                    Store (One, GVB2)
                    Store (Zero, GVB1)
                    Return (GVBF)
                }

                Store (Zero, GVB2)
                Store (CCLK (Arg0), GVB1)
                Return (GVBF)
            }

            Method (SETC, 2, NotSerialized)
            {
                If (RWBK (Zero, 0xD3, Zero, 0x20, TSBF))
                {
                    Return (One)
                }

                If (LEqual (Arg0, One))
                {
                    RWBK (Zero, 0xD3, Zero, 0x20, TSBF)
                    Store (DerefOf (Index (TSBF, 0x07)), Local0)
                    If (LEqual (Local0, 0x75))
                    {
                        Store (GDIV (0x14), Local0)
                        Store (GCCX (0x10, 0x11, 0x14, 0xC350), Local1)
                        Store (Multiply (Arg1, Local0), Local2)
                        If (LNotEqual (Local1, Local2))
                        {
                            If (LNot (CFMN (Local2, 0xC350)))
                            {
                                SFSB (Arg1)
                            }
                        }

                        Store (Zero, Local3)
                    }
                    Else
                    {
                        Store (GDIV (0x1C), Local0)
                        Store (GCCX (0x0B, 0x0C, 0x1C, 0x37EE), Local1)
                        Store (Multiply (Arg1, Local0), Local2)
                        Store (RMPC (Local1, Local2, 0x07D0, Arg0), Local3)
                    }
                }
                Else
                {
                    If (LEqual (Arg0, 0x02))
                    {
                        RWBK (Zero, 0xD3, Zero, 0x20, TSBF)
                        Store (DerefOf (Index (TSBF, 0x07)), Local0)
                        If (LEqual (Local0, 0x75))
                        {
                            Store (GDIV (0x1C), Local0)
                            Store (GCCX (0x1A, 0x1B, 0x1C, 0x37EE), Local1)
                            Store (Multiply (Arg1, Local0), Local2)
                            Store (RMPC (Local1, Local2, 0x07D0, Arg0), Local3)
                        }
                        Else
                        {
                            Store (DerefOf (Index (DIVD, ShiftRight (And (DerefOf (Index (TSBF, 0x1E
                                )), 0xF0), 0x04))), Local0)
                            Store (GCCX (0x0F, 0x10, 0x1D, 0x37EE), Local1)
                            Store (Multiply (Arg1, Local0), Local2)
                            Store (RMPC (Local1, Local2, 0x07D0, Arg0), Local3)
                        }
                    }
                    Else
                    {
                        If (LEqual (Arg0, 0x03))
                        {
                            RWBK (Zero, 0xD3, Zero, 0x20, TSBF)
                            Store (DerefOf (Index (TSBF, 0x07)), Local0)
                            If (LEqual (Local0, 0x75))
                            {
                                Store (GDIV (0x1F), Local0)
                                Store (GCCX (0x1D, 0x1E, 0x1F, 0x37EE), Local1)
                                Store (Multiply (Arg1, Local0), Local2)
                                Store (RMPC (Local1, Local2, 0x07D0, Arg0), Local3)
                            }
                            Else
                            {
                                Store (Zero, Local3)
                            }
                        }
                    }
                }

                Store ("current target ramp step clkid", Debug)
                Store (Local1, Debug)
                Store (Local2, Debug)
                Store (0x07D0, Debug)
                Store (Arg0, Debug)
                If (Local3)
                {
                    Return (Local3)
                }

                Return (Zero)
            }

            Method (CINI, 0, NotSerialized)
            {
                RWBK (Zero, 0xD3, Zero, 0x20, TSBF)
                Store (DerefOf (Index (TSBF, 0x07)), Local0)
                If (LEqual (Local0, 0x75))
                {
                    If (RWBK (Zero, 0xD3, 0x07, 0x09, TSBF))
                    {
                        Return (One)
                    }

                    If (LOr (LNotEqual (And (DerefOf (Index (TSBF, 0x08)), 
                        0x0F), One), LNotEqual (DerefOf (Index (TSBF, 0x07)), 0x75)))
                    {
                        Return (0x03)
                    }

                    Store (0x20, Index (TSBF, 0x0B))
                    Or (DerefOf (Index (TSBF, 0x0C)), 0xA0, Index (TSBF, 0x0C
                        ))
                    If (RWBK (Zero, 0xD2, 0x0B, 0x02, TSBF))
                    {
                        Return (One)
                    }

                    Return (Zero)
                }
                Else
                {
                    If (RWBK (Zero, 0xD3, Zero, 0x0F, TSBF))
                    {
                        Return (One)
                    }

                    If (LOr (LNotEqual (And (DerefOf (Index (TSBF, 0x08)), 
                        0x0F), One), Zero))
                    {
                        Return (0x03)
                    }

                    Store (0x1F, Index (TSBF, 0x07))
                    Or (DerefOf (Index (TSBF, 0x05)), 0x30, Index (TSBF, 0x05
                        ))
                    If (RWBK (Zero, 0xD2, 0x05, 0x03, TSBF))
                    {
                        Return (One)
                    }

                    Return (Zero)
                }
            }

            Method (GCCX, 4, NotSerialized)
            {
                And (DerefOf (Index (TSBF, Arg2)), 0x80, Local0)
                ShiftRight (Local0, 0x07, Local0)
                And (DerefOf (Index (TSBF, Arg0)), 0xC0, Local1)
                ShiftRight (Local1, 0x05, Local1)
                And (DerefOf (Index (TSBF, Arg1)), 0xFF, Local2)
                ShiftLeft (Local2, 0x03, Local2)
                Add (Local0, Local1, Local0)
                Add (Local0, Local2, Local0)
                And (DerefOf (Index (TSBF, Arg0)), 0x3F, Local1)
                Multiply (Arg3, Local0, Local2)
                Divide (Local2, Local1, , Local3)
                Return (Local3)
            }

            Name (VCOM, Zero)
            Name (VCON, Zero)
            Method (CCMN, 2, NotSerialized)
            {
                RWBK (Zero, 0xD3, Zero, 0x20, TSBF)
                Store (DerefOf (Index (TSBF, 0x07)), Local0)
                If (LEqual (Local0, 0x75))
                {
                    Store (Arg1, Local0)
                    Store (ABS (Arg0, Arg1), Local1)
                    Store (0x13, Local2)
                    While (LLess (Local2, 0x19))
                    {
                        Add (Divide (Multiply (Arg0, Local2), Arg1, ), 0x02, 
                            Local3)
                        If (LGreater (Local3, 0x0800))
                        {
                            Store (0x0800, Local3)
                        }

                        If (LGreater (Divide (Multiply (Arg0, Local2), Arg1, ), 
                            0x02))
                        {
                            Subtract (Divide (Multiply (Arg0, Local2), Arg1, ), 0x02, 
                                Local4)
                            If (LLess (Local4, 0x02))
                            {
                                Store (0x02, Local4)
                            }
                        }
                        Else
                        {
                            Store (0x02, Local4)
                        }

                        While (LLessEqual (Local4, Local3))
                        {
                            Store (Divide (Multiply (Arg1, Local4), Local2, ), Local0)
                            Store (ABS (Arg0, Local0), Local5)
                            If (LLess (Local5, Local1))
                            {
                                Store ("N", Debug)
                                Store (Local4, Debug)
                                Store ("M", Debug)
                                Store (Local2, Debug)
                                Store ("Diff", Debug)
                                Store (Local5, Debug)
                                Store (Local4, VCON)
                                Store (Local2, VCOM)
                                Store (Local5, Local1)
                                If (LLess (Local5, 0x012C))
                                {
                                    Break
                                }
                            }

                            Increment (Local4)
                        }

                        Increment (Local2)
                    }
                }
                Else
                {
                    Store (Arg1, Local0)
                    Store (ABS (Arg0, Arg1), Local1)
                    Store (0x09, Local2)
                    While (LLess (Local2, 0x3F))
                    {
                        Add (Divide (Multiply (Arg0, Local2), Arg1, ), 0x02, 
                            Local3)
                        If (LGreater (Local3, 0x0800))
                        {
                            Store (0x0800, Local3)
                        }

                        If (LGreater (Divide (Multiply (Arg0, Local2), Arg1, ), 
                            0x02))
                        {
                            Subtract (Divide (Multiply (Arg0, Local2), Arg1, ), 0x02, 
                                Local4)
                            If (LLess (Local4, 0x02))
                            {
                                Store (0x02, Local4)
                            }
                        }
                        Else
                        {
                            Store (0x02, Local4)
                        }

                        While (LLessEqual (Local4, Local3))
                        {
                            Store (Divide (Multiply (Arg1, Local4), Local2, ), Local0)
                            Store (ABS (Arg0, Local0), Local5)
                            If (LLess (Local5, Local1))
                            {
                                Store ("N", Debug)
                                Store (Local4, Debug)
                                Store ("M", Debug)
                                Store (Local2, Debug)
                                Store ("Diff", Debug)
                                Store (Local5, Debug)
                                Store (Local4, VCON)
                                Store (Local2, VCOM)
                                Store (Local5, Local1)
                                If (LLess (Local5, 0x012C))
                                {
                                    Break
                                }
                            }

                            Increment (Local4)
                        }

                        Increment (Local2)
                    }
                }
            }

            Method (CCLK, 1, NotSerialized)
            {
                Name (VCOV, Zero)
                Name (VCOD, Zero)
                RWBK (Zero, 0xD3, Zero, 0x20, TSBF)
                Store (DerefOf (Index (TSBF, 0x07)), Local0)
                If (LEqual (Local0, 0x75))
                {
                    If (LEqual (Arg0, One))
                    {
                        Store (GDIV (0x14), CPUD)
                        Store (CPUD, VCOD)
                        Store (GCCX (0x10, 0x11, 0x14, 0xC350), VCOV)
                    }
                    Else
                    {
                        If (LEqual (Arg0, 0x02))
                        {
                            Store (GDIV (0x1C), GFXD)
                            Store (GFXD, VCOD)
                            Store (GCCX (0x1A, 0x1B, 0x1C, 0x37EE), VCOV)
                        }
                        Else
                        {
                            If (LEqual (Arg0, 0x03))
                            {
                                Store (GDIV (0x1F), SBCD)
                                Store (SBCD, VCOD)
                                Store (GCCX (0x1D, 0x1E, 0x1F, 0x37EE), VCOV)
                            }
                        }
                    }

                    Return (Divide (VCOV, VCOD, ))
                }
                Else
                {
                    If (LEqual (Arg0, One))
                    {
                        Store (GDIV (0x1C), CPUD)
                        Store (CPUD, VCOD)
                        Store (GCCX (0x0B, 0x0C, 0x1C, 0x37EE), VCOV)
                    }
                    Else
                    {
                        If (LEqual (Arg0, 0x02))
                        {
                            Store (DerefOf (Index (DIVD, ShiftRight (And (DerefOf (Index (TSBF, 0x1E
                                )), 0xF0), 0x04))), GFXD)
                            Store (GFXD, VCOD)
                            Store (GCCX (0x0F, 0x10, 0x1D, 0x37EE), VCOV)
                        }
                        Else
                        {
                            If (LEqual (Arg0, 0x03))
                            {
                                Store (DerefOf (Index (DIVD, ShiftRight (And (DerefOf (Index (TSBF, 0x1E
                                    )), 0xF0), 0x04))), GFXD)
                                Store (GFXD, VCOD)
                                Store (0x00061A80, VCOV)
                            }
                        }
                    }

                    Divide (VCOV, VCOD, , Local0)
                    Store (Local0, Local1)
                    Divide (Local0, 0x03E8, Local2, Local3)
                    Multiply (Local3, 0x03E8, Local3)
                    If (LGreaterEqual (Local2, 0x038E))
                    {
                        Add (Local3, 0x03E8, Local3)
                    }

                    Return (Local3)
                }
            }

            Method (SCCX, 5, NotSerialized)
            {
                Store (Zero, VCOM)
                Store (Zero, VCOM)
                CCMN (Arg0, Arg4)
                Store ("VCOM", Debug)
                Store (VCOM, Debug)
                Store ("VCON", Debug)
                Store (VCON, Debug)
                Store (Or (And (ShiftLeft (VCON, 0x05), 0xC0), VCOM
                    ), Index (TSBF, Arg1))
                Store (And (ShiftRight (VCON, 0x03), 0xFF), Index (TSBF, 
                    Arg2))
                Or (And (DerefOf (Index (TSBF, Arg3)), 0x7F), And (
                    ShiftLeft (VCON, 0x07), 0x80), Index (TSBF, Arg3))
                Store (TSBF, Debug)
                If (RWBK (Zero, 0xD2, Arg1, Add (Subtract (Arg3, Arg1), 
                    One), TSBF))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Name (DIVD, Buffer (0x10)
            {
                /* 0000 */    0x02, 0x03, 0x05, 0x09, 0x04, 0x06, 0x0A, 0x12, 
                /* 0008 */    0x08, 0x0C, 0x14, 0x24, 0x10, 0x18, 0x28, 0x48
            })
            Method (GDIV, 1, NotSerialized)
            {
                Return (DerefOf (Index (DIVD, And (DerefOf (Index (TSBF, Arg0)), 
                    0x0F))))
            }

            Method (WTCX, 2, NotSerialized)
            {
                RWBK (Zero, 0xD3, Zero, 0x20, TSBF)
                Store (DerefOf (Index (TSBF, 0x07)), Local0)
                If (LEqual (Local0, 0x75))
                {
                    Store (Arg1, Local0)
                    If (LEqual (Arg0, One))
                    {
                        Return (SCCX (Local0, 0x10, 0x11, 0x14, 0xC350))
                    }
                    Else
                    {
                        If (LEqual (Arg0, 0x02))
                        {
                            Return (SCCX (Local0, 0x1A, 0x1B, 0x1C, 0x37EE))
                        }
                        Else
                        {
                            If (LEqual (Arg0, 0x03))
                            {
                                Return (SCCX (Local0, 0x1D, 0x1E, 0x1F, 0x37EE))
                            }
                        }
                    }

                    Return (0x04)
                }
                Else
                {
                    Store (Arg1, Local0)
                    If (LEqual (Arg0, One))
                    {
                        Return (SCCX (Local0, 0x0B, 0x0C, 0x1C, 0x37EE))
                    }
                    Else
                    {
                        If (LEqual (Arg0, 0x02))
                        {
                            Return (SCCX (Local0, 0x0F, 0x10, 0x1D, 0x37EE))
                        }
                    }

                    Return (0x04)
                }
            }

            Method (RMPC, 4, NotSerialized)
            {
                Name (STAT, Zero)
                Store (Arg0, Local0)
                Store (Arg1, Local1)
                While (LGreater (ABS (Local1, Local0), Arg2))
                {
                    If (LLess (Local0, Local1))
                    {
                        Add (Local0, Arg2, Local0)
                    }
                    Else
                    {
                        Subtract (Local0, Arg2, Local0)
                    }

                    Store (Local0, Debug)
                    Store (WTCX (Arg3, Local0), STAT)
                    Sleep (0x64)
                    If (STAT)
                    {
                        Return (STAT)
                    }
                }

                If (LNotEqual (Local0, Local1))
                {
                    Store (WTCX (Arg3, Local1), STAT)
                    Sleep (0x64)
                    If (STAT)
                    {
                        Return (STAT)
                    }
                }

                Return (Zero)
            }

            Method (SFSB, 1, NotSerialized)
            {
                RWBK (Zero, 0xD3, Zero, 0x20, TSBF)
                RWBK (Zero, 0xD3, Zero, 0x20, TSBF)
                Store (DerefOf (Index (TSBF, 0x07)), Local0)
                If (LEqual (Local0, 0x75))
                {
                    Store (DerefOf (Index (TSBF, 0x0C)), Local0)
                    Store (And (DerefOf (Index (TSBF, 0x14)), 0x7F), Local2)
                    Store (DerefOf (Index (TGMN, Zero)), Index (TSBF, 0x10))
                    Store (DerefOf (Index (TGMN, One)), Index (TSBF, 0x11))
                    Store (Or (Local2, DerefOf (Index (TGMN, 0x02))), Index (
                        TSBF, 0x14))
                    RWBK (Zero, 0xD2, 0x11, One, TSBF)
                    Sleep (0x0A)
                    RWBK (Zero, 0xD2, 0x10, One, TSBF)
                    Sleep (0x0A)
                    RWBK (Zero, 0xD2, 0x14, One, TSBF)
                    Sleep (0x14)
                }
                Else
                {
                    Store (DerefOf (Index (TSBF, 0x05)), Local0)
                    Store (And (DerefOf (Index (TSBF, 0x1C)), 0x7F), Local2)
                    Store (DerefOf (Index (TGMN, Zero)), Index (TSBF, 0x0B))
                    Store (DerefOf (Index (TGMN, One)), Index (TSBF, 0x0C))
                    Store (Or (Local2, DerefOf (Index (TGMN, 0x02))), Index (
                        TSBF, 0x1C))
                    RWBK (Zero, 0xD2, 0x0C, One, TSBF)
                    Sleep (0x0A)
                    RWBK (Zero, 0xD2, 0x0B, One, TSBF)
                    Sleep (0x0A)
                    RWBK (Zero, 0xD2, 0x1C, One, TSBF)
                    Sleep (0x14)
                }
            }

            Name (TGMN, Buffer (0x03)
            {
                0x00, 0x00, 0x00
            })
            Method (CFMN, 2, NotSerialized)
            {
                Store (0x19, Local2)
                While (LLessEqual (Local2, 0x19))
                {
                    Divide (Multiply (Arg0, Local2), Arg1, Local3)
                    If (LEqual (Local3, Zero))
                    {
                        Store (Divide (Multiply (Arg0, Local2), Arg1, ), Local4)
                        If (LLess (ShiftRight (Local4, 0x03), 0x0100))
                        {
                            Store (Or (ShiftLeft (And (Local4, 0x06), 0x05), Local2
                                ), Index (TGMN, Zero))
                            Store (And (ShiftRight (Local4, 0x03), 0xFF), Index (TGMN, 
                                One))
                            Store (ShiftLeft (And (Local4, One), 0x07), Index (TGMN, 
                                0x02))
                            Return (Zero)
                        }
                    }

                    Increment (Local2)
                }

                Return (One)
            }

            Name (PWIF, Buffer (0x08)
            {
                /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            })
            CreateByteField (PWIF, One, PWMX)
            CreateByteField (PWIF, 0x02, PWEN)
            CreateByteField (PWIF, 0x03, PMIN)
            CreateByteField (PWIF, 0x04, PMAX)
            CreateByteField (PWIF, 0x05, PDFT)
            CreateByteField (PWIF, 0x06, PSTP)
            CreateByteField (PWIF, 0x07, PNMD)
            Name (PXIF, Buffer (0x04)
            {
                0x00, 0x00, 0x00, 0x00
            })
            CreateByteField (PXIF, Zero, PXHI)
            CreateByteField (PXIF, One, PXNM)
            CreateByteField (PXIF, 0x02, PXEN)
            CreateByteField (PXIF, 0x03, PXIO)
            Method (VINI, 0, NotSerialized)
            {
                Name (LDFT, Zero)
                Store (DerefOf (Index (OBID, Zero)), Local0)
                Store (One, Local1)
                While (Local0)
                {
                    SOID (DerefOf (Index (OBID, Local1)))
                    If (LEqual (ID01, 0x02))
                    {
                        If (LEqual (GPIF (ID02), Zero))
                        {
                            If (LEqual (PWEN, One))
                            {
                                PWMR (PWMX)
                                If (LNot (LAnd (PXEN, PXIO)))
                                {
                                    Store (One, LDFT)
                                    Break
                                }
                            }
                        }
                    }

                    Decrement (Local0)
                    Increment (Local1)
                }

                If (LEqual (LDFT, One))
                {
                    DISC ()
                    Store (DerefOf (Index (OBID, Zero)), Local0)
                    Store (One, Local1)
                    While (Local0)
                    {
                        SOID (DerefOf (Index (OBID, Local1)))
                        If (LEqual (ID01, 0x02))
                        {
                            If (LEqual (GPIF (ID02), Zero))
                            {
                                If (LEqual (PWEN, One))
                                {
                                    FPDV (PWMX)
                                    PWMW (PWMX, PDFT)
                                }
                            }
                        }

                        Decrement (Local0)
                        Increment (Local1)
                    }
                }

                CNCT ()
            }

            Method (SETV, 2, NotSerialized)
            {
                If (LEqual (GPIF (Arg0), Zero))
                {
                    Store (VTR (Arg1), Local0)
                    WTVR (Local0, PWMX, PMAX, PMIN, PDFT, PSTP)
                }
            }

            Method (GETV, 1, NotSerialized)
            {
                If (LEqual (GPIF (Arg0), Zero))
                {
                    Store (PWMR (PWMX), Local0)
                    Store (RTV (Local0), Local1)
                    Store (Zero, GVB2)
                    Store (Local1, GVB1)
                }
                Else
                {
                    Store (Zero, GVB1)
                    Store (0x04, GVB2)
                }

                Return (GVBF)
            }

            Method (GPIF, 1, NotSerialized)
            {
                PWMI ()
                Store (Zero, Local1)
                Store (Zero, Local0)
                While (One)
                {
                    If (LEqual (DerefOf (Index (PWMT, Local1)), 0xFF))
                    {
                        Store (0xFF, Local0)
                        Break
                    }

                    If (LEqual (DerefOf (Index (PWMT, Local1)), Arg0))
                    {
                        Store (0x08, Local2)
                        Store (Zero, Local3)
                        While (Local2)
                        {
                            Store (DerefOf (Index (PWMT, Add (Local1, Local3))), Index (
                                PWIF, Local3))
                            Increment (Local3)
                            Decrement (Local2)
                        }

                        Break
                    }

                    Add (Local1, 0x08, Local1)
                }

                If (LEqual (Local0, 0xFF))
                {
                    Return (0xFF)
                }

                Return (Zero)
            }

            Method (WTVR, 6, NotSerialized)
            {
                Name (PTGT, Zero)
                If (LOr (LGreater (Arg0, Arg2), LLess (Arg0, Arg3)))
                {
                    Store (Arg4, PTGT)
                }
                Else
                {
                    Store (Arg0, PTGT)
                }

                Store (PWMR (Arg1), Local0)
                RMPV (PTGT, Local0, Arg5, Arg1)
                Return (Zero)
            }

            Method (PWMR, 1, NotSerialized)
            {
                If (LEqual (Arg0, One)) {}
                Else
                {
                    If (LEqual (Arg0, 0x02)) {}
                    Else
                    {
                        If (LEqual (Arg0, 0x03)) {}
                        Else
                        {
                            If (LEqual (Arg0, 0x04)) {}
                            Else
                            {
                                If (LEqual (Arg0, 0x05)) {}
                                Else
                                {
                                    If (LEqual (Arg0, 0x06)) {}
                                    Else
                                    {
                                    }
                                }
                            }
                        }
                    }
                }

                Return (Zero)
            }

            Method (PWMW, 2, NotSerialized)
            {
                Store (Arg1, Local1)
                If (LEqual (Arg0, One)) {}
                Else
                {
                    If (LEqual (Arg0, 0x02)) {}
                    Else
                    {
                        If (LEqual (Arg0, 0x03)) {}
                        Else
                        {
                            If (LEqual (Arg0, 0x04)) {}
                            Else
                            {
                                If (LEqual (Arg0, 0x05)) {}
                                Else
                                {
                                    If (LEqual (Arg0, 0x06)) {}
                                }
                            }
                        }
                    }
                }

                Return (Zero)
            }

            Method (FPDV, 1, NotSerialized)
            {
                Store (PNMD, Local2)
                If (LEqual (Arg0, One)) {}
                Else
                {
                    If (LEqual (Arg0, 0x02)) {}
                    Else
                    {
                        If (LEqual (Arg0, 0x03)) {}
                        Else
                        {
                            If (LEqual (Arg0, 0x04)) {}
                            Else
                            {
                                If (LEqual (Arg0, 0x05)) {}
                                Else
                                {
                                    If (LEqual (Arg0, 0x06)) {}
                                }
                            }
                        }
                    }
                }
            }

            Method (RMPV, 4, NotSerialized)
            {
                Store (Arg0, Local0)
                Store (Arg1, Local1)
                While (One)
                {
                    If (LLess (ABS (Local0, Local1), Arg2))
                    {
                        Break
                    }

                    If (LGreater (Local0, Local1))
                    {
                        Add (Local1, Arg2, Local1)
                    }

                    If (LLess (Local0, Local1))
                    {
                        Subtract (Local1, Arg2, Local1)
                    }

                    PWMW (Arg3, Local1)
                    Sleep (0x64)
                }

                If (LNotEqual (Local0, Local1))
                {
                    PWMW (Arg3, Local0)
                }

                Sleep (0x02)
            }

            Name (GF01, Zero)
            Name (TSBF, Buffer (0x20)
            {
                /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0010 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0018 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
            })
            Name (GVBF, Buffer (0x05)
            {
                0x00, 0x00, 0x00, 0x00, 0x00
            })
            CreateDWordField (GVBF, Zero, GVB1)
            CreateByteField (GVBF, 0x04, GVB2)
            Method (AM01, 0, NotSerialized)
            {
                If (LNot (GF01))
                {
                    BM01 ()
                    Store (SMBU, Local5)
                    While (Not (LEqual (And (Local5, One), Zero)))
                    {
                        Sleep (0x0A)
                        Store (SMBU, Local5)
                    }

                    Store (One, SMBU)
                    CINI ()
                    Store (Zero, SMBU)
                    VINI ()
                    XINI ()
                    EM01 ()
                    Store (One, GF01)
                }

                Return (Zero)
            }

            Method (AM02, 0, NotSerialized)
            {
                Return (OBID)
            }

            Method (AM03, 1, NotSerialized)
            {
                SOID (Arg0)
                If (LEqual (ID01, One))
                {
                    Store (SMBU, Local5)
                    While (Not (LEqual (And (Local5, One), Zero)))
                    {
                        Sleep (0x0A)
                        Store (SMBU, Local5)
                    }

                    Store (One, SMBU)
                    GETC (ID02)
                    Store (Zero, SMBU)
                }
                Else
                {
                    If (LEqual (ID01, 0x02))
                    {
                        GETV (ID02)
                    }
                    Else
                    {
                        Store (Zero, GVB1)
                        Store (0x04, GVB2)
                        Store (GVBF, Local0)
                    }
                }

                Return (GVBF)
            }

            Method (AM04, 2, NotSerialized)
            {
                SOID (Arg0)
                If (LEqual (ID01, One))
                {
                    Store (SMBU, Local5)
                    While (Not (LEqual (And (Local5, One), Zero)))
                    {
                        Sleep (0x0A)
                        Store (SMBU, Local5)
                    }

                    Store (One, SMBU)
                    Store (SETC (ID02, Arg1), Local0)
                    Store (Zero, SMBU)
                }
                Else
                {
                    If (LEqual (ID01, 0x02))
                    {
                        SETV (ID02, Arg1)
                        Store (Zero, Local0)
                    }
                    Else
                    {
                        Store (0x04, Local0)
                    }
                }

                Return (Local0)
            }

            Method (AM05, 1, NotSerialized)
            {
                Name (INFO, Buffer (0x14)
                {
                    /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                    /* 0008 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                    /* 0010 */    0x00, 0x00, 0x00, 0x00
                })
                CreateDWordField (INFO, Zero, IFID)
                CreateDWordField (INFO, 0x04, IFMI)
                CreateDWordField (INFO, 0x08, IFMX)
                CreateDWordField (INFO, 0x0C, IFSP)
                CreateField (INFO, 0x80, 0x03, IFST)
                SOID (Arg0)
                BM05 (Arg0)
                CPTB (Arg0, INFO)
                EM05 (Arg0)
                Return (INFO)
            }

            Method (AM06, 0, NotSerialized)
            {
                HM06 ()
                Return (Zero)
            }

            Method (AM07, 1, NotSerialized)
            {
                HM07 (Arg0)
                Return (Zero)
            }

            Method (AM08, 1, NotSerialized)
            {
                Name (LODT, Package (0x34)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Store (Zero, Local0)
                While (One)
                {
                    If (LEqual (DerefOf (Index (OBDT, Local0)), Arg0))
                    {
                        Store (Zero, Local4)
                        Break
                    }

                    If (LEqual (DerefOf (Index (OBDT, Local0)), Zero))
                    {
                        Store (0x04, Local4)
                        Break
                    }

                    Add (Local0, DerefOf (Index (OBDT, Add (Local0, One))), 
                        Local0)
                    Add (Local0, 0x02, Local0)
                }

                If (Local4) {}
                Else
                {
                    Store (DerefOf (Index (OBDT, Add (Local0, One))), Local1)
                    Add (Local1, 0x02, Local1)
                    Store (Zero, Local2)
                    While (Local1)
                    {
                        Store (DerefOf (Index (OBDT, Local0)), Index (LODT, Local2))
                        Decrement (Local1)
                        Increment (Local0)
                        Increment (Local2)
                    }
                }

                Return (LODT)
            }

            Name (OBSV, Package (0x09)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (APTS, 1, NotSerialized)
            {
                If (LAnd (GF01, LOr (LEqual (Arg0, 0x04), LEqual (Arg0, 0x03))))
                {
                    Store (DerefOf (Index (OBID, Zero)), Local0)
                    Store (One, Local1)
                    Store (Zero, Local2)
                    While (Local0)
                    {
                        SOID (DerefOf (Index (OBID, Local1)))
                        If (LEqual (ID01, One))
                        {
                            Store (SMBU, Local5)
                            While (Not (LEqual (And (Local5, One), Zero)))
                            {
                                Sleep (0x0A)
                                Store (SMBU, Local5)
                            }

                            Store (One, SMBU)
                            GETC (ID02)
                            Store (Zero, SMBU)
                            Store (GVB1, Local3)
                        }
                        Else
                        {
                            If (LEqual (ID01, 0x02))
                            {
                                GETV (ID02)
                                Store (GVB1, Local3)
                            }
                            Else
                            {
                                Store (Zero, Local3)
                            }
                        }

                        Store (Local3, Index (OBSV, Local2))
                        Decrement (Local0)
                        Increment (Local1)
                        Increment (Local2)
                    }
                }
            }

            Method (AWAK, 1, NotSerialized)
            {
                If (LAnd (GF01, LOr (LEqual (Arg0, 0x04), LEqual (Arg0, 0x03))))
                {
                    Store (DerefOf (Index (OBID, Zero)), Local0)
                    Store (One, Local1)
                    Store (Zero, Local2)
                    While (Local0)
                    {
                        Store (DerefOf (Index (OBSV, Local2)), Local3)
                        SOID (DerefOf (Index (OBID, Local1)))
                        If (LEqual (ID01, One))
                        {
                            Store (SMBU, Local5)
                            While (Not (LEqual (And (Local5, One), Zero)))
                            {
                                Sleep (0x0A)
                                Store (SMBU, Local5)
                            }

                            Store (One, SMBU)
                            SETC (ID02, Local3)
                            Store (Zero, SMBU)
                        }
                        Else
                        {
                            If (LEqual (ID01, 0x02))
                            {
                                SETV (ID02, Local3)
                            }
                            Else
                            {
                            }
                        }

                        Decrement (Local0)
                        Increment (Local1)
                        Increment (Local2)
                    }
                }
            }

            Method (AM09, 0, NotSerialized)
            {
                Return (CMDV)
            }

            Method (AM10, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ACMD)
                CreateField (OBUF, Zero, Multiply (SizeOf (OBUF), 0x08), TEMP)
                Store (Zero, TEMP)
                CreateDWordField (OBUF, Zero, CMDS)
                If (LEqual (ACMD, 0x00030001))
                {
                    R301 ()
                }
                Else
                {
                    If (LEqual (ACMD, 0x00030002))
                    {
                        R302 (Arg0)
                    }
                    Else
                    {
                        If (LEqual (ACMD, 0x00030003))
                        {
                            R303 (Arg0)
                        }
                        Else
                        {
                            If (LEqual (ACMD, 0x00030004))
                            {
                                R304 (Arg0)
                            }
                            Else
                            {
                                If (LEqual (ACMD, 0x00040001))
                                {
                                    R401 (Arg0)
                                }
                                Else
                                {
                                    If (LEqual (ACMD, 0x00040002))
                                    {
                                        R402 (Arg0)
                                    }
                                    Else
                                    {
                                        If (LEqual (ACMD, 0x00040003))
                                        {
                                            R403 (Arg0)
                                        }
                                        Else
                                        {
                                            If (LEqual (ACMD, 0x00040004))
                                            {
                                                R404 (Arg0)
                                            }
                                            Else
                                            {
                                                If (LEqual (ACMD, 0x00050001))
                                                {
                                                    R501 (Arg0)
                                                }
                                                Else
                                                {
                                                    Store (0x00010000, CMDS)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                Return (OBUF)
            }

            Name (CMDL, Buffer (0x54) {})
            Method (AM11, 0, NotSerialized)
            {
                Name (TEMP, Zero)
                CreateDWordField (CMDL, Zero, CMDC)
                Add (TEMP, 0x04, TEMP)
                CreateDWordField (CMDL, TEMP, CMD1)
                Add (TEMP, 0x04, TEMP)
                Store (0x00030001, CMD1)
                CreateDWordField (CMDL, TEMP, CMD2)
                Add (TEMP, 0x04, TEMP)
                Store (0x00030002, CMD2)
                CreateDWordField (CMDL, TEMP, CMD3)
                Add (TEMP, 0x04, TEMP)
                Store (0x00030003, CMD3)
                CreateDWordField (CMDL, TEMP, CMD4)
                Add (TEMP, 0x04, TEMP)
                Store (0x00030004, CMD4)
                CreateDWordField (CMDL, TEMP, CMD5)
                Add (TEMP, 0x04, TEMP)
                Store (0x00040001, CMD5)
                CreateDWordField (CMDL, TEMP, CMD6)
                Add (TEMP, 0x04, TEMP)
                Store (0x00040002, CMD6)
                CreateDWordField (CMDL, TEMP, CMD7)
                Add (TEMP, 0x04, TEMP)
                Store (0x00040003, CMD7)
                CreateDWordField (CMDL, TEMP, CMD8)
                Add (TEMP, 0x04, TEMP)
                Store (0x00040004, CMD8)
                CreateDWordField (CMDL, TEMP, CMD9)
                Add (TEMP, 0x04, TEMP)
                Store (0x00050001, CMD9)
                Subtract (TEMP, 0x04, TEMP)
                Divide (TEMP, 0x04, , TEMP)
                Store (TEMP, CMDC)
                Return (CMDL)
            }

            Name (CMDV, One)
            Name (OBUF, Buffer (0x0400) {})
            Method (R301, 0, NotSerialized)
            {
                Store (DerefOf (Index (QLST, Zero)), Local0)
                CreateDWordField (OBUF, Zero, TMP1)
                CreateWordField (OBUF, 0x04, TMP2)
                Store (Local0, TMP2)
                Store (Zero, TMP1)
                Return (Zero)
            }

            Method (R302, 1, NotSerialized)
            {
                Name (CIDX, Zero)
                CreateWordField (Arg0, 0x04, IIDX)
                Store (One, CIDX)
                Store (DerefOf (Index (DerefOf (Index (QLST, IIDX)), CIDX)), 
                    Local0)
                Increment (CIDX)
                Store (0x20, Local1)
                CreateField (OBUF, Local1, 0x0100, TMP1)
                Store (Local0, TMP1)
                Add (Local1, 0x0100, Local1)
                Store (DerefOf (Index (DerefOf (Index (QLST, IIDX)), CIDX)), 
                    Local0)
                Increment (CIDX)
                CreateField (OBUF, Local1, 0x08, TMP2)
                Store (Local0, TMP2)
                Add (Local1, 0x08, Local1)
                Store (Local0, Local2)
                Divide (Local1, 0x08, , Local5)
                While (LGreater (Local2, Zero))
                {
                    Store (DerefOf (Index (DerefOf (Index (QLST, IIDX)), CIDX)), 
                        Local0)
                    Store (Local0, DG04)
                    Store (0x05, Local4)
                    Store (Zero, Local6)
                    While (LGreater (Local4, Zero))
                    {
                        If (LLess (Local6, SizeOf (Local0)))
                        {
                            Store (DerefOf (Index (Local0, Local6)), Index (OBUF, Local5))
                        }
                        Else
                        {
                            Store (Zero, Index (OBUF, Local5))
                        }

                        Increment (Local6)
                        Increment (Local5)
                        Decrement (Local4)
                    }

                    Add (Local1, 0x28, Local1)
                    Decrement (Local2)
                    Increment (CIDX)
                }

                Store (0x0370, Local1)
                Store (DerefOf (Index (DerefOf (Index (QLST, IIDX)), CIDX)), 
                    Local0)
                Increment (CIDX)
                CreateField (OBUF, Local1, 0x10, TMP3)
                Store (Local0, TMP3)
                Add (Local1, 0x10, Local1)
                Store (DerefOf (Index (DerefOf (Index (QLST, IIDX)), CIDX)), 
                    Local6)
                If (LEqual (ObjectType (Local6), 0x04))
                {
                    Store (SizeOf (Local6), Local2)
                    Divide (Local1, 0x08, , Local5)
                    Store (Zero, Local3)
                    While (LGreater (Local2, Zero))
                    {
                        Store (DerefOf (Index (Local6, Local3)), Local0)
                        Store (SizeOf (Local0), Local4)
                        Store (Zero, Local7)
                        While (LGreater (Local4, Zero))
                        {
                            Store (DerefOf (Index (Local0, Local7)), Index (OBUF, Local5))
                            Increment (Local7)
                            Increment (Local5)
                            Decrement (Local4)
                        }

                        Decrement (Local2)
                        Increment (Local3)
                    }
                }
                Else
                {
                    Store (Local0, Local2)
                    Divide (Local1, 0x08, , Local5)
                    While (LGreater (Local2, Zero))
                    {
                        Store (DerefOf (Index (DerefOf (Index (QLST, IIDX)), CIDX)), 
                            Local0)
                        Store (SizeOf (Local0), Local4)
                        Store (Zero, Local6)
                        While (LGreater (Local4, Zero))
                        {
                            Store (DerefOf (Index (Local0, Local6)), Index (OBUF, Local5))
                            Increment (Local6)
                            Increment (Local5)
                            Decrement (Local4)
                        }

                        Add (Local1, 0x80)
                        Decrement (Local2)
                        Increment (CIDX)
                    }
                }

                CreateDWordField (OBUF, Zero, TMP4)
                Store (Zero, TMP4)
                Return (Zero)
            }

            Method (R303, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x04, IITM)
                CreateDWordField (OBUF, Zero, TMP1)
                CreateWordField (OBUF, 0x04, TMP2)
                Store (DerefOf (Index (DerefOf (Index (QLST, IITM)), Zero)), 
                    Local0)
                Store (GCMS (Local0), Local1)
                CreateDWordField (Local1, Zero, TMP3)
                CreateWordField (Local1, 0x04, TMP4)
                Store (TMP3, TMP1)
                Store (TMP4, TMP2)
                Return (Zero)
            }

            Method (R304, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x04, IITM)
                CreateWordField (Arg0, 0x06, CMSD)
                CreateDWordField (OBUF, Zero, TMP1)
                Store (DerefOf (Index (DerefOf (Index (QLST, IITM)), Zero)), 
                    Local0)
                Store (SCMS (Local0, CMSD), TMP1)
                Return (Zero)
            }

            Name (VEND, Buffer (0x05)
            {
                "ASUS"
            })
            Method (R401, 1, NotSerialized)
            {
                CreateField (OBUF, 0x20, 0x0200, TMP2)
                Store (VEND, TMP2)
                Return (Zero)
            }

            Method (R402, 1, NotSerialized)
            {
                CreateField (OBUF, 0x20, 0x08, TMP1)
                CreateField (OBUF, 0x28, 0x08, TMP2)
                Store (GMOD, TMP1)
                Store (GFXO, TMP2)
                Return (Zero)
            }

            Name (TCIP, Package (0x04)
            {
                Package (0x0A)
                {
                    Zero, 
                    0x08, 
                    Package (0x04)
                    {
                        Zero, 
                        Zero, 
                        0x0A, 
                        Buffer (0x06)
                        {
                            "Vcore"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x02, 
                        0x0A, 
                        Buffer (0x05)
                        {
                            "3.3V"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x04, 
                        0x26, 
                        Buffer (0x05)
                        {
                            "+12V"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x05, 
                        0x20, 
                        Buffer (0x04)
                        {
                            "+5V"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        One, 
                        0x0A, 
                        Buffer (0x05)
                        {
                            "VIN4"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x03, 
                        0x0A, 
                        Buffer (0x0C)
                        {
                            "VIN_5_FAKED"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x06, 
                        0x0A, 
                        Buffer (0x0C)
                        {
                            "VIN_6_FAKED"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x07, 
                        0x0A, 
                        Buffer (0x0C)
                        {
                            "VIN_7_FAKED"
                        }
                    }
                }, 

                Package (0x0A)
                {
                    One, 
                    0x02, 
                    Package (0x04)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Buffer (0x10)
                        {
                            "CPU TEMPERATURE"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        One, 
                        0xFF, 
                        Buffer (0x10)
                        {
                            "MB TERMPERATURE"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x02, 
                        0xFF, 
                        Buffer (0x0C)
                        {
                            "ASUS_TMPIN2"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x03, 
                        0xFF, 
                        Buffer (0x07)
                        {
                            "TMPIN3"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x04, 
                        0xFF, 
                        Buffer (0x07)
                        {
                            "TMPIN4"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x05, 
                        0xFF, 
                        Buffer (0x07)
                        {
                            "TMPIN5"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x06, 
                        0xFF, 
                        Buffer (0x07)
                        {
                            "TMPIN6"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x07, 
                        0xFF, 
                        Buffer (0x07)
                        {
                            "TMPIN7"
                        }
                    }
                }, 

                Package (0x0A)
                {
                    0x02, 
                    0x03, 
                    Package (0x04)
                    {
                        Zero, 
                        Zero, 
                        0xFF, 
                        Buffer (0x08)
                        {
                            "CPU FAN"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        One, 
                        0xFF, 
                        Buffer (0x0C)
                        {
                            "CHASSIS FAN"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x02, 
                        0xFF, 
                        Buffer (0x0A)
                        {
                            "POWER FAN"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x03, 
                        0xFF, 
                        Buffer (0x0D)
                        {
                            "FANIN3_FAKED"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x04, 
                        0xFF, 
                        Buffer (0x0D)
                        {
                            "FANIN4_FAKED"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x05, 
                        0xFF, 
                        Buffer (0x0D)
                        {
                            "FANIN5_FAKED"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x06, 
                        0xFF, 
                        Buffer (0x0D)
                        {
                            "FANIN6_FAKED"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x07, 
                        0xFF, 
                        Buffer (0x0D)
                        {
                            "FANIN7_FAKED"
                        }
                    }
                }, 

                Package (0x0A)
                {
                    0x03, 
                    Zero, 
                    Package (0x04)
                    {
                        Zero, 
                        Zero, 
                        0xFF, 
                        Buffer (0x08)
                        {
                            "FANCTL0"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        One, 
                        0xFF, 
                        Buffer (0x08)
                        {
                            "FANCTL1"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x02, 
                        0xFF, 
                        Buffer (0x08)
                        {
                            "FANCTL2"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        One, 
                        0xFF, 
                        Buffer (0x08)
                        {
                            "FANCTL3"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x04, 
                        0xFF, 
                        Buffer (0x08)
                        {
                            "FANCTL4"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x05, 
                        0xFF, 
                        Buffer (0x08)
                        {
                            "FANCTL5"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x06, 
                        0xFF, 
                        Buffer (0x08)
                        {
                            "FANCTL6"
                        }
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x07, 
                        0xFF, 
                        Buffer (0x08)
                        {
                            "FANCTL7"
                        }
                    }
                }
            })
            Method (R403, 1, NotSerialized)
            {
                Name (TINX, Zero)
                CreateByteField (Arg0, 0x04, TCOT)
                CreateByteField (OBUF, 0x04, CNTC)
                Store (DerefOf (Index (TCIP, TCOT)), Local0)
                Store (DerefOf (Index (Local0, One)), Local1)
                Store (Local1, CNTC)
                Store ("CNTC", Debug)
                Store (CNTC, Debug)
                Store ("Local1", Debug)
                Store (Local1, Debug)
                Store (0x05, Local2)
                Store (0x02, TINX)
                While (Local1)
                {
                    Store ("Local2", Debug)
                    Store (Local2, Debug)
                    Store (DerefOf (Index (Local0, TINX)), Local7)
                    Store ("Local7", Debug)
                    Store (Local7, Debug)
                    Store (DerefOf (Index (Local7, Zero)), Index (OBUF, Local2))
                    Increment (Local2)
                    Store (DerefOf (Index (Local7, One)), Index (OBUF, Local2))
                    Increment (Local2)
                    Store (DerefOf (Index (Local7, 0x02)), Index (OBUF, Local2))
                    Increment (Local2)
                    Store (DerefOf (Index (Local7, 0x03)), Local4)
                    Store ("Local4", Debug)
                    Store (Local4, Debug)
                    Store (SizeOf (Local4), Local3)
                    If (LGreater (Local3, 0x20))
                    {
                        Store (0x1F, Local3)
                    }

                    Subtract (0x20, Local3, Local6)
                    Store ("Local3", Debug)
                    Store (Local3, Debug)
                    Store (Zero, Local5)
                    While (Local3)
                    {
                        Store (DerefOf (Index (Local4, Local5)), Index (OBUF, Local2))
                        Increment (Local2)
                        Increment (Local5)
                        Decrement (Local3)
                    }

                    Store ("Local6", Debug)
                    Store (Local6, Debug)
                    Store ("OBUF", Debug)
                    Store (OBUF, Debug)
                    Add (Local2, Local6, Local2)
                    Decrement (Local1)
                    Increment (TINX)
                }

                Return (Zero)
            }

            Method (R404, 1, NotSerialized)
            {
                CreateDWordField (OBUF, 0x04, VDIO)
                GETV (One)
                Store (GVB1, VDIO)
                Return (Zero)
            }

            Method (R501, 1, NotSerialized)
            {
                CreateByteField (Arg0, 0x04, MOPV)
                If (LEqual (MOPV, One))
                {
                    Store (0x1F, Local0)
                }

                Multiply (Local0, 0x08, Local1)
                CreateField (Arg0, 0x20, Local1, MOPD)
                STNV (MOPD, Local1)
            }

            Name (WQBA, Buffer (0x0BBB)
            {
                /* 0000 */    0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00, 
                /* 0008 */    0xAB, 0x0B, 0x00, 0x00, 0x20, 0x4A, 0x00, 0x00, 
                /* 0010 */    0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54, 
                /* 0018 */    0x28, 0x5B, 0xA4, 0x00, 0x01, 0x06, 0x18, 0x42, 
                /* 0020 */    0x10, 0x15, 0x10, 0x22, 0x21, 0x04, 0x12, 0x01, 
                /* 0028 */    0xA1, 0xC8, 0x2C, 0x0C, 0x86, 0x10, 0x38, 0x2E, 
                /* 0030 */    0x84, 0x1C, 0x40, 0x48, 0x1C, 0x14, 0x4A, 0x08, 
                /* 0038 */    0x84, 0xFA, 0x13, 0xC8, 0xAF, 0x00, 0x84, 0x0E, 
                /* 0040 */    0x05, 0xC8, 0x14, 0x60, 0x50, 0x80, 0x53, 0x04, 
                /* 0048 */    0x11, 0xF4, 0x2A, 0xC0, 0xA6, 0x00, 0x93, 0x02, 
                /* 0050 */    0x2C, 0x0A, 0xD0, 0x2E, 0xC0, 0xB2, 0x00, 0xDD, 
                /* 0058 */    0x02, 0xA4, 0xC3, 0x92, 0xAD, 0x08, 0x1C, 0x21, 
                /* 0060 */    0x06, 0x1C, 0xA5, 0x13, 0x5B, 0xB8, 0x61, 0x83, 
                /* 0068 */    0x17, 0x8A, 0xA2, 0x19, 0x44, 0x49, 0x50, 0xB9, 
                /* 0070 */    0x00, 0xDF, 0x08, 0x02, 0x2F, 0x57, 0x80, 0xE4, 
                /* 0078 */    0x09, 0x48, 0xB3, 0x00, 0xC3, 0x02, 0xAC, 0x0B, 
                /* 0080 */    0x90, 0x3D, 0x04, 0x2A, 0x75, 0x08, 0x28, 0x39, 
                /* 0088 */    0x43, 0x40, 0x0D, 0xA0, 0xD5, 0x09, 0x08, 0xBF, 
                /* 0090 */    0xD2, 0x29, 0x21, 0x09, 0xC2, 0x19, 0xAB, 0x78, 
                /* 0098 */    0x7C, 0xCD, 0xA2, 0xE9, 0x39, 0xC9, 0x39, 0x86, 
                /* 00A0 */    0x1C, 0x8F, 0x0B, 0x3D, 0x08, 0x1E, 0x47, 0x03, 
                /* 00A8 */    0x08, 0x93, 0x3F, 0x64, 0x05, 0x80, 0x41, 0x49, 
                /* 00B0 */    0x18, 0x0B, 0x75, 0x31, 0x6A, 0xD4, 0x48, 0xD9, 
                /* 00B8 */    0x80, 0x0C, 0x51, 0xDA, 0xA8, 0xD1, 0x03, 0x3A, 
                /* 00C0 */    0xBF, 0x23, 0x39, 0xBB, 0xA3, 0x3B, 0x92, 0x04, 
                /* 00C8 */    0x46, 0x3D, 0xA6, 0x63, 0x2C, 0x6C, 0x46, 0x42, 
                /* 00D0 */    0x8D, 0xD1, 0x1C, 0x14, 0x09, 0x37, 0x68, 0xB4, 
                /* 00D8 */    0x44, 0x58, 0x8D, 0x2B, 0xF6, 0x99, 0x59, 0xF8, 
                /* 00E0 */    0xB0, 0x84, 0x71, 0x04, 0x07, 0x76, 0xB0, 0x16, 
                /* 00E8 */    0x0D, 0x23, 0xB4, 0x82, 0xE0, 0x34, 0x88, 0xA3, 
                /* 00F0 */    0x88, 0x12, 0x86, 0xE1, 0x19, 0x33, 0xD0, 0x51, 
                /* 00F8 */    0x32, 0xA4, 0x30, 0x41, 0x4F, 0x20, 0xC8, 0xC9, 
                /* 0100 */    0x33, 0x2C, 0x43, 0x9C, 0x01, 0xC7, 0x8A, 0x11, 
                /* 0108 */    0x2A, 0x24, 0x66, 0x20, 0xC1, 0xFF, 0xFF, 0x27, 
                /* 0110 */    0xD0, 0x35, 0x86, 0x3C, 0x03, 0x91, 0x7B, 0xC0, 
                /* 0118 */    0x09, 0x04, 0x89, 0x1E, 0x25, 0xB8, 0x71, 0x8D, 
                /* 0120 */    0xCA, 0xC6, 0x74, 0x36, 0xB8, 0x81, 0x99, 0x20, 
                /* 0128 */    0xCE, 0xE1, 0x61, 0x64, 0x40, 0x68, 0x02, 0xF1, 
                /* 0130 */    0x63, 0x87, 0x4F, 0x60, 0xF7, 0xC7, 0x01, 0x29, 
                /* 0138 */    0x44, 0xD0, 0x85, 0xE0, 0x4C, 0x6B, 0x14, 0x60, 
                /* 0140 */    0xED, 0xEC, 0x20, 0x5B, 0x10, 0x3A, 0x0B, 0xC4, 
                /* 0148 */    0x6A, 0x0C, 0x45, 0x10, 0x11, 0x82, 0x46, 0x31, 
                /* 0150 */    0x5E, 0x84, 0x50, 0x21, 0xA2, 0x44, 0x3D, 0xE7, 
                /* 0158 */    0x20, 0xB5, 0x09, 0x50, 0x06, 0x22, 0xB4, 0x60, 
                /* 0160 */    0x46, 0x60, 0xF6, 0x07, 0x41, 0x24, 0x58, 0x80, 
                /* 0168 */    0xF8, 0x23, 0xB0, 0x84, 0x13, 0x81, 0x8C, 0x8C, 
                /* 0170 */    0x86, 0x1E, 0x16, 0x7C, 0x12, 0x60, 0x07, 0x04, 
                /* 0178 */    0xCF, 0xE7, 0xD4, 0x4C, 0xE0, 0xC0, 0x10, 0xE2, 
                /* 0180 */    0x95, 0x00, 0x51, 0x47, 0x0B, 0x4A, 0x60, 0x29, 
                /* 0188 */    0x47, 0x03, 0x62, 0x7B, 0x60, 0xBA, 0x07, 0x1C, 
                /* 0190 */    0xE1, 0xB9, 0xFB, 0x72, 0x70, 0x6A, 0xFE, 0x69, 
                /* 0198 */    0x78, 0x9A, 0x0F, 0x09, 0x98, 0x21, 0x7A, 0xAC, 
                /* 01A0 */    0x07, 0x11, 0xF0, 0x10, 0xD9, 0x29, 0xC1, 0x80, 
                /* 01A8 */    0x78, 0xEF, 0xD7, 0x02, 0x32, 0x82, 0x97, 0x04, 
                /* 01B0 */    0x03, 0x7A, 0x12, 0x0F, 0x08, 0x60, 0x39, 0x68, 
                /* 01B8 */    0x1C, 0xF8, 0x09, 0x55, 0x7C, 0x07, 0xA0, 0x47, 
                /* 01C0 */    0x02, 0x36, 0xA3, 0xF8, 0x26, 0x28, 0xEB, 0xF8, 
                /* 01C8 */    0x80, 0x9E, 0x73, 0xB4, 0x67, 0x87, 0x97, 0x85, 
                /* 01D0 */    0x66, 0xAF, 0x18, 0x84, 0xE0, 0x35, 0xC0, 0x37, 
                /* 01D8 */    0x05, 0x9F, 0x46, 0x2C, 0x69, 0x75, 0x72, 0xB2, 
                /* 01E0 */    0x2A, 0x8F, 0x98, 0x82, 0x7B, 0x08, 0x5C, 0x04, 
                /* 01E8 */    0x9C, 0x86, 0xEE, 0xF1, 0x82, 0x43, 0xC1, 0x78, 
                /* 01F0 */    0xE9, 0xFF, 0x7F, 0xBC, 0xE0, 0x3E, 0x0F, 0x1C, 
                /* 01F8 */    0x2F, 0x58, 0x4E, 0x09, 0x55, 0x5D, 0x36, 0x34, 
                /* 0200 */    0x87, 0xF3, 0x6D, 0x1E, 0x9F, 0x1C, 0x2D, 0x3C, 
                /* 0208 */    0x61, 0x36, 0x96, 0xA3, 0x62, 0xC7, 0x10, 0x36, 
                /* 0210 */    0x3A, 0x3E, 0x0A, 0x0F, 0xF8, 0xB5, 0xA1, 0x58, 
                /* 0218 */    0x10, 0x99, 0x80, 0xD0, 0x91, 0xE1, 0xC0, 0xC1, 
                /* 0220 */    0xE2, 0xEC, 0x00, 0x21, 0x02, 0x0B, 0x1B, 0x39, 
                /* 0228 */    0x7A, 0xC4, 0x1E, 0xD4, 0x3B, 0x8C, 0x31, 0x1E, 
                /* 0230 */    0x08, 0x8C, 0x7A, 0x48, 0x07, 0x0F, 0x3E, 0x40, 
                /* 0238 */    0x0F, 0x1E, 0x70, 0xFA, 0xFF, 0x27, 0xB0, 0xA0, 
                /* 0240 */    0x21, 0x4B, 0xC4, 0xE0, 0xD1, 0xA7, 0x08, 0x0F, 
                /* 0248 */    0xE7, 0xDD, 0x87, 0x1F, 0x44, 0x12, 0x38, 0x3C, 
                /* 0250 */    0x84, 0x06, 0x0F, 0x9E, 0xB3, 0x8F, 0x07, 0x0F, 
                /* 0258 */    0x7E, 0x79, 0x83, 0x07, 0xD1, 0x14, 0x8E, 0x0D, 
                /* 0260 */    0x77, 0xB0, 0xF1, 0xC0, 0xC1, 0x3D, 0x5C, 0xFC, 
                /* 0268 */    0x90, 0x70, 0x67, 0x2D, 0x78, 0x3E, 0x27, 0x4F, 
                /* 0270 */    0x06, 0xF0, 0x12, 0x84, 0x3B, 0x6C, 0x01, 0x97, 
                /* 0278 */    0x11, 0x70, 0x99, 0xAB, 0xA4, 0x87, 0x2A, 0x0B, 
                /* 0280 */    0x83, 0x41, 0x9D, 0xAB, 0xC0, 0xFB, 0xFF, 0x3F, 
                /* 0288 */    0x57, 0x01, 0xF6, 0x2F, 0x53, 0xEF, 0x53, 0x3E, 
                /* 0290 */    0x57, 0x81, 0x3B, 0xDA, 0x79, 0x40, 0xE7, 0x16, 
                /* 0298 */    0x72, 0x9A, 0x41, 0x1F, 0x0A, 0x7C, 0x06, 0x78, 
                /* 02A0 */    0x92, 0x01, 0xDB, 0xA1, 0x0A, 0x38, 0x9C, 0x64, 
                /* 02A8 */    0xC0, 0x73, 0x2B, 0x7B, 0x92, 0x61, 0xFF, 0xFF, 
                /* 02B0 */    0x93, 0x0C, 0x38, 0x0F, 0x62, 0x3E, 0xC9, 0x80, 
                /* 02B8 */    0xEF, 0xE8, 0x85, 0x3B, 0x81, 0xC0, 0xF3, 0x38, 
                /* 02C0 */    0x24, 0x21, 0x1F, 0x42, 0xF0, 0x43, 0x3A, 0xA6, 
                /* 02C8 */    0x67, 0x10, 0x60, 0x28, 0xE4, 0x65, 0xE0, 0x03, 
                /* 02D0 */    0x08, 0x8D, 0x7E, 0x06, 0x01, 0xB4, 0xFF, 0xFF, 
                /* 02D8 */    0xCF, 0x20, 0xC0, 0xE5, 0xAC, 0xF0, 0x0C, 0x02, 
                /* 02E0 */    0x76, 0xF1, 0xAF, 0x3A, 0x9D, 0x07, 0x1C, 0x1C, 
                /* 02E8 */    0x42, 0x4E, 0x8E, 0x8A, 0xA8, 0xE1, 0x58, 0xEB, 
                /* 02F0 */    0x41, 0x80, 0x8C, 0xE7, 0x45, 0xC0, 0x41, 0x4F, 
                /* 02F8 */    0x8A, 0x40, 0xF7, 0xAC, 0x81, 0x3B, 0x1F, 0xC0, 
                /* 0300 */    0x3D, 0x12, 0xF2, 0x73, 0x07, 0xF8, 0xA2, 0x43, 
                /* 0308 */    0xE8, 0x98, 0x89, 0x3F, 0x51, 0x79, 0x88, 0x3E, 
                /* 0310 */    0x1B, 0x98, 0xC0, 0xA3, 0x05, 0xD7, 0x39, 0x11, 
                /* 0318 */    0x5C, 0xFF, 0xFF, 0xD1, 0xC2, 0x3B, 0x69, 0xE0, 
                /* 0320 */    0x46, 0x0B, 0xF7, 0x00, 0xFC, 0x58, 0x80, 0x39, 
                /* 0328 */    0x62, 0x82, 0xEB, 0xD0, 0x02, 0xA6, 0xEB, 0x02, 
                /* 0330 */    0xE6, 0xD2, 0x82, 0x3F, 0xB4, 0x00, 0x1F, 0xA1, 
                /* 0338 */    0x27, 0x16, 0x94, 0xB4, 0x43, 0x0B, 0xA0, 0xF9, 
                /* 0340 */    0xFF, 0x7F, 0x68, 0x01, 0x6E, 0x73, 0x7D, 0x68, 
                /* 0348 */    0x01, 0x7B, 0xB8, 0x73, 0x18, 0x95, 0x73, 0x0E, 
                /* 0350 */    0x83, 0x76, 0x68, 0xF6, 0x39, 0x0C, 0xB8, 0x1E, 
                /* 0358 */    0x26, 0xF0, 0x87, 0x4A, 0xB8, 0xB3, 0x88, 0x1F, 
                /* 0360 */    0x27, 0xDA, 0x5B, 0x80, 0xCF, 0xA7, 0xC0, 0xED, 
                /* 0368 */    0xB0, 0x86, 0x3B, 0x82, 0xC0, 0xBB, 0x14, 0x9C, 
                /* 0370 */    0x96, 0xA7, 0xF6, 0xD4, 0x7F, 0x70, 0x8D, 0x5F, 
                /* 0378 */    0x41, 0xC8, 0x3D, 0xC6, 0x77, 0x10, 0xF6, 0xFF, 
                /* 0380 */    0x3F, 0x88, 0x01, 0x37, 0x19, 0x07, 0x31, 0x54, 
                /* 0388 */    0xF0, 0x43, 0x08, 0x40, 0xA1, 0xCB, 0xC2, 0x43, 
                /* 0390 */    0x08, 0xD8, 0xA5, 0x1F, 0xC4, 0x68, 0xEC, 0x83, 
                /* 0398 */    0x18, 0xEA, 0xFF, 0x7F, 0x82, 0xC7, 0x9F, 0xC3, 
                /* 03A0 */    0x00, 0xA7, 0x67, 0x38, 0xB8, 0x51, 0x8F, 0x61, 
                /* 03A8 */    0x80, 0xA2, 0xB3, 0x28, 0x70, 0x82, 0x78, 0x0E, 
                /* 03B0 */    0x63, 0xFF, 0xFF, 0x73, 0x18, 0xF0, 0x14, 0xFC, 
                /* 03B8 */    0x12, 0xF0, 0x81, 0x85, 0x4A, 0x84, 0x41, 0x9D, 
                /* 03C0 */    0x59, 0x00, 0xDE, 0x1C, 0x90, 0x9F, 0x59, 0xC0, 
                /* 03C8 */    0x1E, 0xF2, 0xAD, 0xA1, 0x1F, 0x81, 0xFF, 0xFF, 
                /* 03D0 */    0x67, 0x16, 0xC0, 0xF5, 0x99, 0xDC, 0x63, 0xC5, 
                /* 03D8 */    0x1D, 0x22, 0xD8, 0x48, 0x42, 0xBE, 0x0A, 0xBC, 
                /* 03E0 */    0x15, 0x98, 0xC0, 0x91, 0x0F, 0x2D, 0x40, 0xF7, 
                /* 03E8 */    0x6C, 0x82, 0x1B, 0x2D, 0xDC, 0xE3, 0xC8, 0x39, 
                /* 03F0 */    0x9E, 0xD0, 0xBB, 0xF9, 0xEB, 0x03, 0x3B, 0x4D, 
                /* 03F8 */    0xB0, 0x21, 0x83, 0x57, 0xDE, 0x21, 0x10, 0xF5, 
                /* 0400 */    0xFF, 0x1F, 0xB2, 0x0F, 0x24, 0x9E, 0xC2, 0xCB, 
                /* 0408 */    0x0C, 0x66, 0x26, 0x31, 0x0E, 0x24, 0xC2, 0xB1, 
                /* 0410 */    0x78, 0x78, 0xE4, 0x28, 0x08, 0xAA, 0x33, 0x3F, 
                /* 0418 */    0x19, 0x35, 0xE8, 0x67, 0xF7, 0x84, 0x0F, 0x9E, 
                /* 0420 */    0xE9, 0xBE, 0xE1, 0x83, 0xE1, 0x30, 0x08, 0x73, 
                /* 0428 */    0xCE, 0x1E, 0x3F, 0xF8, 0x8E, 0x3D, 0xB8, 0x73, 
                /* 0430 */    0x10, 0xBC, 0xEB, 0x8A, 0x91, 0x4F, 0xE8, 0x25, 
                /* 0438 */    0x00, 0x73, 0x6B, 0xC1, 0x9E, 0x05, 0x81, 0x93, 
                /* 0440 */    0xAC, 0x83, 0x20, 0x4A, 0xC8, 0x59, 0x10, 0x54, 
                /* 0448 */    0xFF, 0xFF, 0x83, 0x10, 0xC0, 0x04, 0x6F, 0xF7, 
                /* 0450 */    0x20, 0x5D, 0x83, 0x7C, 0x1B, 0x78, 0x1A, 0x78, 
                /* 0458 */    0xF8, 0x89, 0xF2, 0x20, 0xE4, 0x8B, 0xC4, 0x0B, 
                /* 0460 */    0x41, 0x84, 0x28, 0xC7, 0x7B, 0x02, 0x11, 0x9E, 
                /* 0468 */    0x86, 0x3C, 0xE1, 0x30, 0xE1, 0x4E, 0x36, 0xCA, 
                /* 0470 */    0x4B, 0x43, 0x18, 0x43, 0xC7, 0x0A, 0x14, 0x39, 
                /* 0478 */    0x7E, 0x08, 0x1F, 0x85, 0x7C, 0x10, 0x62, 0x51, 
                /* 0480 */    0xCE, 0xB7, 0xF4, 0xFC, 0x61, 0x23, 0x67, 0x11, 
                /* 0488 */    0xD4, 0x49, 0xC0, 0x87, 0x0E, 0x0F, 0xEA, 0x09, 
                /* 0490 */    0x01, 0x13, 0x1A, 0x42, 0x47, 0x5C, 0xE0, 0x7A, 
                /* 0498 */    0xDA, 0xC0, 0xFD, 0xFF, 0x8F, 0x42, 0xE0, 0x38, 
                /* 04A0 */    0x80, 0xC0, 0x7B, 0x47, 0xF8, 0xB4, 0x0E, 0x2E, 
                /* 04A8 */    0x08, 0x9F, 0x3F, 0xE0, 0xFB, 0x44, 0x16, 0xEE, 
                /* 04B0 */    0x5B, 0xC0, 0x0B, 0x0D, 0xEE, 0xEC, 0x01, 0x7C, 
                /* 04B8 */    0xE4, 0x1E, 0x6B, 0x51, 0x02, 0x61, 0x50, 0x67, 
                /* 04C0 */    0x0F, 0xC0, 0xF9, 0xFF, 0xFF, 0xEC, 0x01, 0xD6, 
                /* 04C8 */    0x81, 0x3E, 0x7A, 0x1C, 0xE8, 0x31, 0x06, 0x89, 
                /* 04D0 */    0x11, 0xC4, 0x77, 0x0E, 0x1F, 0x7C, 0xE2, 0xBC, 
                /* 04D8 */    0x11, 0x3C, 0x7B, 0xF8, 0xC8, 0x71, 0x5C, 0x3E, 
                /* 04E0 */    0x80, 0xF8, 0xEC, 0xE1, 0x2B, 0x88, 0xF1, 0xC2, 
                /* 04E8 */    0xC4, 0x7C, 0x38, 0xF2, 0x35, 0x21, 0x5E, 0xE4, 
                /* 04F0 */    0xB0, 0x61, 0x22, 0xFB, 0xEC, 0xC1, 0x22, 0x1E, 
                /* 04F8 */    0x6B, 0xA9, 0x94, 0x83, 0x19, 0xFA, 0x4C, 0xE0, 
                /* 0500 */    0x5B, 0xC2, 0x99, 0xBD, 0x71, 0x44, 0x38, 0xAE, 
                /* 0508 */    0x93, 0x3B, 0x9F, 0x38, 0x1E, 0xD2, 0x49, 0xFB, 
                /* 0510 */    0x6C, 0x06, 0xBE, 0xE3, 0x07, 0x70, 0x38, 0x9B, 
                /* 0518 */    0x81, 0x67, 0x74, 0x70, 0x0F, 0x53, 0xE0, 0x93, 
                /* 0520 */    0x75, 0x36, 0x43, 0x0F, 0xCB, 0xE7, 0x82, 0x57, 
                /* 0528 */    0x07, 0x0F, 0x82, 0x9D, 0xCB, 0xC0, 0x75, 0xB8, 
                /* 0530 */    0x83, 0xF3, 0xFF, 0x3F, 0x97, 0x01, 0xAF, 0x73, 
                /* 0538 */    0xC7, 0x91, 0xB1, 0x53, 0x05, 0x47, 0x3C, 0xA8, 
                /* 0540 */    0x33, 0x79, 0x77, 0x39, 0x6B, 0x1F, 0x3C, 0x02, 
                /* 0548 */    0x9D, 0xE7, 0x29, 0xFB, 0x1C, 0x03, 0x73, 0x84, 
                /* 0550 */    0x1E, 0x3B, 0xF8, 0x0E, 0x26, 0xF8, 0x83, 0x0C, 
                /* 0558 */    0x1C, 0x98, 0x13, 0x38, 0xBA, 0x40, 0xA7, 0x10, 
                /* 0560 */    0xE7, 0x14, 0x9E, 0x63, 0x80, 0x91, 0x1C, 0x4B, 
                /* 0568 */    0x20, 0x2C, 0xC0, 0xB1, 0x40, 0xA2, 0x96, 0x49, 
                /* 0570 */    0x61, 0x7C, 0x32, 0xF0, 0x39, 0x06, 0xAE, 0x24, 
                /* 0578 */    0x38, 0xD4, 0xF8, 0x3C, 0xB2, 0x97, 0xBC, 0xE3, 
                /* 0580 */    0x3C, 0x91, 0x37, 0x04, 0x8F, 0xFF, 0x81, 0x06, 
                /* 0588 */    0xC6, 0xC0, 0x3D, 0xAD, 0x93, 0xF2, 0x4D, 0xEE, 
                /* 0590 */    0xB1, 0xC4, 0x67, 0x43, 0x7E, 0x5C, 0x60, 0x68, 
                /* 0598 */    0xFC, 0x74, 0x03, 0x86, 0xFF, 0xFF, 0xE9, 0x06, 
                /* 05A0 */    0xCE, 0x9D, 0xC1, 0x47, 0x0D, 0xB0, 0x5C, 0x6D, 
                /* 05A8 */    0x30, 0x58, 0xA1, 0x62, 0x34, 0x7A, 0xD7, 0x23, 
                /* 05B0 */    0xA0, 0xC7, 0xD7, 0xD7, 0x45, 0x9A, 0x42, 0x45, 
                /* 05B8 */    0x0C, 0xF1, 0x42, 0x60, 0x97, 0xC7, 0x71, 0xE4, 
                /* 05C0 */    0x59, 0x17, 0x5C, 0xD8, 0xCF, 0xBA, 0x60, 0x0F, 
                /* 05C8 */    0x75, 0x4E, 0xA2, 0x91, 0x46, 0x83, 0x3A, 0xC8, 
                /* 05D0 */    0xF0, 0x03, 0xC1, 0x63, 0x90, 0x4F, 0x1E, 0x06, 
                /* 05D8 */    0x39, 0xD1, 0xD3, 0x7A, 0x5C, 0x78, 0x1A, 0xF0, 
                /* 05E0 */    0xB8, 0xD9, 0x35, 0xC1, 0x1F, 0x04, 0x1F, 0x0F, 
                /* 05E8 */    0xF0, 0x97, 0xA0, 0x80, 0x27, 0xFA, 0xF0, 0x01, 
                /* 05F0 */    0xEB, 0x10, 0x82, 0x3F, 0x61, 0xC0, 0x1F, 0x8F, 
                /* 05F8 */    0x8F, 0x01, 0x3E, 0xD1, 0xFA, 0x48, 0x45, 0x06, 
                /* 0600 */    0x81, 0x3A, 0xBC, 0xF1, 0x91, 0x9E, 0xD6, 0xDB, 
                /* 0608 */    0x80, 0x0F, 0x09, 0x87, 0xC5, 0x0E, 0x1E, 0x3E, 
                /* 0610 */    0xA3, 0x80, 0x63, 0x3C, 0xF0, 0x6F, 0x9F, 0x4F, 
                /* 0618 */    0x07, 0xFF, 0xFF, 0x08, 0xAF, 0x0C, 0x9E, 0xAF, 
                /* 0620 */    0x0F, 0x66, 0x60, 0xB9, 0x75, 0xF8, 0xD0, 0x10, 
                /* 0628 */    0xEA, 0xA9, 0xC3, 0x33, 0x78, 0xBF, 0xF0, 0x09, 
                /* 0630 */    0x04, 0x98, 0x04, 0x36, 0x34, 0x48, 0x26, 0x73, 
                /* 0638 */    0x9D, 0xB2, 0x71, 0xDA, 0xA1, 0xC3, 0xB4, 0xC8, 
                /* 0640 */    0x03, 0x82, 0x8E, 0x06, 0x3E, 0xD2, 0xF8, 0x80, 
                /* 0648 */    0xCB, 0x0F, 0x49, 0x86, 0xB0, 0x30, 0x0A, 0x9D, 
                /* 0650 */    0x7C, 0x3C, 0x1A, 0x0F, 0x8F, 0xC0, 0x51, 0x10, 
                /* 0658 */    0x8F, 0xDC, 0x21, 0x21, 0x64, 0xE4, 0x10, 0x80, 
                /* 0660 */    0x3E, 0x2C, 0x30, 0x88, 0x87, 0x2E, 0x13, 0xF8, 
                /* 0668 */    0xD8, 0xE0, 0xF3, 0x1A, 0x9C, 0xE3, 0x91, 0x27, 
                /* 0670 */    0xE3, 0x69, 0x78, 0xDC, 0xB8, 0x53, 0x07, 0xDC, 
                /* 0678 */    0x71, 0xE0, 0x0F, 0x3A, 0xF8, 0x53, 0x20, 0x3F, 
                /* 0680 */    0x27, 0x91, 0xF3, 0x1F, 0xA8, 0x04, 0x9E, 0x0B, 
                /* 0688 */    0x40, 0x01, 0xE4, 0xAB, 0x80, 0x95, 0x1E, 0x07, 
                /* 0690 */    0xE8, 0x14, 0x42, 0x84, 0x89, 0x66, 0x78, 0x4C, 
                /* 0698 */    0xF0, 0xD3, 0x17, 0x1D, 0x8F, 0x87, 0xE5, 0xFF, 
                /* 06A0 */    0xFF, 0x20, 0xF9, 0xF1, 0x85, 0x61, 0x3F, 0x9D, 
                /* 06A8 */    0xF8, 0xD4, 0x76, 0x8C, 0xEF, 0x05, 0x8F, 0x5F, 
                /* 06B0 */    0x18, 0x58, 0x0F, 0x9B, 0xC3, 0x1A, 0x2D, 0xEC, 
                /* 06B8 */    0xD1, 0x3E, 0x3E, 0xF8, 0xEA, 0xE1, 0x89, 0xF9, 
                /* 06C0 */    0x16, 0xE7, 0x43, 0x07, 0x58, 0x0E, 0x52, 0xC0, 
                /* 06C8 */    0xE3, 0xFC, 0xC3, 0xE6, 0xF0, 0x02, 0xF1, 0x1C, 
                /* 06D0 */    0xE6, 0x83, 0x07, 0x3B, 0xF1, 0xB1, 0x53, 0x1F, 
                /* 06D8 */    0xD7, 0x75, 0x8E, 0x43, 0x9C, 0x21, 0xF8, 0x20, 
                /* 06E0 */    0x1C, 0x67, 0x91, 0xF2, 0x38, 0x53, 0x72, 0x95, 
                /* 06E8 */    0x7C, 0xE0, 0xA8, 0x1A, 0x45, 0xF0, 0xBE, 0x15, 
                /* 06F0 */    0xB0, 0x08, 0xC7, 0x08, 0x94, 0x78, 0x0A, 0x49, 
                /* 06F8 */    0x3F, 0x46, 0xA0, 0xC4, 0xC2, 0x51, 0x10, 0x1F, 
                /* 0700 */    0x23, 0x7C, 0x90, 0xB0, 0x8D, 0x63, 0x04, 0x6A, 
                /* 0708 */    0x8C, 0x3E, 0x0C, 0xF2, 0xA3, 0x00, 0x3F, 0x45, 
                /* 0710 */    0xC0, 0x3F, 0xF1, 0xE0, 0xC6, 0x0A, 0x77, 0x70, 
                /* 0718 */    0x6C, 0x85, 0x2F, 0x3D, 0x87, 0x76, 0x76, 0x0F, 
                /* 0720 */    0x09, 0x51, 0xDE, 0x5F, 0x8D, 0x18, 0x21, 0x60, 
                /* 0728 */    0xD8, 0x68, 0x1E, 0x23, 0xEE, 0xD8, 0xCE, 0x2E, 
                /* 0730 */    0x45, 0x9E, 0x53, 0xAC, 0x47, 0x25, 0x7E, 0xA4, 
                /* 0738 */    0x80, 0xF7, 0xFF, 0x27, 0xF0, 0x31, 0x0F, 0x77, 
                /* 0740 */    0xA4, 0x80, 0x33, 0x93, 0xF3, 0xC0, 0xA8, 0x1B, 
                /* 0748 */    0x8B, 0xE0, 0x8D, 0xF6, 0x92, 0x8D, 0x3D, 0x58, 
                /* 0750 */    0x00, 0x8F, 0x13, 0xA3, 0x0F, 0x16, 0xE0, 0x3A, 
                /* 0758 */    0x13, 0xF8, 0x60, 0x01, 0x5C, 0xCF, 0x07, 0x3E, 
                /* 0760 */    0x1D, 0x80, 0xF5, 0xF2, 0xC3, 0xEF, 0x07, 0x30, 
                /* 0768 */    0x4E, 0x18, 0x30, 0xCE, 0x07, 0x98, 0x1B, 0x86, 
                /* 0770 */    0xC3, 0x2C, 0x59, 0x27, 0x0C, 0x7E, 0x5C, 0x73, 
                /* 0778 */    0xA4, 0xD5, 0x6A, 0x20, 0xEC, 0x12, 0x86, 0x23, 
                /* 0780 */    0x18, 0x04, 0x4C, 0x27, 0x0B, 0x8F, 0xDA, 0x11, 
                /* 0788 */    0x28, 0x24, 0xED, 0x80, 0x81, 0x12, 0x73, 0xC0, 
                /* 0790 */    0xA0, 0x20, 0x06, 0x74, 0x52, 0x08, 0x9D, 0x45, 
                /* 0798 */    0xFD, 0xFF, 0x3F, 0x60, 0xF0, 0x83, 0x9D, 0x4F, 
                /* 07A0 */    0x0D, 0xEC, 0x72, 0xEB, 0xEB, 0x85, 0xE7, 0xE9, 
                /* 07A8 */    0x29, 0x73, 0x3C, 0x1F, 0x43, 0x0C, 0xEB, 0x8B, 
                /* 07B0 */    0x09, 0x78, 0x6E, 0x14, 0xEC, 0x34, 0x8B, 0xB9, 
                /* 07B8 */    0xB8, 0xB1, 0xB3, 0x1D, 0x3B, 0x15, 0x18, 0xE5, 
                /* 07C0 */    0x70, 0xDF, 0xC0, 0xAC, 0xE6, 0xAA, 0x80, 0x9A, 
                /* 07C8 */    0x11, 0x86, 0xC0, 0xE3, 0xF5, 0x81, 0x11, 0x4C, 
                /* 07D0 */    0xFA, 0x2E, 0x14, 0x20, 0x47, 0xE7, 0x32, 0x47, 
                /* 07D8 */    0x8F, 0x3A, 0x47, 0xF9, 0x24, 0xC5, 0x47, 0xEF, 
                /* 07E0 */    0xA3, 0xB9, 0x4F, 0x2B, 0x70, 0xCF, 0x52, 0x3E, 
                /* 07E8 */    0x42, 0x01, 0xDF, 0x81, 0xF9, 0x52, 0x80, 0x3B, 
                /* 07F0 */    0xA0, 0x80, 0xE1, 0xFA, 0x80, 0xFD, 0xFF, 0xC3, 
                /* 07F8 */    0xBC, 0xA2, 0xE0, 0xCF, 0x28, 0xC0, 0x24, 0xF0, 
                /* 0800 */    0x59, 0x0A, 0x74, 0x90, 0x3E, 0xA3, 0x00, 0xD7, 
                /* 0808 */    0xA1, 0xE2, 0xCE, 0x28, 0xE0, 0x38, 0x10, 0x1E, 
                /* 0810 */    0x3D, 0x3F, 0x47, 0xB1, 0x38, 0xC7, 0x12, 0x74, 
                /* 0818 */    0xA8, 0x97, 0x83, 0x6E, 0x9B, 0xEC, 0x58, 0x82, 
                /* 0820 */    0x8D, 0x72, 0x2C, 0x41, 0x85, 0xA0, 0xD0, 0x09, 
                /* 0828 */    0xCA, 0x27, 0x09, 0x7E, 0xC6, 0xE3, 0x20, 0x06, 
                /* 0830 */    0x74, 0xF6, 0x93, 0x04, 0x5A, 0xC5, 0x49, 0x02, 
                /* 0838 */    0x19, 0xF6, 0x5C, 0x02, 0x84, 0xFE, 0xFF, 0xE7, 
                /* 0840 */    0x12, 0xF0, 0x9E, 0x13, 0x9F, 0x26, 0xC0, 0x35, 
                /* 0848 */    0x6B, 0xFC, 0x69, 0x02, 0x7F, 0x3E, 0x01, 0x16, 
                /* 0850 */    0x47, 0x46, 0xC0, 0xD9, 0x41, 0x90, 0x1F, 0x19, 
                /* 0858 */    0x81, 0xEF, 0xB9, 0x84, 0xFF, 0xFF, 0xCF, 0x25, 
                /* 0860 */    0xE0, 0x19, 0xB6, 0xCF, 0x25, 0x80, 0x93, 0x9B, 
                /* 0868 */    0x34, 0x3F, 0x97, 0xC0, 0x1D, 0xBA, 0xE3, 0x9C, 
                /* 0870 */    0xBE, 0x10, 0x57, 0x58, 0xDF, 0x33, 0xE2, 0x27, 
                /* 0878 */    0x18, 0xE3, 0x58, 0x82, 0x0A, 0x70, 0xF8, 0x02, 
                /* 0880 */    0xB4, 0xFF, 0xFF, 0x4F, 0x23, 0xE0, 0x3F, 0x17, 
                /* 0888 */    0x7B, 0xF4, 0xFC, 0x40, 0xE2, 0x43, 0x06, 0x19, 
                /* 0890 */    0x3D, 0x8D, 0x7C, 0xF8, 0x82, 0x1E, 0xF1, 0x30, 
                /* 0898 */    0x02, 0xB4, 0x07, 0xFA, 0xF0, 0x05, 0xC6, 0xDB, 
                /* 08A0 */    0x03, 0x3F, 0x6E, 0x02, 0xAF, 0xD8, 0x87, 0x12, 
                /* 08A8 */    0xD0, 0xC1, 0xF2, 0x43, 0x09, 0xF8, 0xFF, 0xFF, 
                /* 08B0 */    0x87, 0x12, 0xF0, 0x8C, 0x1E, 0x77, 0xF6, 0x02, 
                /* 08B8 */    0xC7, 0x55, 0xC2, 0x83, 0x37, 0xE0, 0x31, 0x3D, 
                /* 08C0 */    0x16, 0x18, 0x90, 0x9D, 0x4B, 0x98, 0xEC, 0x73, 
                /* 08C8 */    0x09, 0xFA, 0x3C, 0x62, 0xAB, 0xB7, 0x63, 0x72, 
                /* 08D0 */    0x52, 0xC7, 0x08, 0x3F, 0x97, 0xA0, 0x24, 0x9F, 
                /* 08D8 */    0x4B, 0x00, 0xDA, 0x1C, 0xBA, 0xC0, 0xF1, 0xFF, 
                /* 08E0 */    0x3F, 0x74, 0x01, 0x3C, 0xB8, 0x06, 0xFA, 0x40, 
                /* 08E8 */    0x02, 0xAE, 0x7B, 0x82, 0x0F, 0x24, 0xC0, 0xF5, 
                /* 08F0 */    0x28, 0x00, 0x9E, 0x23, 0x08, 0xFE, 0xC8, 0xEC, 
                /* 08F8 */    0x03, 0x3F, 0xEE, 0xA4, 0xEF, 0x53, 0x75, 0x5C, 
                /* 0900 */    0xE3, 0x1F, 0xF1, 0x11, 0xFC, 0xFF, 0x1B, 0x3F, 
                /* 0908 */    0x7D, 0x91, 0x7B, 0x81, 0x8F, 0x25, 0x3A, 0xF0, 
                /* 0910 */    0xA3, 0x04, 0x53, 0x48, 0xEE, 0x01, 0x02, 0x25, 
                /* 0918 */    0x10, 0x8E, 0x82, 0xF8, 0x00, 0xE1, 0xF0, 0xE7, 
                /* 0920 */    0x24, 0xE8, 0x57, 0x4B, 0x7E, 0x7E, 0xC0, 0x5F, 
                /* 0928 */    0x47, 0xD8, 0x28, 0xD9, 0x71, 0x1E, 0x37, 0x4A, 
                /* 0930 */    0xB8, 0x60, 0xAF, 0x0F, 0x86, 0xB8, 0xC3, 0x13, 
                /* 0938 */    0xE1, 0x67, 0x5B, 0xCC, 0x31, 0x1F, 0xEE, 0x51, 
                /* 0940 */    0xE1, 0x51, 0x09, 0x5C, 0xB3, 0x86, 0x75, 0x58, 
                /* 0948 */    0x02, 0x3C, 0x78, 0x38, 0x4C, 0x00, 0xAD, 0xFF, 
                /* 0950 */    0xFF, 0x61, 0x09, 0xFC, 0xB3, 0xE7, 0x83, 0x38, 
                /* 0958 */    0x11, 0x0F, 0x1F, 0x03, 0x74, 0x2C, 0x6F, 0x07, 
                /* 0960 */    0xEC, 0xD8, 0xAB, 0xC3, 0x12, 0x6A, 0x0C, 0x3E, 
                /* 0968 */    0xFA, 0xFA, 0xE8, 0xC4, 0x20, 0x1F, 0x0F, 0x31, 
                /* 0970 */    0xC7, 0x16, 0x76, 0xC2, 0x07, 0xF8, 0xF6, 0xFF, 
                /* 0978 */    0x3F, 0xE1, 0x03, 0xD6, 0xCE, 0x24, 0xBE, 0x3F, 
                /* 0980 */    0x60, 0xAF, 0x2D, 0xF8, 0xA3, 0x09, 0xF0, 0x06, 
                /* 0988 */    0xF7, 0xD1, 0x04, 0x70, 0xF5, 0xFF, 0x3F, 0x9A, 
                /* 0990 */    0xE0, 0x84, 0x9E, 0x9D, 0x50, 0x67, 0x03, 0x1F, 
                /* 0998 */    0x98, 0x6C, 0x14, 0x95, 0x40, 0xBF, 0x69, 0xBC, 
                /* 09A0 */    0x9F, 0x07, 0x31, 0xF4, 0x49, 0xF0, 0x53, 0x13, 
                /* 09A8 */    0x06, 0xC2, 0x47, 0x13, 0x9F, 0x24, 0x7C, 0x9C, 
                /* 09B0 */    0xE0, 0x52, 0xE0, 0x28, 0x88, 0x8F, 0x13, 0x8E, 
                /* 09B8 */    0x79, 0x36, 0x41, 0x9F, 0x0A, 0x7C, 0x3F, 0x38, 
                /* 09C0 */    0x09, 0x6C, 0xA8, 0xF3, 0x04, 0x50, 0x19, 0x07, 
                /* 09C8 */    0xFE, 0xE8, 0x04, 0x57, 0xD8, 0xC9, 0x04, 0x64, 
                /* 09D0 */    0x27, 0x72, 0x60, 0x6E, 0xE2, 0x1C, 0x01, 0x94, 
                /* 09D8 */    0xFE, 0xFF, 0x27, 0x72, 0xE0, 0x70, 0x5A, 0xE5, 
                /* 09E0 */    0xA7, 0x01, 0x7C, 0xA0, 0xA3, 0x2A, 0x3A, 0xD6, 
                /* 09E8 */    0x93, 0x41, 0x23, 0x7E, 0x07, 0x08, 0x77, 0xEA, 
                /* 09F0 */    0xE7, 0xF9, 0x40, 0xC0, 0x8E, 0xE5, 0x3E, 0x2C, 
                /* 09F8 */    0xF1, 0xF3, 0x92, 0x4F, 0x11, 0x3E, 0x41, 0x70, 
                /* 0A00 */    0x49, 0x27, 0x08, 0x0A, 0x62, 0x40, 0xE7, 0x3D, 
                /* 0A08 */    0x5D, 0x7A, 0x10, 0xF4, 0x7C, 0xC3, 0x8F, 0xC5, 
                /* 0A10 */    0xBE, 0xB6, 0x1C, 0xC5, 0x23, 0x51, 0x82, 0xF9, 
                /* 0A18 */    0x0E, 0x01, 0xF4, 0xB6, 0x04, 0x4F, 0xDE, 0x6D, 
                /* 0A20 */    0x09, 0x44, 0x18, 0x77, 0x72, 0x16, 0x0C, 0xE1, 
                /* 0A28 */    0x28, 0x7D, 0x80, 0x80, 0x31, 0xC0, 0xC7, 0x84, 
                /* 0A30 */    0x62, 0xDF, 0x37, 0xF4, 0xBE, 0x04, 0xF3, 0x8A, 
                /* 0A38 */    0x09, 0xAE, 0xF3, 0x12, 0x30, 0x9E, 0x89, 0xFF, 
                /* 0A40 */    0xFF, 0x3E, 0xCF, 0x21, 0xE4, 0x02, 0xC0, 0x4F, 
                /* 0A48 */    0xE5, 0x60, 0x39, 0x36, 0x80, 0x67, 0x1C, 0xEC, 
                /* 0A50 */    0x0A, 0x80, 0x3F, 0x32, 0xC1, 0x3E, 0x35, 0xE2, 
                /* 0A58 */    0x8E, 0x4C, 0x60, 0x98, 0x08, 0x3B, 0xE7, 0x1C, 
                /* 0A60 */    0x08, 0xF6, 0x60, 0x02, 0xBC, 0x55, 0x1C, 0x4C, 
                /* 0A68 */    0x00, 0x2D, 0xC3, 0x0D, 0x72, 0x3E, 0x8F, 0xE4, 
                /* 0A70 */    0xC6, 0x79, 0xC3, 0xF3, 0x89, 0x84, 0x9D, 0xC4, 
                /* 0A78 */    0xD9, 0xFF, 0xFF, 0x60, 0xC2, 0x25, 0x41, 0x48, 
                /* 0A80 */    0xFE, 0x61, 0x09, 0x89, 0x8D, 0x9D, 0xFE, 0x39, 
                /* 0A88 */    0xBC, 0xB9, 0x32, 0x82, 0x62, 0x8F, 0x4B, 0xA8, 
                /* 0A90 */    0xC3, 0x84, 0x45, 0x9E, 0x26, 0x50, 0xA7, 0x69, 
                /* 0A98 */    0x9F, 0x90, 0xC9, 0x69, 0x82, 0x46, 0x3E, 0x4D, 
                /* 0AA0 */    0xA0, 0x87, 0xE6, 0x89, 0x9D, 0x06, 0x6E, 0xDC, 
                /* 0AA8 */    0xA7, 0xC1, 0x6F, 0x87, 0xFC, 0xC0, 0x04, 0x7C, 
                /* 0AB0 */    0x0F, 0x0F, 0xF8, 0xD3, 0x04, 0xEC, 0xF3, 0x0D, 
                /* 0AB8 */    0x1B, 0x74, 0xC8, 0x77, 0x87, 0x17, 0x59, 0x1F, 
                /* 0AC0 */    0x26, 0x80, 0xF9, 0xC8, 0x7D, 0x98, 0x00, 0xFF, 
                /* 0AC8 */    0xFF, 0xFF, 0xD0, 0x04, 0x5C, 0x15, 0xDA, 0xF4, 
                /* 0AD0 */    0xA9, 0xD1, 0xA8, 0x55, 0x83, 0x32, 0x35, 0xCA, 
                /* 0AD8 */    0x34, 0xA8, 0xD5, 0xA7, 0x52, 0x63, 0xC6, 0xA4, 
                /* 0AE0 */    0x9D, 0x54, 0xBD, 0x54, 0x8D, 0xD5, 0x91, 0x9E, 
                /* 0AE8 */    0x0B, 0x02, 0x71, 0xD4, 0x05, 0x0B, 0xC4, 0xD1, 
                /* 0AF0 */    0x9F, 0x40, 0x02, 0xB1, 0xB8, 0x57, 0x88, 0x40, 
                /* 0AF8 */    0x2C, 0xF5, 0x05, 0x21, 0x10, 0xCB, 0xD4, 0x01, 
                /* 0B00 */    0xC2, 0x82, 0xBC, 0xEF, 0x05, 0xE2, 0x60, 0x52, 
                /* 0B08 */    0x06, 0x40, 0xAD, 0x80, 0xB0, 0x78, 0xCB, 0x12, 
                /* 0B10 */    0x88, 0x23, 0x9A, 0x39, 0x01, 0x50, 0x37, 0x20, 
                /* 0B18 */    0x4C, 0xA0, 0x1E, 0x10, 0x26, 0xDC, 0x10, 0x08, 
                /* 0B20 */    0x8B, 0xA3, 0x08, 0x84, 0x09, 0xB6, 0x04, 0xC2, 
                /* 0B28 */    0xE2, 0x82, 0x50, 0xC1, 0x9E, 0x8E, 0xFD, 0x4C, 
                /* 0B30 */    0x3E, 0x88, 0x80, 0x1C, 0xDA, 0x14, 0x10, 0x93, 
                /* 0B38 */    0xA0, 0x0A, 0x88, 0x25, 0x78, 0x0C, 0x08, 0xC8, 
                /* 0B40 */    0x71, 0x40, 0x04, 0xE4, 0x50, 0xB6, 0x80, 0x58, 
                /* 0B48 */    0x44, 0x10, 0x01, 0x59, 0xCF, 0x1B, 0x4E, 0x40, 
                /* 0B50 */    0x16, 0x07, 0x22, 0x20, 0x8B, 0x36, 0x06, 0xC4, 
                /* 0B58 */    0x22, 0x80, 0x08, 0xC8, 0xC9, 0x5E, 0x70, 0x81, 
                /* 0B60 */    0x48, 0x4C, 0x10, 0x01, 0x39, 0xEC, 0x8A, 0x05, 
                /* 0B68 */    0xE4, 0xE8, 0x20, 0x02, 0xB2, 0x4E, 0x6F, 0x40, 
                /* 0B70 */    0x4C, 0x34, 0x88, 0x80, 0x2C, 0xFE, 0xB1, 0x21, 
                /* 0B78 */    0x20, 0x47, 0x01, 0x11, 0x90, 0x03, 0x3E, 0x28, 
                /* 0B80 */    0x02, 0x91, 0xB8, 0x20, 0x02, 0xB2, 0x46, 0x7B, 
                /* 0B88 */    0x40, 0x4C, 0x30, 0x88, 0x80, 0x2C, 0xFB, 0x07, 
                /* 0B90 */    0x25, 0x20, 0x87, 0x00, 0xD1, 0x00, 0xC9, 0xEB, 
                /* 0B98 */    0x40, 0x03, 0x24, 0xBF, 0x89, 0x40, 0x44, 0xE2, 
                /* 0BA0 */    0xAB, 0x22, 0x10, 0xD1, 0x0B, 0x22, 0x20, 0xFF, 
                /* 0BA8 */    0xFF, 0xA5, 0xFF, 0x38, 0x04, 0xE4, 0x20, 0x20, 
                /* 0BB0 */    0x02, 0x26, 0x1A, 0x81, 0xE9, 0x0B, 0x21, 0x10, 
                /* 0BB8 */    0xF9, 0xFF, 0x03
            })
            Name (_HID, EisaId ("PNP0C14"))
            Name (_UID, Zero)
            Name (_WDG, Buffer (0x28)
            {
                /* 0000 */    0x6A, 0x0F, 0xBC, 0xAB, 0xA1, 0x8E, 0xD1, 0x11, 
                /* 0008 */    0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00, 
                /* 0010 */    0x41, 0x41, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05, 
                /* 0018 */    0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0, 
                /* 0020 */    0xC9, 0x06, 0x29, 0x10, 0x42, 0x41, 0x01, 0x00
            })
            Method (WMAA, 3, NotSerialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    If (LOr (LOr (LNotEqual (Arg1, One), LNotEqual (Arg1, 
                        0x02)), LNotEqual (Arg1, 0x06)))
                    {
                        CreateDWordField (Arg2, Zero, WIID)
                    }

                    If (LEqual (Arg1, One))
                    {
                        Return (AM01 ())
                    }
                    Else
                    {
                        If (LEqual (Arg1, 0x02))
                        {
                            Return (AM02 ())
                        }
                        Else
                        {
                            If (LEqual (Arg1, 0x03))
                            {
                                Return (AM03 (WIID))
                            }
                            Else
                            {
                                If (LEqual (Arg1, 0x04))
                                {
                                    CreateDWordField (Arg2, 0x04, IVAL)
                                    Return (AM04 (WIID, IVAL))
                                }
                                Else
                                {
                                    If (LEqual (Arg1, 0x05))
                                    {
                                        Return (AM05 (WIID))
                                    }
                                    Else
                                    {
                                        If (LEqual (Arg1, 0x06))
                                        {
                                            Return (AM06 ())
                                        }
                                        Else
                                        {
                                            If (LEqual (Arg1, 0x07))
                                            {
                                                AM07 (Arg2)
                                            }
                                            Else
                                            {
                                                If (LEqual (Arg1, 0x08))
                                                {
                                                    AM08 (WIID)
                                                }
                                                Else
                                                {
                                                    If (LEqual (Arg1, 0x09))
                                                    {
                                                        Return (AM09 ())
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (Arg1, 0x0A))
                                                        {
                                                            Return (AM10 (Arg2))
                                                        }
                                                        Else
                                                        {
                                                            If (LEqual (Arg1, 0x0B))
                                                            {
                                                                Return (AM11 ())
                                                            }
                                                            Else
                                                            {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    Name (QLST, Package (0x0E)
    {
        0x0D, 
        Package (0x05)
        {
            0x2658, 
            "Memory Clock Mode", 
            Zero, 
            0x03, 
            Package (0x03)
            {
                Buffer (0x05)
                {
                    "Auto"
                }, 

                Buffer (0x06)
                {
                    "Limit"
                }, 

                Buffer (0x07)
                {
                    "Manual"
                }
            }
        }, 

        Package (0x06)
        {
            0x44F8, 
            "Memclock Value", 
            One, 
            Buffer (0x05)
            {
                0x02, 0x00, 0x01, 0x03, 0x00
            }, 

            0x08, 
            Package (0x08)
            {
                Buffer (0x04)
                {
                    "rvd"
                }, 

                Buffer (0x04)
                {
                    "rvd"
                }, 

                Buffer (0x04)
                {
                    "rvd"
                }, 

                Buffer (0x04)
                {
                    "400"
                }, 

                Buffer (0x04)
                {
                    "533"
                }, 

                Buffer (0x04)
                {
                    "667"
                }, 

                Buffer (0x04)
                {
                    "800"
                }, 

                Buffer (0x05)
                {
                    "Auto"
                }
            }
        }, 

        Package (0x05)
        {
            0x2658, 
            "DRAM Timing Mode", 
            Zero, 
            0x04, 
            Package (0x04)
            {
                Buffer (0x05)
                {
                    "Auto"
                }, 

                Buffer (0x04)
                {
                    "rvd"
                }, 

                Buffer (0x04)
                {
                    "rvd"
                }, 

                Buffer (0x05)
                {
                    "Both"
                }
            }
        }, 

        Package (0x07)
        {
            0x44FC, 
            "DCT0 CAS Latency (CL)", 
            0x02, 
            Buffer (0x05)
            {
                0x02, 0x00, 0x03, 0x03, 0x00
            }, 

            Buffer (0x05)
            {
                0x02, 0x02, 0x03, 0x03, 0x00
            }, 

            0x10, 
            Package (0x10)
            {
                Buffer (0x05)
                {
                    "Auto"
                }, 

                Buffer (0x04)
                {
                    "rvd"
                }, 

                Buffer (0x04)
                {
                    "rvd"
                }, 

                Buffer (0x06)
                {
                    "4 CLK"
                }, 

                Buffer (0x06)
                {
                    "5 CLK"
                }, 

                Buffer (0x06)
                {
                    "6 CLK"
                }, 

                Buffer (0x06)
                {
                    "7 CLK"
                }, 

                Buffer (0x06)
                {
                    "8 CLK"
                }, 

                Buffer (0x06)
                {
                    "9 CLK"
                }, 

                Buffer (0x07)
                {
                    "10 CLK"
                }, 

                Buffer (0x07)
                {
                    "11 CLK"
                }, 

                Buffer (0x07)
                {
                    "12 CLK"
                }, 

                Buffer (0x04)
                {
                    "rvd"
                }, 

                Buffer (0x04)
                {
                    "rvd"
                }, 

                Buffer (0x04)
                {
                    "rvd"
                }, 

                Buffer (0x04)
                {
                    "rvd"
                }
            }
        }, 

        Package (0x05)
        {
            0x35FB, 
            "NB FID Control", 
            Zero, 
            0x02, 
            Package (0x02)
            {
                Buffer (0x07)
                {
                    "Manual"
                }, 

                Buffer (0x05)
                {
                    "Auto"
                }
            }
        }, 

        Package (0x06)
        {
            0x53F0, 
            "NBFID ID", 
            One, 
            Buffer (0x05)
            {
                0x02, 0x01, 0x06, 0x03, 0x00
            }, 

            0x21, 
            Package (0x21)
            {
                Buffer (0x02)
                {
                    "3"
                }, 

                Buffer (0x02)
                {
                    "4"
                }, 

                Buffer (0x02)
                {
                    "5"
                }, 

                Buffer (0x02)
                {
                    "6"
                }, 

                Buffer (0x02)
                {
                    "7"
                }, 

                Buffer (0x02)
                {
                    "8"
                }, 

                Buffer (0x02)
                {
                    "9"
                }, 

                Buffer (0x03)
                {
                    "10"
                }, 

                Buffer (0x03)
                {
                    "11"
                }, 

                Buffer (0x03)
                {
                    "12"
                }, 

                Buffer (0x03)
                {
                    "13"
                }, 

                Buffer (0x03)
                {
                    "14"
                }, 

                Buffer (0x03)
                {
                    "15"
                }, 

                Buffer (0x03)
                {
                    "16"
                }, 

                Buffer (0x03)
                {
                    "17"
                }, 

                Buffer (0x03)
                {
                    "18"
                }, 

                Buffer (0x03)
                {
                    "19"
                }, 

                Buffer (0x03)
                {
                    "20"
                }, 

                Buffer (0x03)
                {
                    "21"
                }, 

                Buffer (0x03)
                {
                    "22"
                }, 

                Buffer (0x03)
                {
                    "23"
                }, 

                Buffer (0x03)
                {
                    "24"
                }, 

                Buffer (0x03)
                {
                    "25"
                }, 

                Buffer (0x03)
                {
                    "26"
                }, 

                Buffer (0x03)
                {
                    "27"
                }, 

                Buffer (0x03)
                {
                    "28"
                }, 

                Buffer (0x03)
                {
                    "29"
                }, 

                Buffer (0x03)
                {
                    "30"
                }, 

                Buffer (0x03)
                {
                    "31"
                }, 

                Buffer (0x03)
                {
                    "32"
                }, 

                Buffer (0x03)
                {
                    "33"
                }, 

                Buffer (0x03)
                {
                    "34"
                }, 

                Buffer (0x03)
                {
                    "35"
                }
            }
        }, 

        Package (0x05)
        {
            0x175E, 
            "DDR3 Memory Profile", 
            Zero, 
            0x02, 
            Package (0x02)
            {
                Buffer (0x09)
                {
                    "Disabled"
                }, 

                Buffer (0x08)
                {
                    "Enabled"
                }
            }
        }, 

        Package (0x08)
        {
            0x26A6, 
            "Advanced Clock Calibration", 
            Zero, 
            0x04, 
            Buffer (0x09)
            {
                "Disabled"
            }, 

            Buffer (0x05)
            {
                "Auto"
            }, 

            Buffer (0x0A)
            {
                "All Cores"
            }, 

            Buffer (0x09)
            {
                "Per Core"
            }
        }, 

        Package (0x16)
        {
            0x453C, 
            "Value (All Cores)", 
            0x02, 
            Buffer (0x05)
            {
                0x82, 0x02, 0x01, 0x03, 0x00
            }, 

            Buffer (0x05)
            {
                0x86, 0x10, 0x00, 0x02, 0x00
            }, 

            0x10, 
            Buffer (0x03)
            {
                "0%"
            }, 

            Buffer (0x05)
            {
                "+ 2%"
            }, 

            Buffer (0x05)
            {
                "+ 4%"
            }, 

            Buffer (0x05)
            {
                "+ 6%"
            }, 

            Buffer (0x05)
            {
                "+ 8%"
            }, 

            Buffer (0x05)
            {
                "+10%"
            }, 

            Buffer (0x05)
            {
                "+12%"
            }, 

            Buffer (0x09)
            {
                "RESERVED"
            }, 

            Buffer (0x09)
            {
                "RESERVED"
            }, 

            Buffer (0x05)
            {
                "- 2%"
            }, 

            Buffer (0x05)
            {
                "- 4%"
            }, 

            Buffer (0x05)
            {
                "- 6%"
            }, 

            Buffer (0x05)
            {
                "- 8%"
            }, 

            Buffer (0x05)
            {
                "-10%"
            }, 

            Buffer (0x05)
            {
                "-12%"
            }, 

            Buffer (0x09)
            {
                "RESERVED"
            }
        }, 

        Package (0x16)
        {
            0x4540, 
            "Value (Core 0)", 
            0x02, 
            Buffer (0x05)
            {
                0x82, 0x03, 0x01, 0x03, 0x00
            }, 

            Buffer (0x05)
            {
                0x86, 0x10, 0x00, 0x02, 0x00
            }, 

            0x10, 
            Buffer (0x03)
            {
                "0%"
            }, 

            Buffer (0x05)
            {
                "+ 2%"
            }, 

            Buffer (0x05)
            {
                "+ 4%"
            }, 

            Buffer (0x05)
            {
                "+ 6%"
            }, 

            Buffer (0x05)
            {
                "+ 8%"
            }, 

            Buffer (0x05)
            {
                "+10%"
            }, 

            Buffer (0x05)
            {
                "+12%"
            }, 

            Buffer (0x09)
            {
                "RESERVED"
            }, 

            Buffer (0x09)
            {
                "RESERVED"
            }, 

            Buffer (0x05)
            {
                "- 2%"
            }, 

            Buffer (0x05)
            {
                "- 4%"
            }, 

            Buffer (0x05)
            {
                "- 6%"
            }, 

            Buffer (0x05)
            {
                "- 8%"
            }, 

            Buffer (0x05)
            {
                "-10%"
            }, 

            Buffer (0x05)
            {
                "-12%"
            }, 

            Buffer (0x09)
            {
                "RESERVED"
            }
        }, 

        Package (0x16)
        {
            0x4544, 
            "Value (Core 1)", 
            0x02, 
            Buffer (0x05)
            {
                0x82, 0x03, 0x01, 0x03, 0x00
            }, 

            Buffer (0x05)
            {
                0x86, 0x10, 0x00, 0x02, 0x00
            }, 

            0x10, 
            Buffer (0x03)
            {
                "0%"
            }, 

            Buffer (0x05)
            {
                "+ 2%"
            }, 

            Buffer (0x05)
            {
                "+ 4%"
            }, 

            Buffer (0x05)
            {
                "+ 6%"
            }, 

            Buffer (0x05)
            {
                "+ 8%"
            }, 

            Buffer (0x05)
            {
                "+10%"
            }, 

            Buffer (0x05)
            {
                "+12%"
            }, 

            Buffer (0x09)
            {
                "RESERVED"
            }, 

            Buffer (0x09)
            {
                "RESERVED"
            }, 

            Buffer (0x05)
            {
                "- 2%"
            }, 

            Buffer (0x05)
            {
                "- 4%"
            }, 

            Buffer (0x05)
            {
                "- 6%"
            }, 

            Buffer (0x05)
            {
                "- 8%"
            }, 

            Buffer (0x05)
            {
                "-10%"
            }, 

            Buffer (0x05)
            {
                "-12%"
            }, 

            Buffer (0x09)
            {
                "RESERVED"
            }
        }, 

        Package (0x16)
        {
            0x4548, 
            "Value (Core 2)", 
            0x02, 
            Buffer (0x05)
            {
                0x82, 0x03, 0x01, 0x03, 0x00
            }, 

            Buffer (0x05)
            {
                0x86, 0x10, 0x00, 0x02, 0x00
            }, 

            0x10, 
            Buffer (0x03)
            {
                "0%"
            }, 

            Buffer (0x05)
            {
                "+ 2%"
            }, 

            Buffer (0x05)
            {
                "+ 4%"
            }, 

            Buffer (0x05)
            {
                "+ 6%"
            }, 

            Buffer (0x05)
            {
                "+ 8%"
            }, 

            Buffer (0x05)
            {
                "+10%"
            }, 

            Buffer (0x05)
            {
                "+12%"
            }, 

            Buffer (0x09)
            {
                "RESERVED"
            }, 

            Buffer (0x09)
            {
                "RESERVED"
            }, 

            Buffer (0x05)
            {
                "- 2%"
            }, 

            Buffer (0x05)
            {
                "- 4%"
            }, 

            Buffer (0x05)
            {
                "- 6%"
            }, 

            Buffer (0x05)
            {
                "- 8%"
            }, 

            Buffer (0x05)
            {
                "-10%"
            }, 

            Buffer (0x05)
            {
                "-12%"
            }, 

            Buffer (0x09)
            {
                "RESERVED"
            }
        }, 

        Package (0x16)
        {
            0x454C, 
            "Value (Core 3)", 
            0x02, 
            Buffer (0x05)
            {
                0x82, 0x03, 0x01, 0x03, 0x00
            }, 

            Buffer (0x05)
            {
                0x86, 0x10, 0x00, 0x02, 0x00
            }, 

            0x10, 
            Buffer (0x03)
            {
                "0%"
            }, 

            Buffer (0x05)
            {
                "+ 2%"
            }, 

            Buffer (0x05)
            {
                "+ 4%"
            }, 

            Buffer (0x05)
            {
                "+ 6%"
            }, 

            Buffer (0x05)
            {
                "+ 8%"
            }, 

            Buffer (0x05)
            {
                "+10%"
            }, 

            Buffer (0x05)
            {
                "+12%"
            }, 

            Buffer (0x09)
            {
                "RESERVED"
            }, 

            Buffer (0x09)
            {
                "RESERVED"
            }, 

            Buffer (0x05)
            {
                "- 2%"
            }, 

            Buffer (0x05)
            {
                "- 4%"
            }, 

            Buffer (0x05)
            {
                "- 6%"
            }, 

            Buffer (0x05)
            {
                "- 8%"
            }, 

            Buffer (0x05)
            {
                "-10%"
            }, 

            Buffer (0x05)
            {
                "-12%"
            }, 

            Buffer (0x09)
            {
                "RESERVED"
            }
        }
    })
    Name (_S0, Package (0x04)
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If (SS1)
    {
        Name (_S1, Package (0x04)
        {
            One, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS3)
    {
        Name (_S3, Package (0x04)
        {
            0x03, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS4)
    {
        Name (_S4, Package (0x04)
        {
            0x04, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Name (_S5, Package (0x04)
    {
        0x05, 
        Zero, 
        Zero, 
        Zero
    })
    Method (PTS, 1, NotSerialized)
    {
        If (Arg0)
        {
            \_SB.PCI0.SBRG.SIOS (Arg0)
            SPTS (Arg0)
            \_SB.PCI0.SBRG.EPTS (Arg0)
            NB2S (Arg0)
            NPTS (Arg0)
            \_SB.PCI0.SBRG.SIAS (Arg0)
        }
    }

    Method (WAK, 1, NotSerialized)
    {
        \_SB.PCI0.SBRG.SIOW (Arg0)
        SWAK (Arg0)
        \_SB.PCI0.SBRG.EWAK (Arg0)
        NB2W (Arg0)
        NWAK (Arg0)
    }
}

