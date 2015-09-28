_USB_Init_Desc:
;usbdsc.c,161 :: 		void USB_Init_Desc(){
;usbdsc.c,162 :: 		USB_config_dsc_ptr[0] = &configDescriptor1;
LUI	R2, hi_addr(_configDescriptor1+0)
ORI	R2, R2, lo_addr(_configDescriptor1+0)
SW	R2, Offset(_USB_config_dsc_ptr+0)(GP)
;usbdsc.c,163 :: 		USB_string_dsc_ptr[0] = (const char*)&strd1;
LUI	R2, hi_addr(_strd1+0)
ORI	R2, R2, lo_addr(_strd1+0)
SW	R2, Offset(_USB_string_dsc_ptr+0)(GP)
;usbdsc.c,164 :: 		USB_string_dsc_ptr[1] = (const char*)&strd2;
LUI	R2, hi_addr(_strd2+0)
ORI	R2, R2, lo_addr(_strd2+0)
SW	R2, Offset(_USB_string_dsc_ptr+4)(GP)
;usbdsc.c,165 :: 		USB_string_dsc_ptr[2] = (const char*)&strd3;
LUI	R2, hi_addr(_strd3+0)
ORI	R2, R2, lo_addr(_strd3+0)
SW	R2, Offset(_USB_string_dsc_ptr+8)(GP)
;usbdsc.c,166 :: 		}
L_end_USB_Init_Desc:
JR	RA
NOP	
; end of _USB_Init_Desc
_UsbIsr:
;ihm_main.c,37 :: 		void UsbIsr() iv IVT_USB_1 ilevel 7 ics ICS_SRS {
RDPGPR	SP, SP
ADDIU	SP, SP, -12
MFC0	R30, 12, 2
SW	R30, 8(SP)
MFC0	R30, 14, 0
SW	R30, 4(SP)
MFC0	R30, 12, 0
SW	R30, 0(SP)
INS	R30, R0, 1, 15
ORI	R30, R0, 7168
MTC0	R30, 12, 0
ADDIU	SP, SP, -4
SW	RA, 0(SP)
;ihm_main.c,38 :: 		USB_Interrupt_Proc();
JAL	_USB_Interrupt_Proc+0
NOP	
;ihm_main.c,39 :: 		USBIF_bit = 0;
LUI	R2, BitMask(USBIF_bit+0)
ORI	R2, R2, BitMask(USBIF_bit+0)
_SX	
;ihm_main.c,40 :: 		}
L_end_UsbIsr:
LW	RA, 0(SP)
ADDIU	SP, SP, 4
DI	
EHB	
LW	R30, 8(SP)
MTC0	R30, 12, 2
LW	R30, 4(SP)
MTC0	R30, 14, 0
LW	R30, 0(SP)
MTC0	R30, 12, 0
ADDIU	SP, SP, 12
WRPGPR	SP, SP
ERET	
; end of _UsbIsr
_ClearBuffer:
;ihm_main.c,42 :: 		void ClearBuffer (char * buffer, int length) {
;ihm_main.c,43 :: 		int i = 0;
;ihm_main.c,44 :: 		for(i=0; i<length; i++) *(buffer+i) = 0;
; i start address is: 16 (R4)
MOVZ	R4, R0, R0
; i end address is: 16 (R4)
L_ClearBuffer0:
; i start address is: 16 (R4)
SEH	R3, R4
SEH	R2, R26
SLT	R2, R3, R2
BNE	R2, R0, L__ClearBuffer43
NOP	
J	L_ClearBuffer1
NOP	
L__ClearBuffer43:
SEH	R2, R4
ADDU	R2, R25, R2
SB	R0, 0(R2)
ADDIU	R2, R4, 1
SEH	R4, R2
; i end address is: 16 (R4)
J	L_ClearBuffer0
NOP	
L_ClearBuffer1:
;ihm_main.c,45 :: 		}
L_end_ClearBuffer:
JR	RA
NOP	
; end of _ClearBuffer
_DrawIconName:
;ihm_main.c,47 :: 		void DrawIconName(int xx, int yy) {
ADDIU	SP, SP, -24
SW	RA, 0(SP)
;ihm_main.c,48 :: 		int i = 0, j = 0;
SW	R25, 4(SP)
SW	R26, 8(SP)
SW	R27, 12(SP)
SW	R28, 16(SP)
;ihm_main.c,49 :: 		int xd = 0, yd = 0;
;ihm_main.c,59 :: 		xd = (x+xx*dx)-16;
ORI	R2, R0, 80
MUL	R2, R25, R2
ADDIU	R2, R2, 40
ADDIU	R2, R2, -16
; xd start address is: 24 (R6)
SEH	R6, R2
;ihm_main.c,60 :: 		yd = (y+yy*dy)-16;
ORI	R2, R0, 80
MUL	R2, R26, R2
ADDIU	R2, R2, 40
ADDIU	R2, R2, -16
; yd start address is: 28 (R7)
SEH	R7, R2
;ihm_main.c,61 :: 		TFT_Set_Brush(1, CL_WHITE, 0, 0, 0, 0);
MOVZ	R28, R0, R0
MOVZ	R27, R0, R0
ORI	R26, R0, 65535
ORI	R25, R0, 1
ADDIU	SP, SP, -4
SH	R0, 2(SP)
SH	R0, 0(SP)
JAL	_TFT_Set_Brush+0
NOP	
ADDIU	SP, SP, 4
;ihm_main.c,62 :: 		TFT_Set_Pen(CL_WHITE, 0);
MOVZ	R26, R0, R0
ORI	R25, R0, 65535
JAL	_TFT_Set_Pen+0
NOP	
;ihm_main.c,63 :: 		TFT_Rectangle(xd-18, yd+32, xd-18 + 68, yd+32 + 20);
ADDIU	R5, R7, 32
ADDIU	R4, R5, 20
ADDIU	R3, R6, -18
ADDIU	R2, R3, 68
SH	R7, 20(SP)
SH	R6, 22(SP)
SEH	R28, R4
SEH	R27, R2
SEH	R26, R5
SEH	R25, R3
JAL	_TFT_Rectangle+0
NOP	
LH	R6, 22(SP)
LH	R7, 20(SP)
;ihm_main.c,64 :: 		TFT_Set_Font(TFT_defaultFont, CL_BLACK, FO_HORIZONTAL);//CL_BLACK;
MOVZ	R27, R0, R0
MOVZ	R26, R0, R0
LUI	R25, hi_addr(_TFT_defaultFont+0)
ORI	R25, R25, lo_addr(_TFT_defaultFont+0)
JAL	_TFT_Set_Font+0
NOP	
;ihm_main.c,65 :: 		TFT_Write_Text(Image_text, xd-18, yd+32);
ADDIU	R3, R7, 32
; yd end address is: 28 (R7)
ADDIU	R2, R6, -18
; xd end address is: 24 (R6)
SEH	R27, R3
SEH	R26, R2
LUI	R25, hi_addr(_Image_text+0)
ORI	R25, R25, lo_addr(_Image_text+0)
JAL	_TFT_Write_Text+0
NOP	
;ihm_main.c,66 :: 		}
L_end_DrawIconName:
LW	R28, 16(SP)
LW	R27, 12(SP)
LW	R26, 8(SP)
LW	R25, 4(SP)
LW	RA, 0(SP)
ADDIU	SP, SP, 24
JR	RA
NOP	
; end of _DrawIconName
_DrawIcon:
;ihm_main.c,68 :: 		void DrawIcon (int xx, int yy) {
ADDIU	SP, SP, -20
SW	RA, 0(SP)
;ihm_main.c,69 :: 		int i = 0, j = 0;
SW	R27, 4(SP)
;ihm_main.c,70 :: 		int xd = 0, yd = 0;
;ihm_main.c,80 :: 		xd = (x+xx*dx)-16;
ORI	R2, R0, 80
MUL	R2, R25, R2
ADDIU	R2, R2, 40
ADDIU	R2, R2, -16
; xd start address is: 20 (R5)
SEH	R5, R2
;ihm_main.c,81 :: 		yd = (y+yy*dy)-16;
ORI	R2, R0, 80
MUL	R2, R26, R2
ADDIU	R2, R2, 40
ADDIU	R2, R2, -16
; yd start address is: 24 (R6)
SEH	R6, R2
;ihm_main.c,83 :: 		for(i=0; i<32; i++) {
; i start address is: 28 (R7)
MOVZ	R7, R0, R0
; xd end address is: 20 (R5)
; yd end address is: 24 (R6)
; i end address is: 28 (R7)
L_DrawIcon3:
; i start address is: 28 (R7)
; yd start address is: 24 (R6)
; xd start address is: 20 (R5)
SEH	R2, R7
SLTI	R2, R2, 32
BNE	R2, R0, L__DrawIcon46
NOP	
J	L_DrawIcon4
NOP	
L__DrawIcon46:
;ihm_main.c,84 :: 		for(j=0; j<32; j++) {
; j start address is: 32 (R8)
MOVZ	R8, R0, R0
; xd end address is: 20 (R5)
; yd end address is: 24 (R6)
; j end address is: 32 (R8)
; i end address is: 28 (R7)
L_DrawIcon6:
; j start address is: 32 (R8)
; xd start address is: 20 (R5)
; yd start address is: 24 (R6)
; i start address is: 28 (R7)
SEH	R2, R8
SLTI	R2, R2, 32
BNE	R2, R0, L__DrawIcon47
NOP	
J	L_DrawIcon7
NOP	
L__DrawIcon47:
;ihm_main.c,85 :: 		TFT_Dot(xd+i, yd+j, Image_icon[j*32+i]);
SEH	R2, R8
SLL	R2, R2, 5
ADDU	R2, R2, R7
SEH	R2, R2
SLL	R3, R2, 1
LUI	R2, hi_addr(_Image_icon+0)
ORI	R2, R2, lo_addr(_Image_icon+0)
ADDU	R2, R2, R3
LHU	R4, 0(R2)
ADDU	R3, R6, R8
ADDU	R2, R5, R7
SH	R7, 8(SP)
SH	R6, 10(SP)
SH	R5, 12(SP)
SH	R8, 14(SP)
SH	R26, 16(SP)
SH	R25, 18(SP)
ANDI	R27, R4, 65535
SEH	R26, R3
SEH	R25, R2
JAL	_TFT_Dot+0
NOP	
LH	R25, 18(SP)
LH	R26, 16(SP)
LH	R8, 14(SP)
LH	R5, 12(SP)
LH	R6, 10(SP)
LH	R7, 8(SP)
;ihm_main.c,84 :: 		for(j=0; j<32; j++) {
ADDIU	R2, R8, 1
SEH	R8, R2
;ihm_main.c,86 :: 		}
; j end address is: 32 (R8)
J	L_DrawIcon6
NOP	
L_DrawIcon7:
;ihm_main.c,83 :: 		for(i=0; i<32; i++) {
ADDIU	R2, R7, 1
SEH	R7, R2
;ihm_main.c,87 :: 		}
; xd end address is: 20 (R5)
; yd end address is: 24 (R6)
; i end address is: 28 (R7)
J	L_DrawIcon3
NOP	
L_DrawIcon4:
;ihm_main.c,88 :: 		DrawIconName(xx, yy);
SH	R26, 8(SP)
SH	R25, 10(SP)
JAL	_DrawIconName+0
NOP	
LH	R25, 10(SP)
LH	R26, 8(SP)
;ihm_main.c,89 :: 		}
L_end_DrawIcon:
LW	R27, 4(SP)
LW	RA, 0(SP)
ADDIU	SP, SP, 20
JR	RA
NOP	
; end of _DrawIcon
_main:
;ihm_main.c,91 :: 		void main() {
ADDIU	SP, SP, -8
;ihm_main.c,93 :: 		int i = 0, j = 0;
;ihm_main.c,98 :: 		receive_block = -1;
ORI	R2, R0, 65535
SH	R2, 4(SP)
;ihm_main.c,100 :: 		USBIP0_bit = 1;
LUI	R2, BitMask(USBIP0_bit+0)
ORI	R2, R2, BitMask(USBIP0_bit+0)
_SX	
;ihm_main.c,101 :: 		USBIP1_bit = 1;
LUI	R2, BitMask(USBIP1_bit+0)
ORI	R2, R2, BitMask(USBIP1_bit+0)
_SX	
;ihm_main.c,102 :: 		USBIP2_bit = 1;
LUI	R2, BitMask(USBIP2_bit+0)
ORI	R2, R2, BitMask(USBIP2_bit+0)
_SX	
;ihm_main.c,104 :: 		USBIE_bit = 1;
LUI	R2, BitMask(USBIE_bit+0)
ORI	R2, R2, BitMask(USBIE_bit+0)
_SX	
;ihm_main.c,106 :: 		EnableInterrupts();
EI	R30
;ihm_main.c,108 :: 		Start_TP();
JAL	_Start_TP+0
NOP	
;ihm_main.c,110 :: 		ClearBuffer(ReadBuffer, USB_LENGTH);
ORI	R26, R0, 64
LUI	R25, hi_addr(_ReadBuffer+0)
ORI	R25, R25, lo_addr(_ReadBuffer+0)
JAL	_ClearBuffer+0
NOP	
;ihm_main.c,111 :: 		ClearBuffer(WriteBuffer, USB_LENGTH);
ORI	R26, R0, 64
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_ClearBuffer+0
NOP	
;ihm_main.c,112 :: 		HID_Enable(ReadBuffer, &WriteBuffer);
LUI	R26, hi_addr(_WriteBuffer+0)
ORI	R26, R26, lo_addr(_WriteBuffer+0)
LUI	R25, hi_addr(_ReadBuffer+0)
ORI	R25, R25, lo_addr(_ReadBuffer+0)
JAL	_HID_Enable+0
NOP	
;ihm_main.c,114 :: 		for(i=0; i<2; i++) {
; i start address is: 20 (R5)
MOVZ	R5, R0, R0
; i end address is: 20 (R5)
L_main9:
; i start address is: 20 (R5)
SEH	R2, R5
SLTI	R2, R2, 2
BNE	R2, R0, L__main49
NOP	
J	L_main10
NOP	
L__main49:
;ihm_main.c,115 :: 		for(j=0; j<4; j++) {
; j start address is: 16 (R4)
MOVZ	R4, R0, R0
; j end address is: 16 (R4)
; i end address is: 20 (R5)
SEH	R3, R4
SEH	R4, R5
L_main12:
; j start address is: 12 (R3)
; i start address is: 16 (R4)
SEH	R2, R3
SLTI	R2, R2, 4
BNE	R2, R0, L__main50
NOP	
J	L_main13
NOP	
L__main50:
;ihm_main.c,116 :: 		DrawIcon(j, i);
SH	R4, 0(SP)
SH	R3, 2(SP)
SEH	R26, R4
SEH	R25, R3
JAL	_DrawIcon+0
NOP	
LH	R3, 2(SP)
LH	R4, 0(SP)
;ihm_main.c,115 :: 		for(j=0; j<4; j++) {
ADDIU	R2, R3, 1
; j end address is: 12 (R3)
; j start address is: 8 (R2)
;ihm_main.c,117 :: 		}
; j end address is: 8 (R2)
SEH	R3, R2
J	L_main12
NOP	
L_main13:
;ihm_main.c,114 :: 		for(i=0; i<2; i++) {
ADDIU	R2, R4, 1
; i end address is: 16 (R4)
; i start address is: 20 (R5)
SEH	R5, R2
;ihm_main.c,118 :: 		}
; i end address is: 20 (R5)
J	L_main9
NOP	
L_main10:
;ihm_main.c,120 :: 		while (1) {
L_main15:
;ihm_main.c,121 :: 		Check_TP();
JAL	_Check_TP+0
NOP	
;ihm_main.c,122 :: 		if (HID_Read()) {
JAL	_HID_Read+0
NOP	
BNE	R2, R0, L__main52
NOP	
J	L_main17
NOP	
L__main52:
;ihm_main.c,123 :: 		ClearBuffer(WriteBuffer, USB_LENGTH);
ORI	R26, R0, 64
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_ClearBuffer+0
NOP	
;ihm_main.c,124 :: 		if (strstr(ReadBuffer, "AT+SEND_IMAGE")) {
LUI	R26, hi_addr(?lstr1_ihm_main+0)
ORI	R26, R26, lo_addr(?lstr1_ihm_main+0)
LUI	R25, hi_addr(_ReadBuffer+0)
ORI	R25, R25, lo_addr(_ReadBuffer+0)
JAL	_strstr+0
NOP	
BNE	R2, R0, L__main54
NOP	
J	L_main18
NOP	
L__main54:
;ihm_main.c,125 :: 		strcpy(WriteBuffer, "READY\r\n");
LUI	R26, hi_addr(?lstr2_ihm_main+0)
ORI	R26, R26, lo_addr(?lstr2_ihm_main+0)
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_strcpy+0
NOP	
;ihm_main.c,126 :: 		HID_Write(WriteBuffer,USB_LENGTH);
ORI	R26, R0, 64
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_HID_Write+0
NOP	
;ihm_main.c,127 :: 		receive_block = 0;
SH	R0, 4(SP)
;ihm_main.c,128 :: 		}
J	L_main19
NOP	
L_main18:
;ihm_main.c,130 :: 		else if ((receive_block>=0)&&(receive_block<2048)) {
LH	R2, 4(SP)
SLTI	R2, R2, 0
BEQ	R2, R0, L__main55
NOP	
J	L__main39
NOP	
L__main55:
LH	R2, 4(SP)
SLTI	R2, R2, 2048
BNE	R2, R0, L__main56
NOP	
J	L__main38
NOP	
L__main56:
L__main37:
;ihm_main.c,131 :: 		memcpy((char *)Image_icon+receive_block, ReadBuffer, USB_LENGTH);
LH	R3, 4(SP)
LUI	R2, hi_addr(_Image_icon+0)
ORI	R2, R2, lo_addr(_Image_icon+0)
ADDU	R2, R2, R3
ORI	R27, R0, 64
LUI	R26, hi_addr(_ReadBuffer+0)
ORI	R26, R26, lo_addr(_ReadBuffer+0)
MOVZ	R25, R2, R0
JAL	_memcpy+0
NOP	
;ihm_main.c,132 :: 		receive_block+=USB_LENGTH;
LH	R2, 4(SP)
ADDIU	R2, R2, 64
SH	R2, 4(SP)
;ihm_main.c,133 :: 		if(receive_block > 2048-USB_LENGTH) strcpy(WriteBuffer, "FINISH\r\n");
SEH	R2, R2
SLTI	R2, R2, 1985
BEQ	R2, R0, L__main57
NOP	
J	L_main23
NOP	
L__main57:
LUI	R26, hi_addr(?lstr3_ihm_main+0)
ORI	R26, R26, lo_addr(?lstr3_ihm_main+0)
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_strcpy+0
NOP	
J	L_main24
NOP	
L_main23:
;ihm_main.c,134 :: 		else strcpy(WriteBuffer, "NEXT\r\n");
LUI	R26, hi_addr(?lstr4_ihm_main+0)
ORI	R26, R26, lo_addr(?lstr4_ihm_main+0)
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_strcpy+0
NOP	
L_main24:
;ihm_main.c,135 :: 		HID_Write(WriteBuffer,USB_LENGTH);
ORI	R26, R0, 64
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_HID_Write+0
NOP	
;ihm_main.c,137 :: 		}
J	L_main25
NOP	
;ihm_main.c,130 :: 		else if ((receive_block>=0)&&(receive_block<2048)) {
L__main39:
L__main38:
;ihm_main.c,139 :: 		else if (strstr(&ReadBuffer, "AT+DRAW_IMAGE=")) {
LUI	R26, hi_addr(?lstr5_ihm_main+0)
ORI	R26, R26, lo_addr(?lstr5_ihm_main+0)
LUI	R25, hi_addr(_ReadBuffer+0)
ORI	R25, R25, lo_addr(_ReadBuffer+0)
JAL	_strstr+0
NOP	
BNE	R2, R0, L__main59
NOP	
J	L_main26
NOP	
L__main59:
;ihm_main.c,140 :: 		image_to_draw = ReadBuffer[strlen("AT+DRAW_IMAGE=")]-'0';
LUI	R25, hi_addr(?lstr6_ihm_main+0)
ORI	R25, R25, lo_addr(?lstr6_ihm_main+0)
JAL	_strlen+0
NOP	
SEH	R3, R2
LUI	R2, hi_addr(_ReadBuffer+0)
ORI	R2, R2, lo_addr(_ReadBuffer+0)
ADDU	R2, R2, R3
LBU	R2, 0(R2)
ANDI	R2, R2, 255
ADDIU	R4, R2, -48
;ihm_main.c,141 :: 		DrawIcon(image_to_draw%4, image_to_draw/4);
SEH	R2, R4
SRA	R3, R2, 2
ORI	R2, R0, 4
DIV	R4, R2
MFHI	R2
SEH	R26, R3
SEH	R25, R2
JAL	_DrawIcon+0
NOP	
;ihm_main.c,142 :: 		strcpy(WriteBuffer, "OK\r\n");
LUI	R26, hi_addr(?lstr7_ihm_main+0)
ORI	R26, R26, lo_addr(?lstr7_ihm_main+0)
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_strcpy+0
NOP	
;ihm_main.c,143 :: 		HID_Write(WriteBuffer,USB_LENGTH);
ORI	R26, R0, 64
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_HID_Write+0
NOP	
;ihm_main.c,144 :: 		}
J	L_main27
NOP	
L_main26:
;ihm_main.c,145 :: 		else if (strstr(&ReadBuffer, "AT+SET_PAGENUM=")) {
LUI	R26, hi_addr(?lstr8_ihm_main+0)
ORI	R26, R26, lo_addr(?lstr8_ihm_main+0)
LUI	R25, hi_addr(_ReadBuffer+0)
ORI	R25, R25, lo_addr(_ReadBuffer+0)
JAL	_strstr+0
NOP	
BNE	R2, R0, L__main61
NOP	
J	L_main28
NOP	
L__main61:
;ihm_main.c,146 :: 		PageNumber.Font_Color=CL_WHITE;
ORI	R2, R0, 65535
SH	R2, Offset(_PageNumber+24)(GP)
;ihm_main.c,147 :: 		DrawLabel(&PageNumber);
LUI	R25, hi_addr(_PageNumber+0)
ORI	R25, R25, lo_addr(_PageNumber+0)
JAL	_DrawLabel+0
NOP	
;ihm_main.c,148 :: 		strncpy(PageNumber.Caption, &ReadBuffer + strlen("AT+SET_PAGENUM="), 29);
LUI	R25, hi_addr(?lstr9_ihm_main+0)
ORI	R25, R25, lo_addr(?lstr9_ihm_main+0)
JAL	_strlen+0
NOP	
SEH	R3, R2
LUI	R2, hi_addr(_ReadBuffer+0)
ORI	R2, R2, lo_addr(_ReadBuffer+0)
ADDU	R2, R2, R3
ORI	R27, R0, 29
MOVZ	R26, R2, R0
LW	R25, Offset(_PageNumber+16)(GP)
JAL	_strncpy+0
NOP	
;ihm_main.c,149 :: 		PageNumber.Font_Color=CL_BLACK;
SH	R0, Offset(_PageNumber+24)(GP)
;ihm_main.c,150 :: 		DrawLabel(&PageNumber);
LUI	R25, hi_addr(_PageNumber+0)
ORI	R25, R25, lo_addr(_PageNumber+0)
JAL	_DrawLabel+0
NOP	
;ihm_main.c,151 :: 		strcpy(WriteBuffer, "OK\r\n");
LUI	R26, hi_addr(?lstr10_ihm_main+0)
ORI	R26, R26, lo_addr(?lstr10_ihm_main+0)
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_strcpy+0
NOP	
;ihm_main.c,152 :: 		HID_Write(WriteBuffer,USB_LENGTH);
ORI	R26, R0, 64
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_HID_Write+0
NOP	
;ihm_main.c,153 :: 		}
J	L_main29
NOP	
L_main28:
;ihm_main.c,154 :: 		else if (strstr(&ReadBuffer, "AT+SET_ICON_NAME=")) {
LUI	R26, hi_addr(?lstr11_ihm_main+0)
ORI	R26, R26, lo_addr(?lstr11_ihm_main+0)
LUI	R25, hi_addr(_ReadBuffer+0)
ORI	R25, R25, lo_addr(_ReadBuffer+0)
JAL	_strstr+0
NOP	
BNE	R2, R0, L__main63
NOP	
J	L_main30
NOP	
L__main63:
;ihm_main.c,155 :: 		strncpy(Image_text, &ReadBuffer + strlen("AT+SET_ICON_NAME="), 29);
LUI	R25, hi_addr(?lstr12_ihm_main+0)
ORI	R25, R25, lo_addr(?lstr12_ihm_main+0)
JAL	_strlen+0
NOP	
SEH	R3, R2
LUI	R2, hi_addr(_ReadBuffer+0)
ORI	R2, R2, lo_addr(_ReadBuffer+0)
ADDU	R2, R2, R3
ORI	R27, R0, 29
MOVZ	R26, R2, R0
LUI	R25, hi_addr(_Image_text+0)
ORI	R25, R25, lo_addr(_Image_text+0)
JAL	_strncpy+0
NOP	
;ihm_main.c,156 :: 		strcpy(WriteBuffer, "OK\r\n");
LUI	R26, hi_addr(?lstr13_ihm_main+0)
ORI	R26, R26, lo_addr(?lstr13_ihm_main+0)
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_strcpy+0
NOP	
;ihm_main.c,157 :: 		HID_Write(WriteBuffer,USB_LENGTH);
ORI	R26, R0, 64
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_HID_Write+0
NOP	
;ihm_main.c,158 :: 		}
J	L_main31
NOP	
L_main30:
;ihm_main.c,159 :: 		else if (strstr(&ReadBuffer, "AT+DRAW_ICON_NAME=")) {
LUI	R26, hi_addr(?lstr14_ihm_main+0)
ORI	R26, R26, lo_addr(?lstr14_ihm_main+0)
LUI	R25, hi_addr(_ReadBuffer+0)
ORI	R25, R25, lo_addr(_ReadBuffer+0)
JAL	_strstr+0
NOP	
BNE	R2, R0, L__main65
NOP	
J	L_main32
NOP	
L__main65:
;ihm_main.c,160 :: 		image_to_draw = ReadBuffer[strlen("AT+DRAW_ICON_NAME=")]-'0';
LUI	R25, hi_addr(?lstr15_ihm_main+0)
ORI	R25, R25, lo_addr(?lstr15_ihm_main+0)
JAL	_strlen+0
NOP	
SEH	R3, R2
LUI	R2, hi_addr(_ReadBuffer+0)
ORI	R2, R2, lo_addr(_ReadBuffer+0)
ADDU	R2, R2, R3
LBU	R2, 0(R2)
ANDI	R2, R2, 255
ADDIU	R4, R2, -48
;ihm_main.c,161 :: 		DrawIconName(image_to_draw%4, image_to_draw/4);
SEH	R2, R4
SRA	R3, R2, 2
ORI	R2, R0, 4
DIV	R4, R2
MFHI	R2
SEH	R26, R3
SEH	R25, R2
JAL	_DrawIconName+0
NOP	
;ihm_main.c,162 :: 		strcpy(WriteBuffer, "OK\r\n");
LUI	R26, hi_addr(?lstr16_ihm_main+0)
ORI	R26, R26, lo_addr(?lstr16_ihm_main+0)
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_strcpy+0
NOP	
;ihm_main.c,163 :: 		HID_Write(WriteBuffer,USB_LENGTH);
ORI	R26, R0, 64
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_HID_Write+0
NOP	
;ihm_main.c,164 :: 		}
J	L_main33
NOP	
L_main32:
;ihm_main.c,165 :: 		else if (strstr(&ReadBuffer, "PING")) {
LUI	R26, hi_addr(?lstr17_ihm_main+0)
ORI	R26, R26, lo_addr(?lstr17_ihm_main+0)
LUI	R25, hi_addr(_ReadBuffer+0)
ORI	R25, R25, lo_addr(_ReadBuffer+0)
JAL	_strstr+0
NOP	
BNE	R2, R0, L__main67
NOP	
J	L_main34
NOP	
L__main67:
;ihm_main.c,166 :: 		strcpy(WriteBuffer, "PONG\r\n");
LUI	R26, hi_addr(?lstr18_ihm_main+0)
ORI	R26, R26, lo_addr(?lstr18_ihm_main+0)
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_strcpy+0
NOP	
;ihm_main.c,167 :: 		HID_Write(WriteBuffer,USB_LENGTH);
ORI	R26, R0, 64
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_HID_Write+0
NOP	
;ihm_main.c,168 :: 		}
J	L_main35
NOP	
L_main34:
;ihm_main.c,170 :: 		strcpy(WriteBuffer, "UNKNOWN\r\n");
LUI	R26, hi_addr(?lstr19_ihm_main+0)
ORI	R26, R26, lo_addr(?lstr19_ihm_main+0)
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_strcpy+0
NOP	
;ihm_main.c,171 :: 		HID_Write(WriteBuffer,USB_LENGTH);
ORI	R26, R0, 64
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_HID_Write+0
NOP	
;ihm_main.c,172 :: 		}
L_main35:
L_main33:
L_main31:
L_main29:
L_main27:
L_main25:
L_main19:
;ihm_main.c,173 :: 		}
L_main17:
;ihm_main.c,174 :: 		ClearBuffer(&ReadBuffer, USB_LENGTH);
ORI	R26, R0, 64
LUI	R25, hi_addr(_ReadBuffer+0)
ORI	R25, R25, lo_addr(_ReadBuffer+0)
JAL	_ClearBuffer+0
NOP	
;ihm_main.c,175 :: 		if(receive_block > 2048-USB_LENGTH) receive_block = -1;
LH	R2, 4(SP)
SLTI	R2, R2, 1985
BEQ	R2, R0, L__main68
NOP	
J	L_main36
NOP	
L__main68:
ORI	R2, R0, 65535
SH	R2, 4(SP)
L_main36:
;ihm_main.c,176 :: 		}
J	L_main15
NOP	
;ihm_main.c,177 :: 		}
L_end_main:
L__main_end_loop:
J	L__main_end_loop
NOP	
; end of _main
