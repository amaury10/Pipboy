_ButtonRound1OnClick:
;ihm_events_code.c,11 :: 		void ButtonRound1OnClick() {
ADDIU	SP, SP, -12
SW	RA, 0(SP)
;ihm_events_code.c,12 :: 		strcpy(&WriteBuffer, "Previous\r\n");
SW	R25, 4(SP)
SW	R26, 8(SP)
LUI	R26, hi_addr(?lstr1_ihm_events_code+0)
ORI	R26, R26, lo_addr(?lstr1_ihm_events_code+0)
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_strcpy+0
NOP	
;ihm_events_code.c,13 :: 		HID_Write(&WriteBuffer, 64);
ORI	R26, R0, 64
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_HID_Write+0
NOP	
;ihm_events_code.c,14 :: 		}
L_end_ButtonRound1OnClick:
LW	R26, 8(SP)
LW	R25, 4(SP)
LW	RA, 0(SP)
ADDIU	SP, SP, 12
JR	RA
NOP	
; end of _ButtonRound1OnClick
_ButtonRound2OnClick:
;ihm_events_code.c,16 :: 		void ButtonRound2OnClick() {
ADDIU	SP, SP, -12
SW	RA, 0(SP)
;ihm_events_code.c,17 :: 		strcpy(&WriteBuffer, "Next\r\n");
SW	R25, 4(SP)
SW	R26, 8(SP)
LUI	R26, hi_addr(?lstr2_ihm_events_code+0)
ORI	R26, R26, lo_addr(?lstr2_ihm_events_code+0)
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_strcpy+0
NOP	
;ihm_events_code.c,18 :: 		HID_Write(&WriteBuffer, 64);
ORI	R26, R0, 64
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_HID_Write+0
NOP	
;ihm_events_code.c,19 :: 		}
L_end_ButtonRound2OnClick:
LW	R26, 8(SP)
LW	R25, 4(SP)
LW	RA, 0(SP)
ADDIU	SP, SP, 12
JR	RA
NOP	
; end of _ButtonRound2OnClick
_IconOnClick:
;ihm_events_code.c,21 :: 		void IconOnClick(unsigned int X, unsigned int Y) {
ADDIU	SP, SP, -12
SW	RA, 0(SP)
;ihm_events_code.c,22 :: 		int icon_number = -1, Ix = -1, Iy = -1;
SW	R25, 4(SP)
SW	R26, 8(SP)
;ihm_events_code.c,23 :: 		Ix = X/80;
ORI	R2, R0, 80
DIVU	R25, R2
MFLO	R2
; Ix start address is: 12 (R3)
ANDI	R3, R2, 65535
;ihm_events_code.c,24 :: 		Iy = Y/80;
ORI	R2, R0, 80
DIVU	R26, R2
MFLO	R2
; Iy start address is: 16 (R4)
ANDI	R4, R2, 65535
;ihm_events_code.c,25 :: 		if (Iy < 2) {
SEH	R2, R2
SLTI	R2, R2, 2
BNE	R2, R0, L__IconOnClick4
NOP	
J	L_IconOnClick0
NOP	
L__IconOnClick4:
;ihm_events_code.c,26 :: 		sprintf(&WriteBuffer, "Icon=%d\r\n", Ix+4*Iy);
SEH	R2, R4
; Iy end address is: 16 (R4)
SLL	R2, R2, 2
ADDU	R2, R3, R2
; Ix end address is: 12 (R3)
ADDIU	SP, SP, -12
SH	R2, 8(SP)
LUI	R2, hi_addr(?lstr_3_ihm_events_code+0)
ORI	R2, R2, lo_addr(?lstr_3_ihm_events_code+0)
SW	R2, 4(SP)
LUI	R2, hi_addr(_WriteBuffer+0)
ORI	R2, R2, lo_addr(_WriteBuffer+0)
SW	R2, 0(SP)
JAL	_sprintf+0
NOP	
ADDIU	SP, SP, 12
;ihm_events_code.c,27 :: 		HID_Write(&WriteBuffer, 64);
ORI	R26, R0, 64
LUI	R25, hi_addr(_WriteBuffer+0)
ORI	R25, R25, lo_addr(_WriteBuffer+0)
JAL	_HID_Write+0
NOP	
;ihm_events_code.c,28 :: 		}
L_IconOnClick0:
;ihm_events_code.c,29 :: 		}
L_end_IconOnClick:
LW	R26, 8(SP)
LW	R25, 4(SP)
LW	RA, 0(SP)
ADDIU	SP, SP, 12
JR	RA
NOP	
; end of _IconOnClick
