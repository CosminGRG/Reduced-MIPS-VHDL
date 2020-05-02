VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL New_PC(31:0)
        SIGNAL Clk
        SIGNAL PC(31:0)
        SIGNAL PC(6:2)
        SIGNAL Instr(31:0)
        SIGNAL WrReg(4:0)
        SIGNAL Instr(25:21)
        SIGNAL Instr(20:16)
        SIGNAL Instr(15:11)
        SIGNAL RegDest
        SIGNAL Instr(15:0)
        SIGNAL RegWr
        SIGNAL ALUSrc
        SIGNAL ALUOP(1:0)
        SIGNAL RdData2(31:0)
        SIGNAL ALU_Out(31:0)
        SIGNAL WrData(31:0)
        SIGNAL INW0(31:0)
        SIGNAL INW1(31:0)
        SIGNAL MemWr
        SIGNAL ALU_Out(6:2)
        SIGNAL OUTW0(31:0)
        SIGNAL RdData1(31:0)
        SIGNAL MemOut(31:0)
        SIGNAL Mem2Reg
        SIGNAL Instr(31:26)
        SIGNAL Instr(5:0)
        SIGNAL Branch
        SIGNAL Zero
        PORT Input Clk
        PORT Input INW0(31:0)
        PORT Input INW1(31:0)
        PORT Output OUTW0(31:0)
        BEGIN BLOCKDEF PC_Update
            TIMESTAMP 2020 4 27 19 13 0
            LINE N 64 -64 0 -64 
            RECTANGLE N 320 -204 384 -180 
            LINE N 320 -192 384 -192 
            RECTANGLE N 0 -332 64 -308 
            LINE N 64 -320 0 -320 
            RECTANGLE N 64 -356 320 32 
            LINE N 64 -16 0 -16 
            RECTANGLE N 0 -124 64 -100 
            LINE N 64 -112 0 -112 
        END BLOCKDEF
        BEGIN BLOCKDEF ProgCnt
            TIMESTAMP 2020 3 23 17 2 52
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF ROM32x32
            TIMESTAMP 2020 3 23 17 38 3
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V5
            TIMESTAMP 2020 3 23 18 5 49
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF File_Regs
            TIMESTAMP 2020 3 30 18 39 13
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 416 -428 480 -404 
            LINE N 416 -416 480 -416 
            RECTANGLE N 0 -12 64 12 
            LINE N 64 0 0 0 
            RECTANGLE N 416 -364 480 -340 
            LINE N 416 -352 480 -352 
            RECTANGLE N 0 84 64 108 
            LINE N 64 96 0 96 
            RECTANGLE N 64 -448 416 132 
            LINE N 64 -352 0 -352 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2020 4 27 18 56 25
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 64 -320 320 64 
            LINE N 320 -288 384 -288 
        END BLOCKDEF
        BEGIN BLOCKDEF DataMem
            TIMESTAMP 2020 3 30 18 39 33
            RECTANGLE N 0 68 64 92 
            LINE N 64 80 0 80 
            RECTANGLE N 0 132 64 156 
            LINE N 64 144 0 144 
            RECTANGLE N 384 132 448 156 
            LINE N 384 144 448 144 
            LINE N 64 16 0 16 
            RECTANGLE N 64 -240 384 188 
            LINE N 64 -208 0 -208 
            RECTANGLE N 0 -156 64 -132 
            LINE N 64 -144 0 -144 
            RECTANGLE N 384 -156 448 -132 
            LINE N 384 -144 448 -144 
            RECTANGLE N 0 -92 64 -68 
            LINE N 64 -80 0 -80 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V32
            TIMESTAMP 2020 3 31 0 9 35
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF ctrl
            TIMESTAMP 2020 4 27 14 2 50
            LINE N 320 32 384 32 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -352 384 -352 
            LINE N 320 -288 384 -288 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
            RECTANGLE N 64 -384 320 64 
        END BLOCKDEF
        BEGIN BLOCK U_PC ProgCnt
            PIN Clk Clk
            PIN New_PC(31:0) New_PC(31:0)
            PIN PC(31:0) PC(31:0)
        END BLOCK
        BEGIN BLOCK U_New_Pc PC_Update
            PIN New_PC(31:0) New_PC(31:0)
            PIN Branch Branch
            PIN PC(31:0) PC(31:0)
            PIN Zero Zero
            PIN Offset(15:0) Instr(15:0)
        END BLOCK
        BEGIN BLOCK U_ROM ROM32x32
            PIN Addr(4:0) PC(6:2)
            PIN Data(31:0) Instr(31:0)
        END BLOCK
        BEGIN BLOCK U_MUXRegD MUX2V5
            PIN Y(4:0) WrReg(4:0)
            PIN I0(4:0) Instr(20:16)
            PIN I1(4:0) Instr(15:11)
            PIN Sel RegDest
        END BLOCK
        BEGIN BLOCK U_Regs File_Regs
            PIN Clk Clk
            PIN RdReg1(4:0) Instr(25:21)
            PIN RdReg2(4:0) Instr(20:16)
            PIN WrReg(4:0) WrReg(4:0)
            PIN WRData(31:0) WrData(31:0)
            PIN RdData1(31:0) RdData1(31:0)
            PIN RdData2(31:0) RdData2(31:0)
            PIN WrEn RegWr
        END BLOCK
        BEGIN BLOCK U_ALU ALU
            PIN ALUSrc ALUSrc
            PIN RdData1(31:0) RdData1(31:0)
            PIN RdData2(31:0) RdData2(31:0)
            PIN FAddr(15:0) Instr(15:0)
            PIN ALUOP(1:0) ALUOP(1:0)
            PIN Zero Zero
            PIN Y(31:0) ALU_Out(31:0)
        END BLOCK
        BEGIN BLOCK U_MuxData MUX2V32
            PIN Sel Mem2Reg
            PIN I0(31:0) MemOut(31:0)
            PIN I1(31:0) ALU_Out(31:0)
            PIN Y(31:0) WrData(31:0)
        END BLOCK
        BEGIN BLOCK U_DataMem DataMem
            PIN Wr MemWr
            PIN Addr(4:0) ALU_Out(6:2)
            PIN DataIn(31:0) RdData2(31:0)
            PIN DataOut(31:0) MemOut(31:0)
            PIN Clk Clk
            PIN INW0(31:0) INW0(31:0)
            PIN OUTW0(31:0) OUTW0(31:0)
            PIN INW1(31:0) INW1(31:0)
        END BLOCK
        BEGIN BLOCK U_Ctrl ctrl
            PIN OP(5:0) Instr(31:26)
            PIN Funct(5:0) Instr(5:0)
            PIN ALUSrc ALUSrc
            PIN MemWr MemWr
            PIN Mem2Reg Mem2Reg
            PIN RegWr RegWr
            PIN RegDest RegDest
            PIN ALUOP(1:0) ALUOP(1:0)
            PIN Branch Branch
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN INSTANCE U_PC 848 912 R0
            BEGIN DISPLAY 64 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_New_Pc 1232 224 R180
            BEGIN DISPLAY 336 116 ATTR InstName
                ALIGNMENT RIGHT
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH New_PC(31:0)
            WIRE 672 416 848 416
            WIRE 672 416 672 656
            WIRE 672 656 672 880
            WIRE 672 880 848 880
            BEGIN DISPLAY 672 656 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 816 816 848 816
        END BRANCH
        BEGIN BRANCH PC(31:0)
            WIRE 1216 544 1232 544
            WIRE 1232 544 1248 544
            WIRE 1248 544 1248 688
            WIRE 1248 688 1248 816
            WIRE 1248 816 1248 912
            WIRE 1248 912 1248 1008
            WIRE 1232 816 1248 816
            BEGIN DISPLAY 1248 688 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ROM 1456 944 R0
            BEGIN DISPLAY 48 -152 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1248 912 1344 912
        BEGIN BRANCH PC(6:2)
            WIRE 1344 912 1376 912
            WIRE 1376 912 1456 912
            BEGIN DISPLAY 1376 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(31:0)
            WIRE 1840 912 1856 912
            WIRE 1856 912 1856 944
            WIRE 1856 944 1856 1008
            WIRE 1856 1008 1856 1120
            WIRE 1856 1120 1856 1232
            WIRE 1856 1232 1856 1456
            WIRE 1856 1456 1856 1632
            WIRE 1856 1632 1856 1952
            WIRE 1856 1952 1856 2016
            WIRE 1856 304 1856 336
            WIRE 1856 336 1856 368
            WIRE 1856 368 1856 912
            BEGIN DISPLAY 1856 1120 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrReg(4:0)
            WIRE 2480 1168 2560 1168
            WIRE 2560 1168 2640 1168
            BEGIN DISPLAY 2560 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1856 944 1952 944
        BUSTAP 1856 1008 1952 1008
        BEGIN BRANCH Instr(25:21)
            WIRE 1952 944 2384 944
            WIRE 2384 944 2640 944
            BEGIN DISPLAY 2384 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(20:16)
            WIRE 1952 1008 2032 1008
            WIRE 2032 1008 2384 1008
            WIRE 2384 1008 2640 1008
            WIRE 2032 1008 2032 1168
            WIRE 2032 1168 2096 1168
            BEGIN DISPLAY 2384 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MUXRegD 2096 1328 R0
            BEGIN DISPLAY 80 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1856 1232 1952 1232
        BEGIN BRANCH Instr(15:11)
            WIRE 1952 1232 1984 1232
            WIRE 1984 1232 2096 1232
            BEGIN DISPLAY 1984 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 1984 1296 2032 1296
            WIRE 2032 1296 2096 1296
            BEGIN DISPLAY 2032 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_Regs 2640 1168 R0
            BEGIN DISPLAY 96 -536 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1856 1456 1952 1456
        BEGIN BRANCH Clk
            WIRE 2560 752 2608 752
            WIRE 2608 752 2640 752
            BEGIN DISPLAY 2608 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2560 816 2608 816
            WIRE 2608 816 2640 816
            BEGIN DISPLAY 2608 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrData(31:0)
            WIRE 2480 1264 2480 1392
            WIRE 2480 1392 4016 1392
            WIRE 4016 1392 5216 1392
            WIRE 2480 1264 2640 1264
            WIRE 5152 1040 5216 1040
            WIRE 5216 1040 5216 1392
            BEGIN DISPLAY 4016 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 816 816 Clk R180 28
        BEGIN BRANCH ALUSrc
            WIRE 3232 1008 3296 1008
            WIRE 3296 1008 3344 1008
            BEGIN DISPLAY 3296 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(1:0)
            WIRE 3232 944 3296 944
            WIRE 3296 944 3344 944
            BEGIN DISPLAY 3296 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(15:0)
            WIRE 1952 1456 2400 1456
            WIRE 2400 1456 3136 1456
            WIRE 3136 880 3136 1456
            WIRE 3136 880 3344 880
            BEGIN DISPLAY 2400 1456 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdData2(31:0)
            WIRE 3120 816 3184 816
            WIRE 3184 816 3232 816
            WIRE 3232 816 3344 816
            WIRE 3184 816 3184 1152
            WIRE 3184 1152 4000 1152
            WIRE 4000 1104 4000 1152
            WIRE 4000 1104 4032 1104
            BEGIN DISPLAY 3232 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_DataMem 4032 960 R0
            BEGIN DISPLAY 112 -316 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 3904 752 3968 752
            WIRE 3968 752 4032 752
            BEGIN DISPLAY 3968 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INW0(31:0)
            WIRE 4000 816 4032 816
        END BRANCH
        BEGIN BRANCH INW1(31:0)
            WIRE 4000 880 4032 880
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 3904 976 3968 976
            WIRE 3968 976 4032 976
            BEGIN DISPLAY 3968 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 4000 816 INW0(31:0) R180 28
        IOMARKER 4000 880 INW1(31:0) R180 28
        BUSTAP 3776 1040 3872 1040
        BEGIN BRANCH ALU_Out(6:2)
            WIRE 3872 1040 3920 1040
            WIRE 3920 1040 4032 1040
            BEGIN DISPLAY 3920 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OUTW0(31:0)
            WIRE 4480 816 4512 816
        END BRANCH
        IOMARKER 4512 816 OUTW0(31:0) R0 28
        BEGIN BRANCH RdData1(31:0)
            WIRE 3120 752 3232 752
            WIRE 3232 752 3344 752
            BEGIN DISPLAY 3232 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemOut(31:0)
            WIRE 4480 1104 4624 1104
            WIRE 4624 1104 4768 1104
            BEGIN DISPLAY 4624 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALU_Out(31:0)
            WIRE 3728 1008 3776 1008
            WIRE 3776 1008 3776 1040
            WIRE 3776 1040 3776 1248
            WIRE 3776 1248 4160 1248
            WIRE 4160 1248 4752 1248
            WIRE 4752 1168 4752 1248
            WIRE 4752 1168 4768 1168
            BEGIN DISPLAY 4160 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MuxData 4768 1200 R0
            BEGIN DISPLAY 64 -280 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Mem2Reg
            WIRE 4640 1040 4704 1040
            WIRE 4704 1040 4768 1040
            BEGIN DISPLAY 4704 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_Ctrl 2096 1984 R0
            BEGIN DISPLAY 144 -472 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1856 1632 1952 1632
        BEGIN BRANCH Instr(31:26)
            WIRE 1952 1632 2016 1632
            WIRE 2016 1632 2096 1632
            BEGIN DISPLAY 2016 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1856 1952 1952 1952
        BEGIN BRANCH Instr(5:0)
            WIRE 1952 1952 2016 1952
            WIRE 2016 1952 2096 1952
            BEGIN DISPLAY 2016 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUSrc
            WIRE 2480 1632 2560 1632
            WIRE 2560 1632 2640 1632
            BEGIN DISPLAY 2560 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2480 1824 2560 1824
            WIRE 2560 1824 2640 1824
            BEGIN DISPLAY 2560 1824 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 2480 1888 2560 1888
            WIRE 2560 1888 2640 1888
            BEGIN DISPLAY 2560 1888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(1:0)
            WIRE 2480 1952 2576 1952
            WIRE 2576 1952 2656 1952
            BEGIN DISPLAY 2576 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 2480 1696 2560 1696
            WIRE 2560 1696 2640 1696
            BEGIN DISPLAY 2560 1696 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 2480 1760 2560 1760
            WIRE 2560 1760 2640 1760
            BEGIN DISPLAY 2560 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ALU 3344 1040 R0
            BEGIN DISPLAY 144 -408 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Branch
            WIRE 2480 2016 2544 2016
            WIRE 2544 2016 2656 2016
            BEGIN DISPLAY 2544 2016 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Zero
            WIRE 1232 240 2720 240
            WIRE 2720 240 3792 240
            WIRE 3792 240 3792 752
            WIRE 3728 752 3792 752
            BEGIN DISPLAY 2720 240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch
            WIRE 1232 288 1328 288
            WIRE 1328 288 1456 288
            BEGIN DISPLAY 1328 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1856 336 1760 336
        BEGIN BRANCH Instr(15:0)
            WIRE 1232 336 1584 336
            WIRE 1584 336 1760 336
            BEGIN DISPLAY 1584 336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
