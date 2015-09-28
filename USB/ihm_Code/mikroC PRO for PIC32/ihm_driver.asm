_PMPWaitBusy:
;ihm_driver.c,56 :: 		void PMPWaitBusy() {
;ihm_driver.c,57 :: 		while(PMMODEbits.BUSY);
L_PMPWaitBusy0:
LBU	R2, Offset(PMMODEbits+1)(GP)
EXT	R2, R2, 7, 1
BNE	R2, R0, L__PMPWaitBusy124
NOP	
J	L_PMPWaitBusy1
NOP	
L__PMPWaitBusy124:
J	L_PMPWaitBusy0
NOP	
L_PMPWaitBusy1:
;ihm_driver.c,58 :: 		}
L_end_PMPWaitBusy:
JR	RA
NOP	
; end of _PMPWaitBusy
_Set_Index:
;ihm_driver.c,60 :: 		void Set_Index(unsigned short index) {
ADDIU	SP, SP, -4
SW	RA, 0(SP)
;ihm_driver.c,61 :: 		TFT_RS = 0;
LUI	R2, BitMask(LATB15_bit+0)
ORI	R2, R2, BitMask(LATB15_bit+0)
_SX	
;ihm_driver.c,62 :: 		PMDIN = index;
ANDI	R2, R25, 255
SW	R2, Offset(PMDIN+0)(GP)
;ihm_driver.c,63 :: 		PMPWaitBusy();
JAL	_PMPWaitBusy+0
NOP	
;ihm_driver.c,64 :: 		}
L_end_Set_Index:
LW	RA, 0(SP)
ADDIU	SP, SP, 4
JR	RA
NOP	
; end of _Set_Index
_Write_Command:
;ihm_driver.c,66 :: 		void Write_Command( unsigned short cmd ) {
ADDIU	SP, SP, -4
SW	RA, 0(SP)
;ihm_driver.c,67 :: 		TFT_RS = 1;
LUI	R2, BitMask(LATB15_bit+0)
ORI	R2, R2, BitMask(LATB15_bit+0)
_SX	
;ihm_driver.c,68 :: 		PMDIN = cmd;
ANDI	R2, R25, 255
SW	R2, Offset(PMDIN+0)(GP)
;ihm_driver.c,69 :: 		PMPWaitBusy();
JAL	_PMPWaitBusy+0
NOP	
;ihm_driver.c,70 :: 		}
L_end_Write_Command:
LW	RA, 0(SP)
ADDIU	SP, SP, 4
JR	RA
NOP	
; end of _Write_Command
_Write_Data:
;ihm_driver.c,72 :: 		void Write_Data(unsigned int _data) {
ADDIU	SP, SP, -4
SW	RA, 0(SP)
;ihm_driver.c,73 :: 		TFT_RS = 1;
LUI	R2, BitMask(LATB15_bit+0)
ORI	R2, R2, BitMask(LATB15_bit+0)
_SX	
;ihm_driver.c,74 :: 		PMDIN = _data;
ANDI	R2, R25, 65535
SW	R2, Offset(PMDIN+0)(GP)
;ihm_driver.c,75 :: 		PMPWaitBusy();
JAL	_PMPWaitBusy+0
NOP	
;ihm_driver.c,76 :: 		}
L_end_Write_Data:
LW	RA, 0(SP)
ADDIU	SP, SP, 4
JR	RA
NOP	
; end of _Write_Data
_Init_ADC:
;ihm_driver.c,79 :: 		void Init_ADC() {
ADDIU	SP, SP, -4
SW	RA, 0(SP)
;ihm_driver.c,80 :: 		AD1PCFG = 0xFFFF;
ORI	R2, R0, 65535
SW	R2, Offset(AD1PCFG+0)(GP)
;ihm_driver.c,81 :: 		PCFG12_bit = 0;
LUI	R2, BitMask(PCFG12_bit+0)
ORI	R2, R2, BitMask(PCFG12_bit+0)
_SX	
;ihm_driver.c,82 :: 		PCFG13_bit = 0;
LUI	R2, BitMask(PCFG13_bit+0)
ORI	R2, R2, BitMask(PCFG13_bit+0)
_SX	
;ihm_driver.c,84 :: 		ADC1_Init();
JAL	_ADC1_Init+0
NOP	
;ihm_driver.c,85 :: 		}
L_end_Init_ADC:
LW	RA, 0(SP)
ADDIU	SP, SP, 4
JR	RA
NOP	
; end of _Init_ADC
ihm_driver_InitializeTouchPanel:
;ihm_driver.c,86 :: 		static void InitializeTouchPanel() {
ADDIU	SP, SP, -20
SW	RA, 0(SP)
;ihm_driver.c,87 :: 		Init_ADC();
SW	R25, 4(SP)
SW	R26, 8(SP)
SW	R27, 12(SP)
SW	R28, 16(SP)
JAL	_Init_ADC+0
NOP	
;ihm_driver.c,88 :: 		TFT_Set_Active(Set_Index, Write_Command, Write_Data);
LUI	R27, hi_addr(_Write_Data+0)
ORI	R27, R27, lo_addr(_Write_Data+0)
LUI	R26, hi_addr(_Write_Command+0)
ORI	R26, R26, lo_addr(_Write_Command+0)
LUI	R25, hi_addr(_Set_Index+0)
ORI	R25, R25, lo_addr(_Set_Index+0)
JAL	_TFT_Set_Active+0
NOP	
;ihm_driver.c,89 :: 		TFT_Init(320, 240);
ORI	R26, R0, 240
ORI	R25, R0, 320
JAL	_TFT_Init+0
NOP	
;ihm_driver.c,91 :: 		TP_TFT_Init(320, 240, 13, 12);                                  // Initialize touch panel
ORI	R28, R0, 12
ORI	R27, R0, 13
ORI	R26, R0, 240
ORI	R25, R0, 320
JAL	_TP_TFT_Init+0
NOP	
;ihm_driver.c,92 :: 		TP_TFT_Set_ADC_Threshold(ADC_THRESHOLD);                              // Set touch panel ADC threshold
ORI	R25, R0, 1000
JAL	_TP_TFT_Set_ADC_Threshold+0
NOP	
;ihm_driver.c,94 :: 		PenDown = 0;
SB	R0, Offset(_PenDown+0)(GP)
;ihm_driver.c,95 :: 		PressedObject = 0;
SW	R0, Offset(_PressedObject+0)(GP)
;ihm_driver.c,96 :: 		PressedObjectType = -1;
ORI	R2, R0, 65535
SH	R2, Offset(_PressedObjectType+0)(GP)
;ihm_driver.c,97 :: 		}
L_end_InitializeTouchPanel:
LW	R28, 16(SP)
LW	R27, 12(SP)
LW	R26, 8(SP)
LW	R25, 4(SP)
LW	RA, 0(SP)
ADDIU	SP, SP, 20
JR	RA
NOP	
; end of ihm_driver_InitializeTouchPanel
_Calibrate:
;ihm_driver.c,99 :: 		void Calibrate() {
ADDIU	SP, SP, -20
SW	RA, 0(SP)
;ihm_driver.c,100 :: 		TFT_Set_Pen(CL_WHITE, 3);
SW	R25, 4(SP)
SW	R26, 8(SP)
SW	R27, 12(SP)
SW	R28, 16(SP)
ORI	R26, R0, 3
ORI	R25, R0, 65535
JAL	_TFT_Set_Pen+0
NOP	
;ihm_driver.c,101 :: 		TFT_Set_Font(TFT_defaultFont, CL_WHITE, FO_HORIZONTAL);
MOVZ	R27, R0, R0
ORI	R26, R0, 65535
LUI	R25, hi_addr(_TFT_defaultFont+0)
ORI	R25, R25, lo_addr(_TFT_defaultFont+0)
JAL	_TFT_Set_Font+0
NOP	
;ihm_driver.c,102 :: 		TFT_Write_Text("Touch selected corners for calibration", 50, 75);
ORI	R27, R0, 75
ORI	R26, R0, 50
LUI	R25, hi_addr(?lstr1_ihm_driver+0)
ORI	R25, R25, lo_addr(?lstr1_ihm_driver+0)
JAL	_TFT_Write_Text+0
NOP	
;ihm_driver.c,103 :: 		TFT_Line(315, 1, 319, 1);
ORI	R28, R0, 1
ORI	R27, R0, 319
ORI	R26, R0, 1
ORI	R25, R0, 315
JAL	_TFT_Line+0
NOP	
;ihm_driver.c,104 :: 		TFT_Line(310, 10, 319, 1);
ORI	R28, R0, 1
ORI	R27, R0, 319
ORI	R26, R0, 10
ORI	R25, R0, 310
JAL	_TFT_Line+0
NOP	
;ihm_driver.c,105 :: 		TFT_Line(319, 5, 319, 1);
ORI	R28, R0, 1
ORI	R27, R0, 319
ORI	R26, R0, 5
ORI	R25, R0, 319
JAL	_TFT_Line+0
NOP	
;ihm_driver.c,106 :: 		TFT_Write_Text("first here", 230, 20);
ORI	R27, R0, 20
ORI	R26, R0, 230
LUI	R25, hi_addr(?lstr2_ihm_driver+0)
ORI	R25, R25, lo_addr(?lstr2_ihm_driver+0)
JAL	_TFT_Write_Text+0
NOP	
;ihm_driver.c,107 :: 		TFT_Image(47, 90, logo_bmp, 1);
LUI	R2, hi_addr(_logo_bmp+0)
ORI	R2, R2, lo_addr(_logo_bmp+0)
ORI	R28, R0, 1
MOVZ	R27, R2, R0
ORI	R26, R0, 90
ORI	R25, R0, 47
JAL	_TFT_Image+0
NOP	
;ihm_driver.c,127 :: 		TP_TFT_Calibrate_Min();                      // Calibration of TP minimum
JAL	_TP_TFT_Calibrate_Min+0
NOP	
;ihm_driver.c,128 :: 		Delay_ms(500);
LUI	R24, 203
ORI	R24, R24, 29524
L_Calibrate2:
ADDIU	R24, R24, -1
BNE	R24, R0, L_Calibrate2
NOP	
NOP	
NOP	
;ihm_driver.c,130 :: 		TFT_Set_Pen(CL_BLACK, 3);
ORI	R26, R0, 3
MOVZ	R25, R0, R0
JAL	_TFT_Set_Pen+0
NOP	
;ihm_driver.c,131 :: 		TFT_Set_Font(TFT_defaultFont, CL_BLACK, FO_HORIZONTAL);
MOVZ	R27, R0, R0
MOVZ	R26, R0, R0
LUI	R25, hi_addr(_TFT_defaultFont+0)
ORI	R25, R25, lo_addr(_TFT_defaultFont+0)
JAL	_TFT_Set_Font+0
NOP	
;ihm_driver.c,132 :: 		TFT_Line(315, 1, 319, 1);
ORI	R28, R0, 1
ORI	R27, R0, 319
ORI	R26, R0, 1
ORI	R25, R0, 315
JAL	_TFT_Line+0
NOP	
;ihm_driver.c,133 :: 		TFT_Line(310, 10, 319, 1);
ORI	R28, R0, 1
ORI	R27, R0, 319
ORI	R26, R0, 10
ORI	R25, R0, 310
JAL	_TFT_Line+0
NOP	
;ihm_driver.c,134 :: 		TFT_Line(319, 5, 319, 1);
ORI	R28, R0, 1
ORI	R27, R0, 319
ORI	R26, R0, 5
ORI	R25, R0, 319
JAL	_TFT_Line+0
NOP	
;ihm_driver.c,135 :: 		TFT_Write_Text("first here", 230, 20);
ORI	R27, R0, 20
ORI	R26, R0, 230
LUI	R25, hi_addr(?lstr3_ihm_driver+0)
ORI	R25, R25, lo_addr(?lstr3_ihm_driver+0)
JAL	_TFT_Write_Text+0
NOP	
;ihm_driver.c,137 :: 		TFT_Set_Pen(CL_WHITE, 3);
ORI	R26, R0, 3
ORI	R25, R0, 65535
JAL	_TFT_Set_Pen+0
NOP	
;ihm_driver.c,138 :: 		TFT_Set_Font(TFT_defaultFont, CL_WHITE, FO_HORIZONTAL);
MOVZ	R27, R0, R0
ORI	R26, R0, 65535
LUI	R25, hi_addr(_TFT_defaultFont+0)
ORI	R25, R25, lo_addr(_TFT_defaultFont+0)
JAL	_TFT_Set_Font+0
NOP	
;ihm_driver.c,139 :: 		TFT_Line(0, 239, 0, 235);
ORI	R28, R0, 235
MOVZ	R27, R0, R0
ORI	R26, R0, 239
MOVZ	R25, R0, R0
JAL	_TFT_Line+0
NOP	
;ihm_driver.c,140 :: 		TFT_Line(0, 239, 5, 239);
ORI	R28, R0, 239
ORI	R27, R0, 5
ORI	R26, R0, 239
MOVZ	R25, R0, R0
JAL	_TFT_Line+0
NOP	
;ihm_driver.c,141 :: 		TFT_Line(0, 239, 10, 230);
ORI	R28, R0, 230
ORI	R27, R0, 10
ORI	R26, R0, 239
MOVZ	R25, R0, R0
JAL	_TFT_Line+0
NOP	
;ihm_driver.c,142 :: 		TFT_Write_Text("now here ", 15, 200);
ORI	R27, R0, 200
ORI	R26, R0, 15
LUI	R25, hi_addr(?lstr4_ihm_driver+0)
ORI	R25, R25, lo_addr(?lstr4_ihm_driver+0)
JAL	_TFT_Write_Text+0
NOP	
;ihm_driver.c,144 :: 		TP_TFT_Calibrate_Max();                       // Calibration of TP maximum
JAL	_TP_TFT_Calibrate_Max+0
NOP	
;ihm_driver.c,145 :: 		Delay_ms(500);
LUI	R24, 203
ORI	R24, R24, 29524
L_Calibrate4:
ADDIU	R24, R24, -1
BNE	R24, R0, L_Calibrate4
NOP	
NOP	
NOP	
;ihm_driver.c,146 :: 		}
L_end_Calibrate:
LW	R28, 16(SP)
LW	R27, 12(SP)
LW	R26, 8(SP)
LW	R25, 4(SP)
LW	RA, 0(SP)
ADDIU	SP, SP, 20
JR	RA
NOP	
; end of _Calibrate
ihm_driver_InitializeObjects:
;ihm_driver.c,174 :: 		static void InitializeObjects() {
;ihm_driver.c,175 :: 		Screen1.Color                     = 0xFFFF;
ORI	R2, R0, 65535
SH	R2, Offset(_Screen1+0)(GP)
;ihm_driver.c,176 :: 		Screen1.Width                     = 320;
ORI	R2, R0, 320
SH	R2, Offset(_Screen1+2)(GP)
;ihm_driver.c,177 :: 		Screen1.Height                    = 240;
ORI	R2, R0, 240
SH	R2, Offset(_Screen1+4)(GP)
;ihm_driver.c,178 :: 		Screen1.Buttons_RoundCount        = 2;
ORI	R2, R0, 2
SH	R2, Offset(_Screen1+8)(GP)
;ihm_driver.c,179 :: 		Screen1.Buttons_Round             = Screen1_Buttons_Round;
LUI	R2, hi_addr(_Screen1_Buttons_Round+0)
ORI	R2, R2, lo_addr(_Screen1_Buttons_Round+0)
SW	R2, Offset(_Screen1+12)(GP)
;ihm_driver.c,180 :: 		Screen1.LabelsCount               = 1;
ORI	R2, R0, 1
SH	R2, Offset(_Screen1+16)(GP)
;ihm_driver.c,181 :: 		Screen1.Labels                    = Screen1_Labels;
LUI	R2, hi_addr(_Screen1_Labels+0)
ORI	R2, R2, lo_addr(_Screen1_Labels+0)
SW	R2, Offset(_Screen1+20)(GP)
;ihm_driver.c,182 :: 		Screen1.ImagesCount               = 0;
SH	R0, Offset(_Screen1+24)(GP)
;ihm_driver.c,183 :: 		Screen1.Images                    = 0;
SW	R0, Offset(_Screen1+28)(GP)
;ihm_driver.c,184 :: 		Screen1.ObjectsCount              = 3;
ORI	R2, R0, 3
SH	R2, Offset(_Screen1+6)(GP)
;ihm_driver.c,187 :: 		Previous.OwnerScreen     = &Screen1;
LUI	R2, hi_addr(_Screen1+0)
ORI	R2, R2, lo_addr(_Screen1+0)
SW	R2, Offset(_Previous+0)(GP)
;ihm_driver.c,188 :: 		Previous.Order           = 0;
SB	R0, Offset(_Previous+4)(GP)
;ihm_driver.c,189 :: 		Previous.Left            = 5;
ORI	R2, R0, 5
SH	R2, Offset(_Previous+6)(GP)
;ihm_driver.c,190 :: 		Previous.Top             = 180;
ORI	R2, R0, 180
SH	R2, Offset(_Previous+8)(GP)
;ihm_driver.c,191 :: 		Previous.Width           = 55;
ORI	R2, R0, 55
SH	R2, Offset(_Previous+10)(GP)
;ihm_driver.c,192 :: 		Previous.Height          = 55;
ORI	R2, R0, 55
SH	R2, Offset(_Previous+12)(GP)
;ihm_driver.c,193 :: 		Previous.Pen_Width       = 1;
ORI	R2, R0, 1
SB	R2, Offset(_Previous+14)(GP)
;ihm_driver.c,194 :: 		Previous.Pen_Color       = 0x0000;
SH	R0, Offset(_Previous+16)(GP)
;ihm_driver.c,195 :: 		Previous.Visible         = 1;
ORI	R2, R0, 1
SB	R2, Offset(_Previous+18)(GP)
;ihm_driver.c,196 :: 		Previous.Active          = 1;
ORI	R2, R0, 1
SB	R2, Offset(_Previous+19)(GP)
;ihm_driver.c,197 :: 		Previous.Transparent     = 1;
ORI	R2, R0, 1
SB	R2, Offset(_Previous+20)(GP)
;ihm_driver.c,198 :: 		Previous.Caption         = Previous_Caption;
LUI	R2, hi_addr(_Previous_Caption+0)
ORI	R2, R2, lo_addr(_Previous_Caption+0)
SW	R2, Offset(_Previous+24)(GP)
;ihm_driver.c,199 :: 		Previous.TextAlign       = _taCenter;
ORI	R2, R0, 1
SB	R2, Offset(_Previous+28)(GP)
;ihm_driver.c,200 :: 		Previous.TextAlignVertical= _tavMiddle;
ORI	R2, R0, 1
SB	R2, Offset(_Previous+29)(GP)
;ihm_driver.c,201 :: 		Previous.FontName        = Tahoma11x13_Regular;
LUI	R3, hi_addr(_Tahoma11x13_Regular+0)
ORI	R3, R3, lo_addr(_Tahoma11x13_Regular+0)
SW	R3, Offset(_Previous+32)(GP)
;ihm_driver.c,202 :: 		Previous.PressColEnabled = 1;
ORI	R2, R0, 1
SB	R2, Offset(_Previous+49)(GP)
;ihm_driver.c,203 :: 		Previous.Font_Color      = 0x0000;
SH	R0, Offset(_Previous+36)(GP)
;ihm_driver.c,204 :: 		Previous.VerticalText    = 0;
SB	R0, Offset(_Previous+38)(GP)
;ihm_driver.c,205 :: 		Previous.Gradient        = 1;
ORI	R2, R0, 1
SB	R2, Offset(_Previous+39)(GP)
;ihm_driver.c,206 :: 		Previous.Gradient_Orientation = 0;
SB	R0, Offset(_Previous+40)(GP)
;ihm_driver.c,207 :: 		Previous.Gradient_Start_Color = 0xFFFF;
ORI	R2, R0, 65535
SH	R2, Offset(_Previous+42)(GP)
;ihm_driver.c,208 :: 		Previous.Gradient_End_Color = 0xC618;
ORI	R2, R0, 50712
SH	R2, Offset(_Previous+44)(GP)
;ihm_driver.c,209 :: 		Previous.Color           = 0xC618;
ORI	R2, R0, 50712
SH	R2, Offset(_Previous+46)(GP)
;ihm_driver.c,210 :: 		Previous.Press_Color     = 0xE71C;
ORI	R2, R0, 59164
SH	R2, Offset(_Previous+50)(GP)
;ihm_driver.c,211 :: 		Previous.Corner_Radius   = 3;
ORI	R2, R0, 3
SB	R2, Offset(_Previous+48)(GP)
;ihm_driver.c,212 :: 		Previous.OnUpPtr         = 0;
SW	R0, Offset(_Previous+52)(GP)
;ihm_driver.c,213 :: 		Previous.OnDownPtr       = 0;
SW	R0, Offset(_Previous+56)(GP)
;ihm_driver.c,214 :: 		Previous.OnClickPtr      = &ButtonRound1OnClick;
LUI	R2, hi_addr(_ButtonRound1OnClick+0)
ORI	R2, R2, lo_addr(_ButtonRound1OnClick+0)
SW	R2, Offset(_Previous+60)(GP)
;ihm_driver.c,215 :: 		Previous.OnPressPtr      = 0;
SW	R0, Offset(_Previous+64)(GP)
;ihm_driver.c,217 :: 		ButtonRound1.OwnerScreen     = &Screen1;
LUI	R2, hi_addr(_Screen1+0)
ORI	R2, R2, lo_addr(_Screen1+0)
SW	R2, Offset(_ButtonRound1+0)(GP)
;ihm_driver.c,218 :: 		ButtonRound1.Order           = 1;
ORI	R2, R0, 1
SB	R2, Offset(_ButtonRound1+4)(GP)
;ihm_driver.c,219 :: 		ButtonRound1.Left            = 260;
ORI	R2, R0, 260
SH	R2, Offset(_ButtonRound1+6)(GP)
;ihm_driver.c,220 :: 		ButtonRound1.Top             = 180;
ORI	R2, R0, 180
SH	R2, Offset(_ButtonRound1+8)(GP)
;ihm_driver.c,221 :: 		ButtonRound1.Width           = 55;
ORI	R2, R0, 55
SH	R2, Offset(_ButtonRound1+10)(GP)
;ihm_driver.c,222 :: 		ButtonRound1.Height          = 55;
ORI	R2, R0, 55
SH	R2, Offset(_ButtonRound1+12)(GP)
;ihm_driver.c,223 :: 		ButtonRound1.Pen_Width       = 1;
ORI	R2, R0, 1
SB	R2, Offset(_ButtonRound1+14)(GP)
;ihm_driver.c,224 :: 		ButtonRound1.Pen_Color       = 0x0000;
SH	R0, Offset(_ButtonRound1+16)(GP)
;ihm_driver.c,225 :: 		ButtonRound1.Visible         = 1;
ORI	R2, R0, 1
SB	R2, Offset(_ButtonRound1+18)(GP)
;ihm_driver.c,226 :: 		ButtonRound1.Active          = 1;
ORI	R2, R0, 1
SB	R2, Offset(_ButtonRound1+19)(GP)
;ihm_driver.c,227 :: 		ButtonRound1.Transparent     = 1;
ORI	R2, R0, 1
SB	R2, Offset(_ButtonRound1+20)(GP)
;ihm_driver.c,228 :: 		ButtonRound1.Caption         = ButtonRound1_Caption;
LUI	R2, hi_addr(_ButtonRound1_Caption+0)
ORI	R2, R2, lo_addr(_ButtonRound1_Caption+0)
SW	R2, Offset(_ButtonRound1+24)(GP)
;ihm_driver.c,229 :: 		ButtonRound1.TextAlign       = _taCenter;
ORI	R2, R0, 1
SB	R2, Offset(_ButtonRound1+28)(GP)
;ihm_driver.c,230 :: 		ButtonRound1.TextAlignVertical= _tavMiddle;
ORI	R2, R0, 1
SB	R2, Offset(_ButtonRound1+29)(GP)
;ihm_driver.c,231 :: 		ButtonRound1.FontName        = Tahoma11x13_Regular;
SW	R3, Offset(_ButtonRound1+32)(GP)
;ihm_driver.c,232 :: 		ButtonRound1.PressColEnabled = 1;
ORI	R2, R0, 1
SB	R2, Offset(_ButtonRound1+49)(GP)
;ihm_driver.c,233 :: 		ButtonRound1.Font_Color      = 0x0000;
SH	R0, Offset(_ButtonRound1+36)(GP)
;ihm_driver.c,234 :: 		ButtonRound1.VerticalText    = 0;
SB	R0, Offset(_ButtonRound1+38)(GP)
;ihm_driver.c,235 :: 		ButtonRound1.Gradient        = 1;
ORI	R2, R0, 1
SB	R2, Offset(_ButtonRound1+39)(GP)
;ihm_driver.c,236 :: 		ButtonRound1.Gradient_Orientation = 0;
SB	R0, Offset(_ButtonRound1+40)(GP)
;ihm_driver.c,237 :: 		ButtonRound1.Gradient_Start_Color = 0xFFFF;
ORI	R2, R0, 65535
SH	R2, Offset(_ButtonRound1+42)(GP)
;ihm_driver.c,238 :: 		ButtonRound1.Gradient_End_Color = 0xC618;
ORI	R2, R0, 50712
SH	R2, Offset(_ButtonRound1+44)(GP)
;ihm_driver.c,239 :: 		ButtonRound1.Color           = 0xC618;
ORI	R2, R0, 50712
SH	R2, Offset(_ButtonRound1+46)(GP)
;ihm_driver.c,240 :: 		ButtonRound1.Press_Color     = 0xE71C;
ORI	R2, R0, 59164
SH	R2, Offset(_ButtonRound1+50)(GP)
;ihm_driver.c,241 :: 		ButtonRound1.Corner_Radius   = 3;
ORI	R2, R0, 3
SB	R2, Offset(_ButtonRound1+48)(GP)
;ihm_driver.c,242 :: 		ButtonRound1.OnUpPtr         = 0;
SW	R0, Offset(_ButtonRound1+52)(GP)
;ihm_driver.c,243 :: 		ButtonRound1.OnDownPtr       = 0;
SW	R0, Offset(_ButtonRound1+56)(GP)
;ihm_driver.c,244 :: 		ButtonRound1.OnClickPtr      = &ButtonRound2OnClick;
LUI	R2, hi_addr(_ButtonRound2OnClick+0)
ORI	R2, R2, lo_addr(_ButtonRound2OnClick+0)
SW	R2, Offset(_ButtonRound1+60)(GP)
;ihm_driver.c,245 :: 		ButtonRound1.OnPressPtr      = 0;
SW	R0, Offset(_ButtonRound1+64)(GP)
;ihm_driver.c,247 :: 		PageNumber.OwnerScreen     = &Screen1;
LUI	R2, hi_addr(_Screen1+0)
ORI	R2, R2, lo_addr(_Screen1+0)
SW	R2, Offset(_PageNumber+0)(GP)
;ihm_driver.c,248 :: 		PageNumber.Order           = 2;
ORI	R2, R0, 2
SB	R2, Offset(_PageNumber+4)(GP)
;ihm_driver.c,249 :: 		PageNumber.Left            = 65;
ORI	R2, R0, 65
SH	R2, Offset(_PageNumber+6)(GP)
;ihm_driver.c,250 :: 		PageNumber.Top             = 219;
ORI	R2, R0, 219
SH	R2, Offset(_PageNumber+8)(GP)
;ihm_driver.c,251 :: 		PageNumber.Width           = 17;
ORI	R2, R0, 17
SH	R2, Offset(_PageNumber+10)(GP)
;ihm_driver.c,252 :: 		PageNumber.Height          = 15;
ORI	R2, R0, 15
SH	R2, Offset(_PageNumber+12)(GP)
;ihm_driver.c,253 :: 		PageNumber.Visible         = 1;
ORI	R2, R0, 1
SB	R2, Offset(_PageNumber+27)(GP)
;ihm_driver.c,254 :: 		PageNumber.Active          = 1;
ORI	R2, R0, 1
SB	R2, Offset(_PageNumber+28)(GP)
;ihm_driver.c,255 :: 		PageNumber.Caption         = PageNumber_Caption;
LUI	R2, hi_addr(_PageNumber_Caption+0)
ORI	R2, R2, lo_addr(_PageNumber_Caption+0)
SW	R2, Offset(_PageNumber+16)(GP)
;ihm_driver.c,256 :: 		PageNumber.FontName        = Tahoma11x13_Regular;
SW	R3, Offset(_PageNumber+20)(GP)
;ihm_driver.c,257 :: 		PageNumber.Font_Color      = 0x0000;
SH	R0, Offset(_PageNumber+24)(GP)
;ihm_driver.c,258 :: 		PageNumber.VerticalText    = 0;
SB	R0, Offset(_PageNumber+26)(GP)
;ihm_driver.c,259 :: 		PageNumber.OnUpPtr         = 0;
SW	R0, Offset(_PageNumber+32)(GP)
;ihm_driver.c,260 :: 		PageNumber.OnDownPtr       = 0;
SW	R0, Offset(_PageNumber+36)(GP)
;ihm_driver.c,261 :: 		PageNumber.OnClickPtr      = 0;
SW	R0, Offset(_PageNumber+40)(GP)
;ihm_driver.c,262 :: 		PageNumber.OnPressPtr      = 0;
SW	R0, Offset(_PageNumber+44)(GP)
;ihm_driver.c,263 :: 		}
L_end_InitializeObjects:
JR	RA
NOP	
; end of ihm_driver_InitializeObjects
ihm_driver_IsInsideObject:
;ihm_driver.c,265 :: 		static char IsInsideObject (unsigned int X, unsigned int Y, unsigned int Left, unsigned int Top, unsigned int Width, unsigned int Height) { // static
; Width start address is: 16 (R4)
LHU	R4, 0(SP)
; Height start address is: 20 (R5)
LHU	R5, 2(SP)
;ihm_driver.c,266 :: 		if ( (Left<= X) && (Left+ Width - 1 >= X) &&
ANDI	R3, R27, 65535
ANDI	R2, R25, 65535
SLTU	R2, R2, R3
BEQ	R2, R0, L_ihm_driver_IsInsideObject133
NOP	
J	L_ihm_driver_IsInsideObject115
NOP	
L_ihm_driver_IsInsideObject133:
ADDU	R2, R27, R4
; Width end address is: 16 (R4)
ADDIU	R2, R2, -1
ANDI	R3, R2, 65535
ANDI	R2, R25, 65535
SLTU	R2, R3, R2
BEQ	R2, R0, L_ihm_driver_IsInsideObject134
NOP	
J	L_ihm_driver_IsInsideObject114
NOP	
L_ihm_driver_IsInsideObject134:
;ihm_driver.c,267 :: 		(Top <= Y)  && (Top + Height - 1 >= Y) )
ANDI	R3, R28, 65535
ANDI	R2, R26, 65535
SLTU	R2, R2, R3
BEQ	R2, R0, L_ihm_driver_IsInsideObject135
NOP	
J	L_ihm_driver_IsInsideObject113
NOP	
L_ihm_driver_IsInsideObject135:
ADDU	R2, R28, R5
; Height end address is: 20 (R5)
ADDIU	R2, R2, -1
ANDI	R3, R2, 65535
ANDI	R2, R26, 65535
SLTU	R2, R3, R2
BEQ	R2, R0, L_ihm_driver_IsInsideObject136
NOP	
J	L_ihm_driver_IsInsideObject112
NOP	
L_ihm_driver_IsInsideObject136:
L_ihm_driver_IsInsideObject111:
;ihm_driver.c,268 :: 		return 1;
ORI	R2, R0, 1
J	L_end_IsInsideObject
NOP	
;ihm_driver.c,266 :: 		if ( (Left<= X) && (Left+ Width - 1 >= X) &&
L_ihm_driver_IsInsideObject115:
L_ihm_driver_IsInsideObject114:
;ihm_driver.c,267 :: 		(Top <= Y)  && (Top + Height - 1 >= Y) )
L_ihm_driver_IsInsideObject113:
L_ihm_driver_IsInsideObject112:
;ihm_driver.c,270 :: 		return 0;
MOVZ	R2, R0, R0
;ihm_driver.c,271 :: 		}
L_end_IsInsideObject:
JR	RA
NOP	
; end of ihm_driver_IsInsideObject
_DrawRoundButton:
;ihm_driver.c,279 :: 		void DrawRoundButton(TButton_Round *Around_button) {
ADDIU	SP, SP, -28
SW	RA, 0(SP)
;ihm_driver.c,281 :: 		if (Around_button->Visible != 0) {
SW	R25, 4(SP)
SW	R26, 8(SP)
SW	R27, 12(SP)
SW	R28, 16(SP)
ADDIU	R2, R25, 18
LBU	R2, 0(R2)
ANDI	R2, R2, 255
BNE	R2, R0, L__DrawRoundButton139
NOP	
J	L_DrawRoundButton10
NOP	
L__DrawRoundButton139:
;ihm_driver.c,282 :: 		if (object_pressed == 1) {
LBU	R3, Offset(_object_pressed+0)(GP)
ORI	R2, R0, 1
BEQ	R3, R2, L__DrawRoundButton140
NOP	
J	L_DrawRoundButton11
NOP	
L__DrawRoundButton140:
;ihm_driver.c,283 :: 		object_pressed = 0;
SB	R0, Offset(_object_pressed+0)(GP)
;ihm_driver.c,285 :: 		Around_button->Gradient_End_Color, Around_button->Gradient_Start_Color);
ADDIU	R2, R25, 42
LHU	R7, 0(R2)
ADDIU	R2, R25, 44
LHU	R6, 0(R2)
;ihm_driver.c,284 :: 		TFT_Set_Brush(Around_button->Transparent, Around_button->Press_Color, Around_button->Gradient, Around_button->Gradient_Orientation,
ADDIU	R2, R25, 40
LBU	R5, 0(R2)
ADDIU	R2, R25, 39
LBU	R4, 0(R2)
ADDIU	R2, R25, 50
LHU	R3, 0(R2)
ADDIU	R2, R25, 20
LBU	R2, 0(R2)
SW	R25, 20(SP)
ANDI	R28, R5, 255
ANDI	R27, R4, 255
ANDI	R26, R3, 65535
ANDI	R25, R2, 255
;ihm_driver.c,285 :: 		Around_button->Gradient_End_Color, Around_button->Gradient_Start_Color);
ADDIU	SP, SP, -4
SH	R7, 2(SP)
SH	R6, 0(SP)
JAL	_TFT_Set_Brush+0
NOP	
ADDIU	SP, SP, 4
;ihm_driver.c,284 :: 		TFT_Set_Brush(Around_button->Transparent, Around_button->Press_Color, Around_button->Gradient, Around_button->Gradient_Orientation,
LW	R25, 20(SP)
;ihm_driver.c,286 :: 		}
J	L_DrawRoundButton12
NOP	
L_DrawRoundButton11:
;ihm_driver.c,289 :: 		Around_button->Gradient_Start_Color, Around_button->Gradient_End_Color);
ADDIU	R2, R25, 44
LHU	R7, 0(R2)
ADDIU	R2, R25, 42
LHU	R6, 0(R2)
;ihm_driver.c,288 :: 		TFT_Set_Brush(Around_button->Transparent, Around_button->Color, Around_button->Gradient, Around_button->Gradient_Orientation,
ADDIU	R2, R25, 40
LBU	R5, 0(R2)
ADDIU	R2, R25, 39
LBU	R4, 0(R2)
ADDIU	R2, R25, 46
LHU	R3, 0(R2)
ADDIU	R2, R25, 20
LBU	R2, 0(R2)
SW	R25, 20(SP)
ANDI	R28, R5, 255
ANDI	R27, R4, 255
ANDI	R26, R3, 65535
ANDI	R25, R2, 255
;ihm_driver.c,289 :: 		Around_button->Gradient_Start_Color, Around_button->Gradient_End_Color);
ADDIU	SP, SP, -4
SH	R7, 2(SP)
SH	R6, 0(SP)
JAL	_TFT_Set_Brush+0
NOP	
ADDIU	SP, SP, 4
;ihm_driver.c,288 :: 		TFT_Set_Brush(Around_button->Transparent, Around_button->Color, Around_button->Gradient, Around_button->Gradient_Orientation,
LW	R25, 20(SP)
;ihm_driver.c,290 :: 		}
L_DrawRoundButton12:
;ihm_driver.c,291 :: 		TFT_Set_Pen(Around_button->Pen_Color, Around_button->Pen_Width);
ADDIU	R2, R25, 14
LBU	R3, 0(R2)
ADDIU	R2, R25, 16
LHU	R2, 0(R2)
SW	R25, 20(SP)
ANDI	R26, R3, 255
ANDI	R25, R2, 65535
JAL	_TFT_Set_Pen+0
NOP	
LW	R25, 20(SP)
;ihm_driver.c,294 :: 		Around_button->Top + Around_button->Height - 2, Around_button->Corner_Radius);
ADDIU	R2, R25, 48
LBU	R7, 0(R2)
ADDIU	R2, R25, 8
LHU	R3, 0(R2)
ADDIU	R2, R25, 12
LHU	R2, 0(R2)
ADDU	R2, R3, R2
ADDIU	R6, R2, -2
;ihm_driver.c,293 :: 		Around_button->Left + Around_button->Width - 2,
ADDIU	R2, R25, 6
LHU	R5, 0(R2)
ADDIU	R2, R25, 10
LHU	R2, 0(R2)
ADDU	R2, R5, R2
ADDIU	R4, R2, -2
;ihm_driver.c,292 :: 		TFT_Rectangle_Round_Edges(Around_button->Left + 1, Around_button->Top + 1,
ADDIU	R3, R3, 1
ADDIU	R2, R5, 1
;ihm_driver.c,294 :: 		Around_button->Top + Around_button->Height - 2, Around_button->Corner_Radius);
SW	R25, 20(SP)
ANDI	R28, R6, 65535
;ihm_driver.c,293 :: 		Around_button->Left + Around_button->Width - 2,
ANDI	R27, R4, 65535
;ihm_driver.c,292 :: 		TFT_Rectangle_Round_Edges(Around_button->Left + 1, Around_button->Top + 1,
ANDI	R26, R3, 65535
ANDI	R25, R2, 65535
;ihm_driver.c,294 :: 		Around_button->Top + Around_button->Height - 2, Around_button->Corner_Radius);
ANDI	R2, R7, 255
ADDIU	SP, SP, -4
SH	R2, 0(SP)
JAL	_TFT_Rectangle_Round_Edges+0
NOP	
ADDIU	SP, SP, 4
LW	R25, 20(SP)
;ihm_driver.c,295 :: 		if (Around_button->VerticalText != 0)
ADDIU	R2, R25, 38
LBU	R2, 0(R2)
ANDI	R2, R2, 255
BNE	R2, R0, L__DrawRoundButton142
NOP	
J	L_DrawRoundButton13
NOP	
L__DrawRoundButton142:
;ihm_driver.c,296 :: 		TFT_Set_Font(Around_button->FontName, Around_button->Font_Color, FO_VERTICAL_COLUMN);
ADDIU	R2, R25, 36
LHU	R3, 0(R2)
ADDIU	R2, R25, 32
LW	R2, 0(R2)
SW	R25, 20(SP)
ORI	R27, R0, 2
ANDI	R26, R3, 65535
MOVZ	R25, R2, R0
JAL	_TFT_Set_Font+0
NOP	
LW	R25, 20(SP)
J	L_DrawRoundButton14
NOP	
L_DrawRoundButton13:
;ihm_driver.c,298 :: 		TFT_Set_Font(Around_button->FontName, Around_button->Font_Color, FO_HORIZONTAL);
ADDIU	R2, R25, 36
LHU	R3, 0(R2)
ADDIU	R2, R25, 32
LW	R2, 0(R2)
SW	R25, 20(SP)
MOVZ	R27, R0, R0
ANDI	R26, R3, 65535
MOVZ	R25, R2, R0
JAL	_TFT_Set_Font+0
NOP	
LW	R25, 20(SP)
L_DrawRoundButton14:
;ihm_driver.c,299 :: 		TFT_Write_Text_Return_Pos(Around_button->Caption, Around_button->Left, Around_button->Top);
ADDIU	R2, R25, 8
LHU	R4, 0(R2)
ADDIU	R2, R25, 6
LHU	R3, 0(R2)
ADDIU	R2, R25, 24
LW	R2, 0(R2)
SW	R25, 20(SP)
ANDI	R27, R4, 65535
ANDI	R26, R3, 65535
MOVZ	R25, R2, R0
JAL	_TFT_Write_Text_Return_Pos+0
NOP	
LW	R25, 20(SP)
;ihm_driver.c,300 :: 		if (Around_button->TextAlign == _taLeft)
ADDIU	R2, R25, 28
LBU	R2, 0(R2)
ANDI	R2, R2, 255
BEQ	R2, R0, L__DrawRoundButton143
NOP	
J	L_DrawRoundButton15
NOP	
L__DrawRoundButton143:
;ihm_driver.c,301 :: 		ALeft = Around_button->Left + 4;
ADDIU	R2, R25, 6
LHU	R2, 0(R2)
ADDIU	R2, R2, 4
SH	R2, 24(SP)
J	L_DrawRoundButton16
NOP	
L_DrawRoundButton15:
;ihm_driver.c,302 :: 		else if (Around_button->TextAlign == _taCenter)
ADDIU	R2, R25, 28
LBU	R2, 0(R2)
ANDI	R3, R2, 255
ORI	R2, R0, 1
BEQ	R3, R2, L__DrawRoundButton144
NOP	
J	L_DrawRoundButton17
NOP	
L__DrawRoundButton144:
;ihm_driver.c,303 :: 		ALeft = Around_button->Left + (Around_button->Width - caption_length) / 2;
ADDIU	R2, R25, 6
LHU	R4, 0(R2)
ADDIU	R2, R25, 10
LHU	R3, 0(R2)
LHU	R2, Offset(_caption_length+0)(GP)
SUBU	R2, R3, R2
ANDI	R2, R2, 65535
SRL	R2, R2, 1
ADDU	R2, R4, R2
SH	R2, 24(SP)
J	L_DrawRoundButton18
NOP	
L_DrawRoundButton17:
;ihm_driver.c,304 :: 		else if (Around_button->TextAlign == _taRight)
ADDIU	R2, R25, 28
LBU	R2, 0(R2)
ANDI	R3, R2, 255
ORI	R2, R0, 2
BEQ	R3, R2, L__DrawRoundButton145
NOP	
J	L_DrawRoundButton19
NOP	
L__DrawRoundButton145:
;ihm_driver.c,305 :: 		ALeft = Around_button->Left + Around_button->Width - caption_length - 4;
ADDIU	R2, R25, 6
LHU	R3, 0(R2)
ADDIU	R2, R25, 10
LHU	R2, 0(R2)
ADDU	R3, R3, R2
LHU	R2, Offset(_caption_length+0)(GP)
SUBU	R2, R3, R2
ADDIU	R2, R2, -4
SH	R2, 24(SP)
L_DrawRoundButton19:
L_DrawRoundButton18:
L_DrawRoundButton16:
;ihm_driver.c,307 :: 		if (Around_button->TextAlignVertical == _tavTop)
ADDIU	R2, R25, 29
LBU	R2, 0(R2)
ANDI	R2, R2, 255
BEQ	R2, R0, L__DrawRoundButton146
NOP	
J	L_DrawRoundButton20
NOP	
L__DrawRoundButton146:
;ihm_driver.c,308 :: 		ATop = Around_button->Top + 3;
ADDIU	R2, R25, 8
LHU	R2, 0(R2)
ADDIU	R2, R2, 3
SH	R2, 26(SP)
J	L_DrawRoundButton21
NOP	
L_DrawRoundButton20:
;ihm_driver.c,309 :: 		else if (Around_button->TextAlignVertical == _tavMiddle)
ADDIU	R2, R25, 29
LBU	R2, 0(R2)
ANDI	R3, R2, 255
ORI	R2, R0, 1
BEQ	R3, R2, L__DrawRoundButton147
NOP	
J	L_DrawRoundButton22
NOP	
L__DrawRoundButton147:
;ihm_driver.c,310 :: 		ATop = Around_button->Top + (Around_button->Height - caption_height) / 2;
ADDIU	R2, R25, 8
LHU	R4, 0(R2)
ADDIU	R2, R25, 12
LHU	R3, 0(R2)
LHU	R2, Offset(_caption_height+0)(GP)
SUBU	R2, R3, R2
ANDI	R2, R2, 65535
SRL	R2, R2, 1
ADDU	R2, R4, R2
SH	R2, 26(SP)
J	L_DrawRoundButton23
NOP	
L_DrawRoundButton22:
;ihm_driver.c,311 :: 		else if (Around_button->TextAlignVertical == _tavBottom)
ADDIU	R2, R25, 29
LBU	R2, 0(R2)
ANDI	R3, R2, 255
ORI	R2, R0, 2
BEQ	R3, R2, L__DrawRoundButton148
NOP	
J	L_DrawRoundButton24
NOP	
L__DrawRoundButton148:
;ihm_driver.c,312 :: 		ATop  = Around_button->Top + Around_button->Height - caption_height - 4;
ADDIU	R2, R25, 8
LHU	R3, 0(R2)
ADDIU	R2, R25, 12
LHU	R2, 0(R2)
ADDU	R3, R3, R2
LHU	R2, Offset(_caption_height+0)(GP)
SUBU	R2, R3, R2
ADDIU	R2, R2, -4
SH	R2, 26(SP)
L_DrawRoundButton24:
L_DrawRoundButton23:
L_DrawRoundButton21:
;ihm_driver.c,314 :: 		TFT_Write_Text(Around_button->Caption, ALeft, ATop);
ADDIU	R2, R25, 24
LW	R2, 0(R2)
LHU	R27, 26(SP)
LHU	R26, 24(SP)
MOVZ	R25, R2, R0
JAL	_TFT_Write_Text+0
NOP	
;ihm_driver.c,315 :: 		}
L_DrawRoundButton10:
;ihm_driver.c,316 :: 		}
L_end_DrawRoundButton:
LW	R28, 16(SP)
LW	R27, 12(SP)
LW	R26, 8(SP)
LW	R25, 4(SP)
LW	RA, 0(SP)
ADDIU	SP, SP, 28
JR	RA
NOP	
; end of _DrawRoundButton
_DrawLabel:
;ihm_driver.c,318 :: 		void DrawLabel(TLabel *ALabel) {
ADDIU	SP, SP, -20
SW	RA, 0(SP)
;ihm_driver.c,319 :: 		if (ALabel->Visible != 0) {
SW	R25, 4(SP)
SW	R26, 8(SP)
SW	R27, 12(SP)
ADDIU	R2, R25, 27
LBU	R2, 0(R2)
ANDI	R2, R2, 255
BNE	R2, R0, L__DrawLabel151
NOP	
J	L_DrawLabel25
NOP	
L__DrawLabel151:
;ihm_driver.c,320 :: 		if (ALabel->VerticalText != 0)
ADDIU	R2, R25, 26
LBU	R2, 0(R2)
ANDI	R2, R2, 255
BNE	R2, R0, L__DrawLabel153
NOP	
J	L_DrawLabel26
NOP	
L__DrawLabel153:
;ihm_driver.c,321 :: 		TFT_Set_Font(ALabel->FontName, ALabel->Font_Color, FO_VERTICAL_COLUMN);
ADDIU	R2, R25, 24
LHU	R3, 0(R2)
ADDIU	R2, R25, 20
LW	R2, 0(R2)
SW	R25, 16(SP)
ORI	R27, R0, 2
ANDI	R26, R3, 65535
MOVZ	R25, R2, R0
JAL	_TFT_Set_Font+0
NOP	
LW	R25, 16(SP)
J	L_DrawLabel27
NOP	
L_DrawLabel26:
;ihm_driver.c,323 :: 		TFT_Set_Font(ALabel->FontName, ALabel->Font_Color, FO_HORIZONTAL);
ADDIU	R2, R25, 24
LHU	R3, 0(R2)
ADDIU	R2, R25, 20
LW	R2, 0(R2)
SW	R25, 16(SP)
MOVZ	R27, R0, R0
ANDI	R26, R3, 65535
MOVZ	R25, R2, R0
JAL	_TFT_Set_Font+0
NOP	
LW	R25, 16(SP)
L_DrawLabel27:
;ihm_driver.c,324 :: 		TFT_Write_Text(ALabel->Caption, ALabel->Left, ALabel->Top);
ADDIU	R2, R25, 8
LHU	R4, 0(R2)
ADDIU	R2, R25, 6
LHU	R3, 0(R2)
ADDIU	R2, R25, 16
LW	R2, 0(R2)
ANDI	R27, R4, 65535
ANDI	R26, R3, 65535
MOVZ	R25, R2, R0
JAL	_TFT_Write_Text+0
NOP	
;ihm_driver.c,325 :: 		}
L_DrawLabel25:
;ihm_driver.c,326 :: 		}
L_end_DrawLabel:
LW	R27, 12(SP)
LW	R26, 8(SP)
LW	R25, 4(SP)
LW	RA, 0(SP)
ADDIU	SP, SP, 20
JR	RA
NOP	
; end of _DrawLabel
_DrawImage:
;ihm_driver.c,328 :: 		void DrawImage(TImage *AImage) {
ADDIU	SP, SP, -20
SW	RA, 0(SP)
;ihm_driver.c,329 :: 		if (AImage->Visible != 0) {
SW	R25, 4(SP)
SW	R26, 8(SP)
SW	R27, 12(SP)
SW	R28, 16(SP)
ADDIU	R2, R25, 20
LBU	R2, 0(R2)
ANDI	R2, R2, 255
BNE	R2, R0, L__DrawImage156
NOP	
J	L_DrawImage28
NOP	
L__DrawImage156:
;ihm_driver.c,330 :: 		TFT_Image(AImage->Left, AImage->Top, AImage->Picture_Name, AImage->Picture_Ratio);
ADDIU	R2, R25, 23
LBU	R5, 0(R2)
ADDIU	R2, R25, 16
LW	R4, 0(R2)
ADDIU	R2, R25, 8
LHU	R3, 0(R2)
ADDIU	R2, R25, 6
LHU	R2, 0(R2)
ANDI	R28, R5, 255
MOVZ	R27, R4, R0
ANDI	R26, R3, 65535
ANDI	R25, R2, 65535
JAL	_TFT_Image+0
NOP	
;ihm_driver.c,331 :: 		}
L_DrawImage28:
;ihm_driver.c,332 :: 		}
L_end_DrawImage:
LW	R28, 16(SP)
LW	R27, 12(SP)
LW	R26, 8(SP)
LW	R25, 4(SP)
LW	RA, 0(SP)
ADDIU	SP, SP, 20
JR	RA
NOP	
; end of _DrawImage
_DrawScreen:
;ihm_driver.c,334 :: 		void DrawScreen(TScreen *aScreen) {
ADDIU	SP, SP, -52
SW	RA, 0(SP)
;ihm_driver.c,344 :: 		object_pressed = 0;
SW	R25, 4(SP)
SW	R26, 8(SP)
SW	R27, 12(SP)
SW	R28, 16(SP)
SB	R0, Offset(_object_pressed+0)(GP)
;ihm_driver.c,345 :: 		order = 0;
SH	R0, 24(SP)
;ihm_driver.c,346 :: 		round_button_idx = 0;
SB	R0, 26(SP)
;ihm_driver.c,347 :: 		label_idx = 0;
SB	R0, 32(SP)
;ihm_driver.c,348 :: 		image_idx = 0;
SB	R0, 40(SP)
;ihm_driver.c,349 :: 		CurrentScreen = aScreen;
SW	R25, Offset(_CurrentScreen+0)(GP)
;ihm_driver.c,351 :: 		if ((display_width != CurrentScreen->Width) || (display_height != CurrentScreen->Height)) {
ADDIU	R2, R25, 2
LHU	R2, 0(R2)
ANDI	R3, R2, 65535
LHU	R2, Offset(_display_width+0)(GP)
BEQ	R2, R3, L__DrawScreen158
NOP	
J	L__DrawScreen118
NOP	
L__DrawScreen158:
LW	R2, Offset(_CurrentScreen+0)(GP)
ADDIU	R2, R2, 4
LHU	R2, 0(R2)
ANDI	R3, R2, 65535
LHU	R2, Offset(_display_height+0)(GP)
BEQ	R2, R3, L__DrawScreen159
NOP	
J	L__DrawScreen117
NOP	
L__DrawScreen159:
J	L_DrawScreen31
NOP	
L__DrawScreen118:
L__DrawScreen117:
;ihm_driver.c,352 :: 		save_bled = TFT_BLED;
_LX	
EXT	R2, R2, BitPos(LATA9_bit+0), 1
SB	R2, 48(SP)
;ihm_driver.c,353 :: 		save_bled_direction = TFT_BLED_Direction;
_LX	
EXT	R2, R2, BitPos(TRISA9_bit+0), 1
SB	R2, 49(SP)
;ihm_driver.c,354 :: 		TFT_BLED_Direction = 0;
LUI	R2, BitMask(TRISA9_bit+0)
ORI	R2, R2, BitMask(TRISA9_bit+0)
_SX	
;ihm_driver.c,355 :: 		TFT_BLED           = 0;
LUI	R2, BitMask(LATA9_bit+0)
ORI	R2, R2, BitMask(LATA9_bit+0)
_SX	
;ihm_driver.c,356 :: 		TFT_Set_Active(Set_Index, Write_Command, Write_Data);
LUI	R27, hi_addr(_Write_Data+0)
ORI	R27, R27, lo_addr(_Write_Data+0)
LUI	R26, hi_addr(_Write_Command+0)
ORI	R26, R26, lo_addr(_Write_Command+0)
LUI	R25, hi_addr(_Set_Index+0)
ORI	R25, R25, lo_addr(_Set_Index+0)
JAL	_TFT_Set_Active+0
NOP	
;ihm_driver.c,357 :: 		TFT_Init(CurrentScreen->Width, CurrentScreen->Height);
LW	R2, Offset(_CurrentScreen+0)(GP)
ADDIU	R2, R2, 4
LHU	R3, 0(R2)
LW	R2, Offset(_CurrentScreen+0)(GP)
ADDIU	R2, R2, 2
LHU	R2, 0(R2)
ANDI	R26, R3, 65535
ANDI	R25, R2, 65535
JAL	_TFT_Init+0
NOP	
;ihm_driver.c,358 :: 		TP_TFT_Init(CurrentScreen->Width, CurrentScreen->Height, 13, 12);                                  // Initialize touch panel
LW	R2, Offset(_CurrentScreen+0)(GP)
ADDIU	R2, R2, 4
LHU	R3, 0(R2)
LW	R2, Offset(_CurrentScreen+0)(GP)
ADDIU	R2, R2, 2
LHU	R2, 0(R2)
ORI	R28, R0, 12
ORI	R27, R0, 13
ANDI	R26, R3, 65535
ANDI	R25, R2, 65535
JAL	_TP_TFT_Init+0
NOP	
;ihm_driver.c,359 :: 		TP_TFT_Set_ADC_Threshold(ADC_THRESHOLD);                              // Set touch panel ADC threshold
ORI	R25, R0, 1000
JAL	_TP_TFT_Set_ADC_Threshold+0
NOP	
;ihm_driver.c,360 :: 		TFT_Fill_Screen(CurrentScreen->Color);
LW	R2, Offset(_CurrentScreen+0)(GP)
LHU	R25, 0(R2)
JAL	_TFT_Fill_Screen+0
NOP	
;ihm_driver.c,361 :: 		display_width = CurrentScreen->Width;
LW	R2, Offset(_CurrentScreen+0)(GP)
ADDIU	R2, R2, 2
LHU	R2, 0(R2)
SH	R2, Offset(_display_width+0)(GP)
;ihm_driver.c,362 :: 		display_height = CurrentScreen->Height;
LW	R2, Offset(_CurrentScreen+0)(GP)
ADDIU	R2, R2, 4
LHU	R2, 0(R2)
SH	R2, Offset(_display_height+0)(GP)
;ihm_driver.c,363 :: 		TFT_BLED           = save_bled;
LBU	R3, 48(SP)
_LX	
INS	R2, R3, BitPos(LATA9_bit+0), 1
_SX	
;ihm_driver.c,364 :: 		TFT_BLED_Direction = save_bled_direction;
LBU	R3, 49(SP)
_LX	
INS	R2, R3, BitPos(TRISA9_bit+0), 1
_SX	
;ihm_driver.c,365 :: 		}
J	L_DrawScreen32
NOP	
L_DrawScreen31:
;ihm_driver.c,367 :: 		TFT_Fill_Screen(CurrentScreen->Color);
LW	R2, Offset(_CurrentScreen+0)(GP)
LHU	R25, 0(R2)
JAL	_TFT_Fill_Screen+0
NOP	
L_DrawScreen32:
;ihm_driver.c,370 :: 		while (order < CurrentScreen->ObjectsCount) {
L_DrawScreen33:
LW	R2, Offset(_CurrentScreen+0)(GP)
ADDIU	R2, R2, 6
LHU	R2, 0(R2)
ANDI	R3, R2, 65535
LHU	R2, 24(SP)
SLTU	R2, R2, R3
BNE	R2, R0, L__DrawScreen160
NOP	
J	L_DrawScreen34
NOP	
L__DrawScreen160:
;ihm_driver.c,371 :: 		if (round_button_idx < CurrentScreen->Buttons_RoundCount) {
LW	R2, Offset(_CurrentScreen+0)(GP)
ADDIU	R2, R2, 8
LHU	R2, 0(R2)
ANDI	R3, R2, 65535
LBU	R2, 26(SP)
SLTU	R2, R2, R3
BNE	R2, R0, L__DrawScreen161
NOP	
J	L_DrawScreen35
NOP	
L__DrawScreen161:
;ihm_driver.c,372 :: 		local_round_button = GetRoundButton(round_button_idx);
LW	R2, Offset(_CurrentScreen+0)(GP)
ADDIU	R2, R2, 12
LW	R3, 0(R2)
LBU	R2, 26(SP)
SLL	R2, R2, 2
ADDU	R2, R3, R2
LW	R2, 0(R2)
SW	R2, 28(SP)
;ihm_driver.c,373 :: 		if (order == local_round_button->Order) {
ADDIU	R2, R2, 4
LBU	R2, 0(R2)
ANDI	R3, R2, 255
LHU	R2, 24(SP)
BEQ	R2, R3, L__DrawScreen162
NOP	
J	L_DrawScreen36
NOP	
L__DrawScreen162:
;ihm_driver.c,374 :: 		round_button_idx++;
LBU	R2, 26(SP)
ADDIU	R2, R2, 1
SB	R2, 26(SP)
;ihm_driver.c,375 :: 		order++;
LHU	R2, 24(SP)
ADDIU	R2, R2, 1
SH	R2, 24(SP)
;ihm_driver.c,376 :: 		DrawRoundButton(local_round_button);
SW	R25, 20(SP)
LW	R25, 28(SP)
JAL	_DrawRoundButton+0
NOP	
LW	R25, 20(SP)
;ihm_driver.c,377 :: 		}
L_DrawScreen36:
;ihm_driver.c,378 :: 		}
L_DrawScreen35:
;ihm_driver.c,380 :: 		if (label_idx < CurrentScreen->LabelsCount) {
LW	R2, Offset(_CurrentScreen+0)(GP)
ADDIU	R2, R2, 16
LHU	R2, 0(R2)
ANDI	R3, R2, 65535
LBU	R2, 32(SP)
SLTU	R2, R2, R3
BNE	R2, R0, L__DrawScreen163
NOP	
J	L_DrawScreen37
NOP	
L__DrawScreen163:
;ihm_driver.c,381 :: 		local_label = GetLabel(label_idx);
LW	R2, Offset(_CurrentScreen+0)(GP)
ADDIU	R2, R2, 20
LW	R3, 0(R2)
LBU	R2, 32(SP)
SLL	R2, R2, 2
ADDU	R2, R3, R2
LW	R2, 0(R2)
SW	R2, 36(SP)
;ihm_driver.c,382 :: 		if (order == local_label->Order) {
ADDIU	R2, R2, 4
LBU	R2, 0(R2)
ANDI	R3, R2, 255
LHU	R2, 24(SP)
BEQ	R2, R3, L__DrawScreen164
NOP	
J	L_DrawScreen38
NOP	
L__DrawScreen164:
;ihm_driver.c,383 :: 		label_idx++;
LBU	R2, 32(SP)
ADDIU	R2, R2, 1
SB	R2, 32(SP)
;ihm_driver.c,384 :: 		order++;
LHU	R2, 24(SP)
ADDIU	R2, R2, 1
SH	R2, 24(SP)
;ihm_driver.c,385 :: 		DrawLabel(local_label);
SW	R25, 20(SP)
LW	R25, 36(SP)
JAL	_DrawLabel+0
NOP	
LW	R25, 20(SP)
;ihm_driver.c,386 :: 		}
L_DrawScreen38:
;ihm_driver.c,387 :: 		}
L_DrawScreen37:
;ihm_driver.c,389 :: 		if (image_idx < CurrentScreen->ImagesCount) {
LW	R2, Offset(_CurrentScreen+0)(GP)
ADDIU	R2, R2, 24
LHU	R2, 0(R2)
ANDI	R3, R2, 65535
LBU	R2, 40(SP)
SLTU	R2, R2, R3
BNE	R2, R0, L__DrawScreen165
NOP	
J	L_DrawScreen39
NOP	
L__DrawScreen165:
;ihm_driver.c,390 :: 		local_image = GetImage(image_idx);
LW	R2, Offset(_CurrentScreen+0)(GP)
ADDIU	R2, R2, 28
LW	R3, 0(R2)
LBU	R2, 40(SP)
SLL	R2, R2, 2
ADDU	R2, R3, R2
LW	R2, 0(R2)
SW	R2, 44(SP)
;ihm_driver.c,391 :: 		if (order == local_image->Order) {
ADDIU	R2, R2, 4
LBU	R2, 0(R2)
ANDI	R3, R2, 255
LHU	R2, 24(SP)
BEQ	R2, R3, L__DrawScreen166
NOP	
J	L_DrawScreen40
NOP	
L__DrawScreen166:
;ihm_driver.c,392 :: 		image_idx++;
LBU	R2, 40(SP)
ADDIU	R2, R2, 1
SB	R2, 40(SP)
;ihm_driver.c,393 :: 		order++;
LHU	R2, 24(SP)
ADDIU	R2, R2, 1
SH	R2, 24(SP)
;ihm_driver.c,394 :: 		DrawImage(local_image);
SW	R25, 20(SP)
LW	R25, 44(SP)
JAL	_DrawImage+0
NOP	
LW	R25, 20(SP)
;ihm_driver.c,395 :: 		}
L_DrawScreen40:
;ihm_driver.c,396 :: 		}
L_DrawScreen39:
;ihm_driver.c,398 :: 		}
J	L_DrawScreen33
NOP	
L_DrawScreen34:
;ihm_driver.c,399 :: 		}
L_end_DrawScreen:
LW	R28, 16(SP)
LW	R27, 12(SP)
LW	R26, 8(SP)
LW	R25, 4(SP)
LW	RA, 0(SP)
ADDIU	SP, SP, 52
JR	RA
NOP	
; end of _DrawScreen
_Get_Object:
;ihm_driver.c,401 :: 		void Get_Object(unsigned int X, unsigned int Y) {
ADDIU	SP, SP, -12
SW	RA, 0(SP)
;ihm_driver.c,402 :: 		round_button_order  = -1;
SW	R27, 4(SP)
SW	R28, 8(SP)
ORI	R2, R0, 65535
SH	R2, Offset(_round_button_order+0)(GP)
;ihm_driver.c,403 :: 		label_order         = -1;
ORI	R2, R0, 65535
SH	R2, Offset(_label_order+0)(GP)
;ihm_driver.c,404 :: 		image_order         = -1;
ORI	R2, R0, 65535
SH	R2, Offset(_image_order+0)(GP)
;ihm_driver.c,406 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->Buttons_RoundCount ; _object_count++ ) {
SH	R0, Offset(__object_count+0)(GP)
L_Get_Object41:
LW	R2, Offset(_CurrentScreen+0)(GP)
ADDIU	R2, R2, 8
LHU	R2, 0(R2)
ANDI	R3, R2, 65535
LH	R2, Offset(__object_count+0)(GP)
SLTU	R2, R2, R3
BNE	R2, R0, L__Get_Object168
NOP	
J	L_Get_Object42
NOP	
L__Get_Object168:
;ihm_driver.c,407 :: 		local_round_button = GetRoundButton(_object_count);
LW	R2, Offset(_CurrentScreen+0)(GP)
ADDIU	R2, R2, 12
LW	R3, 0(R2)
LH	R2, Offset(__object_count+0)(GP)
SLL	R2, R2, 2
ADDU	R2, R3, R2
LW	R2, 0(R2)
SW	R2, Offset(_local_round_button+0)(GP)
;ihm_driver.c,408 :: 		if (local_round_button->Active != 0) {
ADDIU	R2, R2, 19
LBU	R2, 0(R2)
ANDI	R2, R2, 255
BNE	R2, R0, L__Get_Object170
NOP	
J	L_Get_Object44
NOP	
L__Get_Object170:
;ihm_driver.c,410 :: 		local_round_button->Width, local_round_button->Height) == 1) {
LW	R2, Offset(_local_round_button+0)(GP)
ADDIU	R2, R2, 12
LHU	R5, 0(R2)
LW	R2, Offset(_local_round_button+0)(GP)
ADDIU	R2, R2, 10
LHU	R4, 0(R2)
;ihm_driver.c,409 :: 		if (IsInsideObject(X, Y, local_round_button->Left, local_round_button->Top,
LW	R2, Offset(_local_round_button+0)(GP)
ADDIU	R2, R2, 8
LHU	R3, 0(R2)
LW	R2, Offset(_local_round_button+0)(GP)
ADDIU	R2, R2, 6
LHU	R2, 0(R2)
ANDI	R28, R3, 65535
ANDI	R27, R2, 65535
;ihm_driver.c,410 :: 		local_round_button->Width, local_round_button->Height) == 1) {
ADDIU	SP, SP, -4
SH	R5, 2(SP)
SH	R4, 0(SP)
JAL	ihm_driver_IsInsideObject+0
NOP	
ADDIU	SP, SP, 4
ANDI	R3, R2, 255
ORI	R2, R0, 1
BEQ	R3, R2, L__Get_Object171
NOP	
J	L_Get_Object45
NOP	
L__Get_Object171:
;ihm_driver.c,411 :: 		round_button_order = local_round_button->Order;
LW	R2, Offset(_local_round_button+0)(GP)
ADDIU	R2, R2, 4
LBU	R2, 0(R2)
ANDI	R2, R2, 255
SH	R2, Offset(_round_button_order+0)(GP)
;ihm_driver.c,412 :: 		exec_round_button = local_round_button;
LW	R2, Offset(_local_round_button+0)(GP)
SW	R2, Offset(_exec_round_button+0)(GP)
;ihm_driver.c,413 :: 		}
L_Get_Object45:
;ihm_driver.c,414 :: 		}
L_Get_Object44:
;ihm_driver.c,406 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->Buttons_RoundCount ; _object_count++ ) {
LH	R2, Offset(__object_count+0)(GP)
ADDIU	R2, R2, 1
SH	R2, Offset(__object_count+0)(GP)
;ihm_driver.c,415 :: 		}
J	L_Get_Object41
NOP	
L_Get_Object42:
;ihm_driver.c,418 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->LabelsCount ; _object_count++ ) {
SH	R0, Offset(__object_count+0)(GP)
L_Get_Object46:
LW	R2, Offset(_CurrentScreen+0)(GP)
ADDIU	R2, R2, 16
LHU	R2, 0(R2)
ANDI	R3, R2, 65535
LH	R2, Offset(__object_count+0)(GP)
SLTU	R2, R2, R3
BNE	R2, R0, L__Get_Object172
NOP	
J	L_Get_Object47
NOP	
L__Get_Object172:
;ihm_driver.c,419 :: 		local_label = GetLabel(_object_count);
LW	R2, Offset(_CurrentScreen+0)(GP)
ADDIU	R2, R2, 20
LW	R3, 0(R2)
LH	R2, Offset(__object_count+0)(GP)
SLL	R2, R2, 2
ADDU	R2, R3, R2
LW	R2, 0(R2)
SW	R2, Offset(_local_label+0)(GP)
;ihm_driver.c,420 :: 		if (local_label->Active != 0) {
ADDIU	R2, R2, 28
LBU	R2, 0(R2)
ANDI	R2, R2, 255
BNE	R2, R0, L__Get_Object174
NOP	
J	L_Get_Object49
NOP	
L__Get_Object174:
;ihm_driver.c,422 :: 		local_label->Width, local_label->Height) == 1) {
LW	R2, Offset(_local_label+0)(GP)
ADDIU	R2, R2, 12
LHU	R5, 0(R2)
LW	R2, Offset(_local_label+0)(GP)
ADDIU	R2, R2, 10
LHU	R4, 0(R2)
;ihm_driver.c,421 :: 		if (IsInsideObject(X, Y, local_label->Left, local_label->Top,
LW	R2, Offset(_local_label+0)(GP)
ADDIU	R2, R2, 8
LHU	R3, 0(R2)
LW	R2, Offset(_local_label+0)(GP)
ADDIU	R2, R2, 6
LHU	R2, 0(R2)
ANDI	R28, R3, 65535
ANDI	R27, R2, 65535
;ihm_driver.c,422 :: 		local_label->Width, local_label->Height) == 1) {
ADDIU	SP, SP, -4
SH	R5, 2(SP)
SH	R4, 0(SP)
JAL	ihm_driver_IsInsideObject+0
NOP	
ADDIU	SP, SP, 4
ANDI	R3, R2, 255
ORI	R2, R0, 1
BEQ	R3, R2, L__Get_Object175
NOP	
J	L_Get_Object50
NOP	
L__Get_Object175:
;ihm_driver.c,423 :: 		label_order = local_label->Order;
LW	R2, Offset(_local_label+0)(GP)
ADDIU	R2, R2, 4
LBU	R2, 0(R2)
ANDI	R2, R2, 255
SH	R2, Offset(_label_order+0)(GP)
;ihm_driver.c,424 :: 		exec_label = local_label;
LW	R2, Offset(_local_label+0)(GP)
SW	R2, Offset(_exec_label+0)(GP)
;ihm_driver.c,425 :: 		}
L_Get_Object50:
;ihm_driver.c,426 :: 		}
L_Get_Object49:
;ihm_driver.c,418 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->LabelsCount ; _object_count++ ) {
LH	R2, Offset(__object_count+0)(GP)
ADDIU	R2, R2, 1
SH	R2, Offset(__object_count+0)(GP)
;ihm_driver.c,427 :: 		}
J	L_Get_Object46
NOP	
L_Get_Object47:
;ihm_driver.c,430 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->ImagesCount ; _object_count++ ) {
SH	R0, Offset(__object_count+0)(GP)
L_Get_Object51:
LW	R2, Offset(_CurrentScreen+0)(GP)
ADDIU	R2, R2, 24
LHU	R2, 0(R2)
ANDI	R3, R2, 65535
LH	R2, Offset(__object_count+0)(GP)
SLTU	R2, R2, R3
BNE	R2, R0, L__Get_Object176
NOP	
J	L_Get_Object52
NOP	
L__Get_Object176:
;ihm_driver.c,431 :: 		local_image = GetImage(_object_count);
LW	R2, Offset(_CurrentScreen+0)(GP)
ADDIU	R2, R2, 28
LW	R3, 0(R2)
LH	R2, Offset(__object_count+0)(GP)
SLL	R2, R2, 2
ADDU	R2, R3, R2
LW	R2, 0(R2)
SW	R2, Offset(_local_image+0)(GP)
;ihm_driver.c,432 :: 		if (local_image->Active != 0) {
ADDIU	R2, R2, 21
LBU	R2, 0(R2)
ANDI	R2, R2, 255
BNE	R2, R0, L__Get_Object178
NOP	
J	L_Get_Object54
NOP	
L__Get_Object178:
;ihm_driver.c,434 :: 		local_image->Width, local_image->Height) == 1) {
LW	R2, Offset(_local_image+0)(GP)
ADDIU	R2, R2, 12
LHU	R5, 0(R2)
LW	R2, Offset(_local_image+0)(GP)
ADDIU	R2, R2, 10
LHU	R4, 0(R2)
;ihm_driver.c,433 :: 		if (IsInsideObject(X, Y, local_image->Left, local_image->Top,
LW	R2, Offset(_local_image+0)(GP)
ADDIU	R2, R2, 8
LHU	R3, 0(R2)
LW	R2, Offset(_local_image+0)(GP)
ADDIU	R2, R2, 6
LHU	R2, 0(R2)
ANDI	R28, R3, 65535
ANDI	R27, R2, 65535
;ihm_driver.c,434 :: 		local_image->Width, local_image->Height) == 1) {
ADDIU	SP, SP, -4
SH	R5, 2(SP)
SH	R4, 0(SP)
JAL	ihm_driver_IsInsideObject+0
NOP	
ADDIU	SP, SP, 4
ANDI	R3, R2, 255
ORI	R2, R0, 1
BEQ	R3, R2, L__Get_Object179
NOP	
J	L_Get_Object55
NOP	
L__Get_Object179:
;ihm_driver.c,435 :: 		image_order = local_image->Order;
LW	R2, Offset(_local_image+0)(GP)
ADDIU	R2, R2, 4
LBU	R2, 0(R2)
ANDI	R2, R2, 255
SH	R2, Offset(_image_order+0)(GP)
;ihm_driver.c,436 :: 		exec_image = local_image;
LW	R2, Offset(_local_image+0)(GP)
SW	R2, Offset(_exec_image+0)(GP)
;ihm_driver.c,437 :: 		}
L_Get_Object55:
;ihm_driver.c,438 :: 		}
L_Get_Object54:
;ihm_driver.c,430 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->ImagesCount ; _object_count++ ) {
LH	R2, Offset(__object_count+0)(GP)
ADDIU	R2, R2, 1
SH	R2, Offset(__object_count+0)(GP)
;ihm_driver.c,439 :: 		}
J	L_Get_Object51
NOP	
L_Get_Object52:
;ihm_driver.c,441 :: 		_object_count = -1;
ORI	R2, R0, 65535
SH	R2, Offset(__object_count+0)(GP)
;ihm_driver.c,442 :: 		if (round_button_order >  _object_count )
LH	R2, Offset(_round_button_order+0)(GP)
SLTI	R2, R2, 0
BEQ	R2, R0, L__Get_Object180
NOP	
J	L_Get_Object56
NOP	
L__Get_Object180:
;ihm_driver.c,443 :: 		_object_count = round_button_order;
LH	R2, Offset(_round_button_order+0)(GP)
SH	R2, Offset(__object_count+0)(GP)
L_Get_Object56:
;ihm_driver.c,444 :: 		if (label_order >  _object_count )
LH	R3, Offset(__object_count+0)(GP)
LH	R2, Offset(_label_order+0)(GP)
SLT	R2, R3, R2
BNE	R2, R0, L__Get_Object181
NOP	
J	L_Get_Object57
NOP	
L__Get_Object181:
;ihm_driver.c,445 :: 		_object_count = label_order;
LH	R2, Offset(_label_order+0)(GP)
SH	R2, Offset(__object_count+0)(GP)
L_Get_Object57:
;ihm_driver.c,446 :: 		if (image_order >  _object_count )
LH	R3, Offset(__object_count+0)(GP)
LH	R2, Offset(_image_order+0)(GP)
SLT	R2, R3, R2
BNE	R2, R0, L__Get_Object182
NOP	
J	L_Get_Object58
NOP	
L__Get_Object182:
;ihm_driver.c,447 :: 		_object_count = image_order;
LH	R2, Offset(_image_order+0)(GP)
SH	R2, Offset(__object_count+0)(GP)
L_Get_Object58:
;ihm_driver.c,448 :: 		}
L_end_Get_Object:
LW	R28, 8(SP)
LW	R27, 4(SP)
LW	RA, 0(SP)
ADDIU	SP, SP, 12
JR	RA
NOP	
; end of _Get_Object
_Process_TP_Press:
;ihm_driver.c,451 :: 		void Process_TP_Press(unsigned int X, unsigned int Y) {
ADDIU	SP, SP, -4
SW	RA, 0(SP)
;ihm_driver.c,452 :: 		exec_round_button   = 0;
SW	R0, Offset(_exec_round_button+0)(GP)
;ihm_driver.c,453 :: 		exec_label          = 0;
SW	R0, Offset(_exec_label+0)(GP)
;ihm_driver.c,454 :: 		exec_image          = 0;
SW	R0, Offset(_exec_image+0)(GP)
;ihm_driver.c,456 :: 		Get_Object(X, Y);
JAL	_Get_Object+0
NOP	
;ihm_driver.c,458 :: 		if (_object_count != -1) {
LH	R3, Offset(__object_count+0)(GP)
LUI	R2, 65535
ORI	R2, R2, 65535
BNE	R3, R2, L__Process_TP_Press185
NOP	
J	L_Process_TP_Press59
NOP	
L__Process_TP_Press185:
;ihm_driver.c,459 :: 		if (_object_count == round_button_order) {
LH	R3, Offset(_round_button_order+0)(GP)
LH	R2, Offset(__object_count+0)(GP)
BEQ	R2, R3, L__Process_TP_Press186
NOP	
J	L_Process_TP_Press60
NOP	
L__Process_TP_Press186:
;ihm_driver.c,460 :: 		if (exec_round_button->Active != 0) {
LW	R2, Offset(_exec_round_button+0)(GP)
ADDIU	R2, R2, 19
LBU	R2, 0(R2)
ANDI	R2, R2, 255
BNE	R2, R0, L__Process_TP_Press188
NOP	
J	L_Process_TP_Press61
NOP	
L__Process_TP_Press188:
;ihm_driver.c,461 :: 		if (exec_round_button->OnPressPtr != 0) {
LW	R2, Offset(_exec_round_button+0)(GP)
ADDIU	R2, R2, 64
LW	R2, 0(R2)
BNE	R2, R0, L__Process_TP_Press190
NOP	
J	L_Process_TP_Press62
NOP	
L__Process_TP_Press190:
;ihm_driver.c,462 :: 		exec_round_button->OnPressPtr();
LW	R2, Offset(_exec_round_button+0)(GP)
ADDIU	R2, R2, 64
LW	R2, 0(R2)
JALR	RA, R2
NOP	
;ihm_driver.c,463 :: 		return;
J	L_end_Process_TP_Press
NOP	
;ihm_driver.c,464 :: 		}
L_Process_TP_Press62:
;ihm_driver.c,465 :: 		}
L_Process_TP_Press61:
;ihm_driver.c,466 :: 		}
L_Process_TP_Press60:
;ihm_driver.c,468 :: 		if (_object_count == label_order) {
LH	R3, Offset(_label_order+0)(GP)
LH	R2, Offset(__object_count+0)(GP)
BEQ	R2, R3, L__Process_TP_Press191
NOP	
J	L_Process_TP_Press63
NOP	
L__Process_TP_Press191:
;ihm_driver.c,469 :: 		if (exec_label->Active != 0) {
LW	R2, Offset(_exec_label+0)(GP)
ADDIU	R2, R2, 28
LBU	R2, 0(R2)
ANDI	R2, R2, 255
BNE	R2, R0, L__Process_TP_Press193
NOP	
J	L_Process_TP_Press64
NOP	
L__Process_TP_Press193:
;ihm_driver.c,470 :: 		if (exec_label->OnPressPtr != 0) {
LW	R2, Offset(_exec_label+0)(GP)
ADDIU	R2, R2, 44
LW	R2, 0(R2)
BNE	R2, R0, L__Process_TP_Press195
NOP	
J	L_Process_TP_Press65
NOP	
L__Process_TP_Press195:
;ihm_driver.c,471 :: 		exec_label->OnPressPtr();
LW	R2, Offset(_exec_label+0)(GP)
ADDIU	R2, R2, 44
LW	R2, 0(R2)
JALR	RA, R2
NOP	
;ihm_driver.c,472 :: 		return;
J	L_end_Process_TP_Press
NOP	
;ihm_driver.c,473 :: 		}
L_Process_TP_Press65:
;ihm_driver.c,474 :: 		}
L_Process_TP_Press64:
;ihm_driver.c,475 :: 		}
L_Process_TP_Press63:
;ihm_driver.c,477 :: 		if (_object_count == image_order) {
LH	R3, Offset(_image_order+0)(GP)
LH	R2, Offset(__object_count+0)(GP)
BEQ	R2, R3, L__Process_TP_Press196
NOP	
J	L_Process_TP_Press66
NOP	
L__Process_TP_Press196:
;ihm_driver.c,478 :: 		if (exec_image->Active != 0) {
LW	R2, Offset(_exec_image+0)(GP)
ADDIU	R2, R2, 21
LBU	R2, 0(R2)
ANDI	R2, R2, 255
BNE	R2, R0, L__Process_TP_Press198
NOP	
J	L_Process_TP_Press67
NOP	
L__Process_TP_Press198:
;ihm_driver.c,479 :: 		if (exec_image->OnPressPtr != 0) {
LW	R2, Offset(_exec_image+0)(GP)
ADDIU	R2, R2, 36
LW	R2, 0(R2)
BNE	R2, R0, L__Process_TP_Press200
NOP	
J	L_Process_TP_Press68
NOP	
L__Process_TP_Press200:
;ihm_driver.c,480 :: 		exec_image->OnPressPtr();
LW	R2, Offset(_exec_image+0)(GP)
ADDIU	R2, R2, 36
LW	R2, 0(R2)
JALR	RA, R2
NOP	
;ihm_driver.c,481 :: 		return;
J	L_end_Process_TP_Press
NOP	
;ihm_driver.c,482 :: 		}
L_Process_TP_Press68:
;ihm_driver.c,483 :: 		}
L_Process_TP_Press67:
;ihm_driver.c,484 :: 		}
L_Process_TP_Press66:
;ihm_driver.c,486 :: 		}
L_Process_TP_Press59:
;ihm_driver.c,487 :: 		}
L_end_Process_TP_Press:
LW	RA, 0(SP)
ADDIU	SP, SP, 4
JR	RA
NOP	
; end of _Process_TP_Press
_Process_TP_Up:
;ihm_driver.c,489 :: 		void Process_TP_Up(unsigned int X, unsigned int Y) {
ADDIU	SP, SP, -8
SW	RA, 0(SP)
;ihm_driver.c,491 :: 		switch (PressedObjectType) {
J	L_Process_TP_Up69
NOP	
;ihm_driver.c,493 :: 		case 1: {
L_Process_TP_Up71:
;ihm_driver.c,494 :: 		if (PressedObject != 0) {
LW	R2, Offset(_PressedObject+0)(GP)
BNE	R2, R0, L__Process_TP_Up203
NOP	
J	L_Process_TP_Up72
NOP	
L__Process_TP_Up203:
;ihm_driver.c,495 :: 		exec_round_button = (TButton_Round*)PressedObject;
LW	R2, Offset(_PressedObject+0)(GP)
SW	R2, Offset(_exec_round_button+0)(GP)
;ihm_driver.c,496 :: 		if ((exec_round_button->PressColEnabled != 0) && (exec_round_button->OwnerScreen == CurrentScreen)) {
LW	R2, Offset(_PressedObject+0)(GP)
ADDIU	R2, R2, 49
LBU	R2, 0(R2)
ANDI	R2, R2, 255
BNE	R2, R0, L__Process_TP_Up205
NOP	
J	L__Process_TP_Up121
NOP	
L__Process_TP_Up205:
LW	R2, Offset(_exec_round_button+0)(GP)
LW	R3, 0(R2)
LW	R2, Offset(_CurrentScreen+0)(GP)
BEQ	R3, R2, L__Process_TP_Up206
NOP	
J	L__Process_TP_Up120
NOP	
L__Process_TP_Up206:
L__Process_TP_Up119:
;ihm_driver.c,497 :: 		DrawRoundButton(exec_round_button);
SH	R26, 4(SP)
SH	R25, 6(SP)
LW	R25, Offset(_exec_round_button+0)(GP)
JAL	_DrawRoundButton+0
NOP	
LHU	R25, 6(SP)
LHU	R26, 4(SP)
;ihm_driver.c,496 :: 		if ((exec_round_button->PressColEnabled != 0) && (exec_round_button->OwnerScreen == CurrentScreen)) {
L__Process_TP_Up121:
L__Process_TP_Up120:
;ihm_driver.c,499 :: 		break;
J	L_Process_TP_Up70
NOP	
;ihm_driver.c,500 :: 		}
L_Process_TP_Up72:
;ihm_driver.c,501 :: 		break;
J	L_Process_TP_Up70
NOP	
;ihm_driver.c,503 :: 		}
L_Process_TP_Up69:
LH	R3, Offset(_PressedObjectType+0)(GP)
ORI	R2, R0, 1
BNE	R3, R2, L__Process_TP_Up208
NOP	
J	L_Process_TP_Up71
NOP	
L__Process_TP_Up208:
L_Process_TP_Up70:
;ihm_driver.c,505 :: 		exec_label          = 0;
SW	R0, Offset(_exec_label+0)(GP)
;ihm_driver.c,506 :: 		exec_image          = 0;
SW	R0, Offset(_exec_image+0)(GP)
;ihm_driver.c,508 :: 		Get_Object(X, Y);
JAL	_Get_Object+0
NOP	
;ihm_driver.c,511 :: 		if (_object_count != -1) {
LH	R3, Offset(__object_count+0)(GP)
LUI	R2, 65535
ORI	R2, R2, 65535
BNE	R3, R2, L__Process_TP_Up210
NOP	
J	L_Process_TP_Up76
NOP	
L__Process_TP_Up210:
;ihm_driver.c,513 :: 		if (_object_count == round_button_order) {
LH	R3, Offset(_round_button_order+0)(GP)
LH	R2, Offset(__object_count+0)(GP)
BEQ	R2, R3, L__Process_TP_Up211
NOP	
J	L_Process_TP_Up77
NOP	
L__Process_TP_Up211:
;ihm_driver.c,514 :: 		if (exec_round_button->Active != 0) {
LW	R2, Offset(_exec_round_button+0)(GP)
ADDIU	R2, R2, 19
LBU	R2, 0(R2)
ANDI	R2, R2, 255
BNE	R2, R0, L__Process_TP_Up213
NOP	
J	L_Process_TP_Up78
NOP	
L__Process_TP_Up213:
;ihm_driver.c,515 :: 		if (exec_round_button->OnUpPtr != 0)
LW	R2, Offset(_exec_round_button+0)(GP)
ADDIU	R2, R2, 52
LW	R2, 0(R2)
BNE	R2, R0, L__Process_TP_Up215
NOP	
J	L_Process_TP_Up79
NOP	
L__Process_TP_Up215:
;ihm_driver.c,516 :: 		exec_round_button->OnUpPtr();
LW	R2, Offset(_exec_round_button+0)(GP)
ADDIU	R2, R2, 52
LW	R2, 0(R2)
JALR	RA, R2
NOP	
L_Process_TP_Up79:
;ihm_driver.c,517 :: 		if (PressedObject == (void *)exec_round_button)
LW	R3, Offset(_exec_round_button+0)(GP)
LW	R2, Offset(_PressedObject+0)(GP)
BEQ	R2, R3, L__Process_TP_Up216
NOP	
J	L_Process_TP_Up80
NOP	
L__Process_TP_Up216:
;ihm_driver.c,518 :: 		if (exec_round_button->OnClickPtr != 0)
LW	R2, Offset(_exec_round_button+0)(GP)
ADDIU	R2, R2, 60
LW	R2, 0(R2)
BNE	R2, R0, L__Process_TP_Up218
NOP	
J	L_Process_TP_Up81
NOP	
L__Process_TP_Up218:
;ihm_driver.c,519 :: 		exec_round_button->OnClickPtr();
LW	R2, Offset(_exec_round_button+0)(GP)
ADDIU	R2, R2, 60
LW	R2, 0(R2)
JALR	RA, R2
NOP	
L_Process_TP_Up81:
L_Process_TP_Up80:
;ihm_driver.c,520 :: 		PressedObject = 0;
SW	R0, Offset(_PressedObject+0)(GP)
;ihm_driver.c,521 :: 		PressedObjectType = -1;
ORI	R2, R0, 65535
SH	R2, Offset(_PressedObjectType+0)(GP)
;ihm_driver.c,522 :: 		return;
J	L_end_Process_TP_Up
NOP	
;ihm_driver.c,523 :: 		}
L_Process_TP_Up78:
;ihm_driver.c,524 :: 		}
L_Process_TP_Up77:
;ihm_driver.c,527 :: 		if (_object_count == label_order) {
LH	R3, Offset(_label_order+0)(GP)
LH	R2, Offset(__object_count+0)(GP)
BEQ	R2, R3, L__Process_TP_Up219
NOP	
J	L_Process_TP_Up82
NOP	
L__Process_TP_Up219:
;ihm_driver.c,528 :: 		if (exec_label->Active != 0) {
LW	R2, Offset(_exec_label+0)(GP)
ADDIU	R2, R2, 28
LBU	R2, 0(R2)
ANDI	R2, R2, 255
BNE	R2, R0, L__Process_TP_Up221
NOP	
J	L_Process_TP_Up83
NOP	
L__Process_TP_Up221:
;ihm_driver.c,529 :: 		if (exec_label->OnUpPtr != 0)
LW	R2, Offset(_exec_label+0)(GP)
ADDIU	R2, R2, 32
LW	R2, 0(R2)
BNE	R2, R0, L__Process_TP_Up223
NOP	
J	L_Process_TP_Up84
NOP	
L__Process_TP_Up223:
;ihm_driver.c,530 :: 		exec_label->OnUpPtr();
LW	R2, Offset(_exec_label+0)(GP)
ADDIU	R2, R2, 32
LW	R2, 0(R2)
JALR	RA, R2
NOP	
L_Process_TP_Up84:
;ihm_driver.c,531 :: 		if (PressedObject == (void *)exec_label)
LW	R3, Offset(_exec_label+0)(GP)
LW	R2, Offset(_PressedObject+0)(GP)
BEQ	R2, R3, L__Process_TP_Up224
NOP	
J	L_Process_TP_Up85
NOP	
L__Process_TP_Up224:
;ihm_driver.c,532 :: 		if (exec_label->OnClickPtr != 0)
LW	R2, Offset(_exec_label+0)(GP)
ADDIU	R2, R2, 40
LW	R2, 0(R2)
BNE	R2, R0, L__Process_TP_Up226
NOP	
J	L_Process_TP_Up86
NOP	
L__Process_TP_Up226:
;ihm_driver.c,533 :: 		exec_label->OnClickPtr();
LW	R2, Offset(_exec_label+0)(GP)
ADDIU	R2, R2, 40
LW	R2, 0(R2)
JALR	RA, R2
NOP	
L_Process_TP_Up86:
L_Process_TP_Up85:
;ihm_driver.c,534 :: 		PressedObject = 0;
SW	R0, Offset(_PressedObject+0)(GP)
;ihm_driver.c,535 :: 		PressedObjectType = -1;
ORI	R2, R0, 65535
SH	R2, Offset(_PressedObjectType+0)(GP)
;ihm_driver.c,536 :: 		return;
J	L_end_Process_TP_Up
NOP	
;ihm_driver.c,537 :: 		}
L_Process_TP_Up83:
;ihm_driver.c,538 :: 		}
L_Process_TP_Up82:
;ihm_driver.c,541 :: 		if (_object_count == image_order) {
LH	R3, Offset(_image_order+0)(GP)
LH	R2, Offset(__object_count+0)(GP)
BEQ	R2, R3, L__Process_TP_Up227
NOP	
J	L_Process_TP_Up87
NOP	
L__Process_TP_Up227:
;ihm_driver.c,542 :: 		if (exec_image->Active != 0) {
LW	R2, Offset(_exec_image+0)(GP)
ADDIU	R2, R2, 21
LBU	R2, 0(R2)
ANDI	R2, R2, 255
BNE	R2, R0, L__Process_TP_Up229
NOP	
J	L_Process_TP_Up88
NOP	
L__Process_TP_Up229:
;ihm_driver.c,543 :: 		if (exec_image->OnUpPtr != 0)
LW	R2, Offset(_exec_image+0)(GP)
ADDIU	R2, R2, 24
LW	R2, 0(R2)
BNE	R2, R0, L__Process_TP_Up231
NOP	
J	L_Process_TP_Up89
NOP	
L__Process_TP_Up231:
;ihm_driver.c,544 :: 		exec_image->OnUpPtr();
LW	R2, Offset(_exec_image+0)(GP)
ADDIU	R2, R2, 24
LW	R2, 0(R2)
JALR	RA, R2
NOP	
L_Process_TP_Up89:
;ihm_driver.c,545 :: 		if (PressedObject == (void *)exec_image)
LW	R3, Offset(_exec_image+0)(GP)
LW	R2, Offset(_PressedObject+0)(GP)
BEQ	R2, R3, L__Process_TP_Up232
NOP	
J	L_Process_TP_Up90
NOP	
L__Process_TP_Up232:
;ihm_driver.c,546 :: 		if (exec_image->OnClickPtr != 0)
LW	R2, Offset(_exec_image+0)(GP)
ADDIU	R2, R2, 32
LW	R2, 0(R2)
BNE	R2, R0, L__Process_TP_Up234
NOP	
J	L_Process_TP_Up91
NOP	
L__Process_TP_Up234:
;ihm_driver.c,547 :: 		exec_image->OnClickPtr();
LW	R2, Offset(_exec_image+0)(GP)
ADDIU	R2, R2, 32
LW	R2, 0(R2)
JALR	RA, R2
NOP	
L_Process_TP_Up91:
L_Process_TP_Up90:
;ihm_driver.c,548 :: 		PressedObject = 0;
SW	R0, Offset(_PressedObject+0)(GP)
;ihm_driver.c,549 :: 		PressedObjectType = -1;
ORI	R2, R0, 65535
SH	R2, Offset(_PressedObjectType+0)(GP)
;ihm_driver.c,550 :: 		return;
J	L_end_Process_TP_Up
NOP	
;ihm_driver.c,551 :: 		}
L_Process_TP_Up88:
;ihm_driver.c,552 :: 		}
L_Process_TP_Up87:
;ihm_driver.c,554 :: 		}
J	L_Process_TP_Up92
NOP	
L_Process_TP_Up76:
;ihm_driver.c,558 :: 		IconOnClick(X, Y);
JAL	_IconOnClick+0
NOP	
;ihm_driver.c,559 :: 		}
L_Process_TP_Up92:
;ihm_driver.c,560 :: 		PressedObject = 0;
SW	R0, Offset(_PressedObject+0)(GP)
;ihm_driver.c,561 :: 		PressedObjectType = -1;
ORI	R2, R0, 65535
SH	R2, Offset(_PressedObjectType+0)(GP)
;ihm_driver.c,562 :: 		}
L_end_Process_TP_Up:
LW	RA, 0(SP)
ADDIU	SP, SP, 8
JR	RA
NOP	
; end of _Process_TP_Up
_Process_TP_Down:
;ihm_driver.c,564 :: 		void Process_TP_Down(unsigned int X, unsigned int Y) {
ADDIU	SP, SP, -8
SW	RA, 0(SP)
;ihm_driver.c,566 :: 		object_pressed      = 0;
SW	R25, 4(SP)
SB	R0, Offset(_object_pressed+0)(GP)
;ihm_driver.c,567 :: 		exec_round_button   = 0;
SW	R0, Offset(_exec_round_button+0)(GP)
;ihm_driver.c,568 :: 		exec_label          = 0;
SW	R0, Offset(_exec_label+0)(GP)
;ihm_driver.c,569 :: 		exec_image          = 0;
SW	R0, Offset(_exec_image+0)(GP)
;ihm_driver.c,571 :: 		Get_Object(X, Y);
JAL	_Get_Object+0
NOP	
;ihm_driver.c,573 :: 		if (_object_count != -1) {
LH	R3, Offset(__object_count+0)(GP)
LUI	R2, 65535
ORI	R2, R2, 65535
BNE	R3, R2, L__Process_TP_Down237
NOP	
J	L_Process_TP_Down93
NOP	
L__Process_TP_Down237:
;ihm_driver.c,574 :: 		if (_object_count == round_button_order) {
LH	R3, Offset(_round_button_order+0)(GP)
LH	R2, Offset(__object_count+0)(GP)
BEQ	R2, R3, L__Process_TP_Down238
NOP	
J	L_Process_TP_Down94
NOP	
L__Process_TP_Down238:
;ihm_driver.c,575 :: 		if (exec_round_button->Active != 0) {
LW	R2, Offset(_exec_round_button+0)(GP)
ADDIU	R2, R2, 19
LBU	R2, 0(R2)
ANDI	R2, R2, 255
BNE	R2, R0, L__Process_TP_Down240
NOP	
J	L_Process_TP_Down95
NOP	
L__Process_TP_Down240:
;ihm_driver.c,576 :: 		if (exec_round_button->PressColEnabled != 0) {
LW	R2, Offset(_exec_round_button+0)(GP)
ADDIU	R2, R2, 49
LBU	R2, 0(R2)
ANDI	R2, R2, 255
BNE	R2, R0, L__Process_TP_Down242
NOP	
J	L_Process_TP_Down96
NOP	
L__Process_TP_Down242:
;ihm_driver.c,577 :: 		object_pressed = 1;
ORI	R2, R0, 1
SB	R2, Offset(_object_pressed+0)(GP)
;ihm_driver.c,578 :: 		DrawRoundButton(exec_round_button);
LW	R25, Offset(_exec_round_button+0)(GP)
JAL	_DrawRoundButton+0
NOP	
;ihm_driver.c,579 :: 		}
L_Process_TP_Down96:
;ihm_driver.c,580 :: 		PressedObject = (void *)exec_round_button;
LW	R2, Offset(_exec_round_button+0)(GP)
SW	R2, Offset(_PressedObject+0)(GP)
;ihm_driver.c,581 :: 		PressedObjectType = 1;
ORI	R2, R0, 1
SH	R2, Offset(_PressedObjectType+0)(GP)
;ihm_driver.c,582 :: 		if (exec_round_button->OnDownPtr != 0) {
LW	R2, Offset(_exec_round_button+0)(GP)
ADDIU	R2, R2, 56
LW	R2, 0(R2)
BNE	R2, R0, L__Process_TP_Down244
NOP	
J	L_Process_TP_Down97
NOP	
L__Process_TP_Down244:
;ihm_driver.c,583 :: 		exec_round_button->OnDownPtr();
LW	R2, Offset(_exec_round_button+0)(GP)
ADDIU	R2, R2, 56
LW	R2, 0(R2)
JALR	RA, R2
NOP	
;ihm_driver.c,584 :: 		return;
J	L_end_Process_TP_Down
NOP	
;ihm_driver.c,585 :: 		}
L_Process_TP_Down97:
;ihm_driver.c,586 :: 		}
L_Process_TP_Down95:
;ihm_driver.c,587 :: 		}
L_Process_TP_Down94:
;ihm_driver.c,589 :: 		if (_object_count == label_order) {
LH	R3, Offset(_label_order+0)(GP)
LH	R2, Offset(__object_count+0)(GP)
BEQ	R2, R3, L__Process_TP_Down245
NOP	
J	L_Process_TP_Down98
NOP	
L__Process_TP_Down245:
;ihm_driver.c,590 :: 		if (exec_label->Active != 0) {
LW	R2, Offset(_exec_label+0)(GP)
ADDIU	R2, R2, 28
LBU	R2, 0(R2)
ANDI	R2, R2, 255
BNE	R2, R0, L__Process_TP_Down247
NOP	
J	L_Process_TP_Down99
NOP	
L__Process_TP_Down247:
;ihm_driver.c,591 :: 		PressedObject = (void *)exec_label;
LW	R2, Offset(_exec_label+0)(GP)
SW	R2, Offset(_PressedObject+0)(GP)
;ihm_driver.c,592 :: 		PressedObjectType = 2;
ORI	R2, R0, 2
SH	R2, Offset(_PressedObjectType+0)(GP)
;ihm_driver.c,593 :: 		if (exec_label->OnDownPtr != 0) {
LW	R2, Offset(_exec_label+0)(GP)
ADDIU	R2, R2, 36
LW	R2, 0(R2)
BNE	R2, R0, L__Process_TP_Down249
NOP	
J	L_Process_TP_Down100
NOP	
L__Process_TP_Down249:
;ihm_driver.c,594 :: 		exec_label->OnDownPtr();
LW	R2, Offset(_exec_label+0)(GP)
ADDIU	R2, R2, 36
LW	R2, 0(R2)
JALR	RA, R2
NOP	
;ihm_driver.c,595 :: 		return;
J	L_end_Process_TP_Down
NOP	
;ihm_driver.c,596 :: 		}
L_Process_TP_Down100:
;ihm_driver.c,597 :: 		}
L_Process_TP_Down99:
;ihm_driver.c,598 :: 		}
L_Process_TP_Down98:
;ihm_driver.c,600 :: 		if (_object_count == image_order) {
LH	R3, Offset(_image_order+0)(GP)
LH	R2, Offset(__object_count+0)(GP)
BEQ	R2, R3, L__Process_TP_Down250
NOP	
J	L_Process_TP_Down101
NOP	
L__Process_TP_Down250:
;ihm_driver.c,601 :: 		if (exec_image->Active != 0) {
LW	R2, Offset(_exec_image+0)(GP)
ADDIU	R2, R2, 21
LBU	R2, 0(R2)
ANDI	R2, R2, 255
BNE	R2, R0, L__Process_TP_Down252
NOP	
J	L_Process_TP_Down102
NOP	
L__Process_TP_Down252:
;ihm_driver.c,602 :: 		PressedObject = (void *)exec_image;
LW	R2, Offset(_exec_image+0)(GP)
SW	R2, Offset(_PressedObject+0)(GP)
;ihm_driver.c,603 :: 		PressedObjectType = 3;
ORI	R2, R0, 3
SH	R2, Offset(_PressedObjectType+0)(GP)
;ihm_driver.c,604 :: 		if (exec_image->OnDownPtr != 0) {
LW	R2, Offset(_exec_image+0)(GP)
ADDIU	R2, R2, 28
LW	R2, 0(R2)
BNE	R2, R0, L__Process_TP_Down254
NOP	
J	L_Process_TP_Down103
NOP	
L__Process_TP_Down254:
;ihm_driver.c,605 :: 		exec_image->OnDownPtr();
LW	R2, Offset(_exec_image+0)(GP)
ADDIU	R2, R2, 28
LW	R2, 0(R2)
JALR	RA, R2
NOP	
;ihm_driver.c,606 :: 		return;
J	L_end_Process_TP_Down
NOP	
;ihm_driver.c,607 :: 		}
L_Process_TP_Down103:
;ihm_driver.c,608 :: 		}
L_Process_TP_Down102:
;ihm_driver.c,609 :: 		}
L_Process_TP_Down101:
;ihm_driver.c,611 :: 		}
L_Process_TP_Down93:
;ihm_driver.c,612 :: 		}
L_end_Process_TP_Down:
LW	R25, 4(SP)
LW	RA, 0(SP)
ADDIU	SP, SP, 8
JR	RA
NOP	
; end of _Process_TP_Down
_Check_TP:
;ihm_driver.c,614 :: 		void Check_TP() {
ADDIU	SP, SP, -12
SW	RA, 0(SP)
;ihm_driver.c,615 :: 		if (TP_TFT_Press_Detect()) {
SW	R25, 4(SP)
SW	R26, 8(SP)
JAL	_TP_TFT_Press_Detect+0
NOP	
BNE	R2, R0, L__Check_TP257
NOP	
J	L_Check_TP104
NOP	
L__Check_TP257:
;ihm_driver.c,616 :: 		if (TP_TFT_Get_Coordinates(&Xcoord, &Ycoord) == 0) {
LUI	R26, hi_addr(_Ycoord+0)
ORI	R26, R26, lo_addr(_Ycoord+0)
LUI	R25, hi_addr(_Xcoord+0)
ORI	R25, R25, lo_addr(_Xcoord+0)
JAL	_TP_TFT_Get_Coordinates+0
NOP	
ANDI	R2, R2, 255
BEQ	R2, R0, L__Check_TP258
NOP	
J	L_Check_TP105
NOP	
L__Check_TP258:
;ihm_driver.c,618 :: 		Process_TP_Press(Xcoord, Ycoord);
LHU	R26, Offset(_Ycoord+0)(GP)
LHU	R25, Offset(_Xcoord+0)(GP)
JAL	_Process_TP_Press+0
NOP	
;ihm_driver.c,619 :: 		if (PenDown == 0) {
LBU	R2, Offset(_PenDown+0)(GP)
BEQ	R2, R0, L__Check_TP259
NOP	
J	L_Check_TP106
NOP	
L__Check_TP259:
;ihm_driver.c,620 :: 		PenDown = 1;
ORI	R2, R0, 1
SB	R2, Offset(_PenDown+0)(GP)
;ihm_driver.c,621 :: 		Process_TP_Down(Xcoord, Ycoord);
LHU	R26, Offset(_Ycoord+0)(GP)
LHU	R25, Offset(_Xcoord+0)(GP)
JAL	_Process_TP_Down+0
NOP	
;ihm_driver.c,622 :: 		}
L_Check_TP106:
;ihm_driver.c,623 :: 		}
L_Check_TP105:
;ihm_driver.c,624 :: 		}
J	L_Check_TP107
NOP	
L_Check_TP104:
;ihm_driver.c,625 :: 		else if (PenDown == 1) {
LBU	R3, Offset(_PenDown+0)(GP)
ORI	R2, R0, 1
BEQ	R3, R2, L__Check_TP260
NOP	
J	L_Check_TP108
NOP	
L__Check_TP260:
;ihm_driver.c,626 :: 		PenDown = 0;
SB	R0, Offset(_PenDown+0)(GP)
;ihm_driver.c,627 :: 		Process_TP_Up(Xcoord, Ycoord);
LHU	R26, Offset(_Ycoord+0)(GP)
LHU	R25, Offset(_Xcoord+0)(GP)
JAL	_Process_TP_Up+0
NOP	
;ihm_driver.c,628 :: 		}
L_Check_TP108:
L_Check_TP107:
;ihm_driver.c,629 :: 		}
L_end_Check_TP:
LW	R26, 8(SP)
LW	R25, 4(SP)
LW	RA, 0(SP)
ADDIU	SP, SP, 12
JR	RA
NOP	
; end of _Check_TP
_Init_MCU:
;ihm_driver.c,631 :: 		void Init_MCU() {
ADDIU	SP, SP, -16
SW	RA, 0(SP)
;ihm_driver.c,632 :: 		PMMODE = 0;
SW	R25, 4(SP)
SW	R26, 8(SP)
SW	R27, 12(SP)
SW	R0, Offset(PMMODE+0)(GP)
;ihm_driver.c,633 :: 		PMAEN  = 0;
SW	R0, Offset(PMAEN+0)(GP)
;ihm_driver.c,634 :: 		PMCON  = 0;  // WRSP: Write Strobe Polarity bit
SW	R0, Offset(PMCON+0)(GP)
;ihm_driver.c,635 :: 		PMMODEbits.MODE = 2;     // Master 2
ORI	R3, R0, 2
LHU	R2, Offset(PMMODEbits+0)(GP)
INS	R2, R3, 8, 2
SH	R2, Offset(PMMODEbits+0)(GP)
;ihm_driver.c,636 :: 		PMMODEbits.WAITB = 0;
ORI	R4, R0, 192
SB	R4, Offset(PMMODEbits+4)(GP)
;ihm_driver.c,637 :: 		PMMODEbits.WAITM = 1;
ORI	R3, R0, 1
LBU	R2, Offset(PMMODEbits+0)(GP)
INS	R2, R3, 2, 4
SB	R2, Offset(PMMODEbits+0)(GP)
;ihm_driver.c,638 :: 		PMMODEbits.WAITE = 0;
ORI	R2, R0, 3
SB	R2, Offset(PMMODEbits+4)(GP)
;ihm_driver.c,639 :: 		PMMODEbits.MODE16 = 1;   // 16 bit mode
ORI	R2, R0, 1024
SW	R2, Offset(PMMODEbits+8)(GP)
;ihm_driver.c,640 :: 		PMCONbits.CSF = 0;
SB	R4, Offset(PMCONbits+4)(GP)
;ihm_driver.c,641 :: 		PMCONbits.PTRDEN = 1;
ORI	R2, R0, 256
SW	R2, Offset(PMCONbits+8)(GP)
;ihm_driver.c,642 :: 		PMCONbits.PTWREN = 1;
ORI	R2, R0, 512
SW	R2, Offset(PMCONbits+8)(GP)
;ihm_driver.c,643 :: 		PMCONbits.PMPEN = 1;
ORI	R2, R0, 32768
SW	R2, Offset(PMCONbits+8)(GP)
;ihm_driver.c,644 :: 		TFT_Set_Default_Mode();
JAL	_TFT_Set_Default_Mode+0
NOP	
;ihm_driver.c,645 :: 		TP_TFT_Set_Default_Mode();
JAL	_TP_TFT_Set_Default_Mode+0
NOP	
;ihm_driver.c,646 :: 		TFT_Set_Active(Set_Index,Write_Command,Write_Data);
LUI	R27, hi_addr(_Write_Data+0)
ORI	R27, R27, lo_addr(_Write_Data+0)
LUI	R26, hi_addr(_Write_Command+0)
ORI	R26, R26, lo_addr(_Write_Command+0)
LUI	R25, hi_addr(_Set_Index+0)
ORI	R25, R25, lo_addr(_Set_Index+0)
JAL	_TFT_Set_Active+0
NOP	
;ihm_driver.c,647 :: 		}
L_end_Init_MCU:
LW	R27, 12(SP)
LW	R26, 8(SP)
LW	R25, 4(SP)
LW	RA, 0(SP)
ADDIU	SP, SP, 16
JR	RA
NOP	
; end of _Init_MCU
_Start_TP:
;ihm_driver.c,649 :: 		void Start_TP() {
ADDIU	SP, SP, -8
SW	RA, 0(SP)
;ihm_driver.c,650 :: 		Init_MCU();
SW	R25, 4(SP)
JAL	_Init_MCU+0
NOP	
;ihm_driver.c,652 :: 		InitializeTouchPanel();
JAL	ihm_driver_InitializeTouchPanel+0
NOP	
;ihm_driver.c,654 :: 		InitializeObjects();
JAL	ihm_driver_InitializeObjects+0
NOP	
;ihm_driver.c,656 :: 		Delay_ms(1000);
LUI	R24, 406
ORI	R24, R24, 59050
L_Start_TP109:
ADDIU	R24, R24, -1
BNE	R24, R0, L_Start_TP109
NOP	
;ihm_driver.c,657 :: 		TFT_Fill_Screen(0);
MOVZ	R25, R0, R0
JAL	_TFT_Fill_Screen+0
NOP	
;ihm_driver.c,658 :: 		Calibrate();
JAL	_Calibrate+0
NOP	
;ihm_driver.c,659 :: 		TFT_Fill_Screen(0);
MOVZ	R25, R0, R0
JAL	_TFT_Fill_Screen+0
NOP	
;ihm_driver.c,661 :: 		InitializeObjects();
JAL	ihm_driver_InitializeObjects+0
NOP	
;ihm_driver.c,662 :: 		display_width = Screen1.Width;
LHU	R2, Offset(_Screen1+2)(GP)
SH	R2, Offset(_display_width+0)(GP)
;ihm_driver.c,663 :: 		display_height = Screen1.Height;
LHU	R2, Offset(_Screen1+4)(GP)
SH	R2, Offset(_display_height+0)(GP)
;ihm_driver.c,664 :: 		DrawScreen(&Screen1);
LUI	R25, hi_addr(_Screen1+0)
ORI	R25, R25, lo_addr(_Screen1+0)
JAL	_DrawScreen+0
NOP	
;ihm_driver.c,665 :: 		}
L_end_Start_TP:
LW	R25, 4(SP)
LW	RA, 0(SP)
ADDIU	SP, SP, 8
JR	RA
NOP	
; end of _Start_TP
ihm_driver____?ag:
L_end_ihm_driver___?ag:
JR	RA
NOP	
; end of ihm_driver____?ag
