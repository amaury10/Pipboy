#include "ihm_objects.h"
#include "ihm_resources.h"
#include "built_in.h"


// TFT module connections
char TFT_DataPort at LATE;
sbit TFT_RST at LATC1_bit;
sbit TFT_BLED at LATA9_bit;
sbit TFT_RS at LATB15_bit;
sbit TFT_CS at LATF12_bit;
sbit TFT_RD at LATD5_bit;
sbit TFT_WR at LATD4_bit;
char TFT_DataPort_Direction at TRISE;
sbit TFT_RST_Direction at TRISC1_bit;
sbit TFT_BLED_Direction at TRISA9_bit;
sbit TFT_RS_Direction at TRISB15_bit;
sbit TFT_CS_Direction at TRISF12_bit;
sbit TFT_RD_Direction at TRISD5_bit;
sbit TFT_WR_Direction at TRISD4_bit;
// End TFT module connections

// Touch Panel module connections
sbit DriveX_Left at LATB13_bit;
sbit DriveX_Right at LATB11_bit;
sbit DriveY_Up at LATB12_bit;
sbit DriveY_Down at LATB10_bit;
sbit DriveX_Left_Direction at TRISB13_bit;
sbit DriveX_Right_Direction at TRISB11_bit;
sbit DriveY_Up_Direction at TRISB12_bit;
sbit DriveY_Down_Direction at TRISB10_bit;
// End Touch Panel module connections

// Global variables
unsigned int Xcoord, Ycoord;
const ADC_THRESHOLD = 1000;
char PenDown;
void *PressedObject;
int PressedObjectType;
unsigned int caption_length, caption_height;
unsigned int display_width, display_height;

int _object_count;
unsigned short object_pressed;
TButton_Round *local_round_button;
TButton_Round *exec_round_button;
int round_button_order;
TLabel *local_label;
TLabel *exec_label;
int label_order;
TImage *local_image;
TImage *exec_image;
int image_order;


void PMPWaitBusy() {
  while(PMMODEbits.BUSY);
}

void Set_Index(unsigned short index) {
  TFT_RS = 0;
  PMDIN = index;
  PMPWaitBusy();
}

void Write_Command( unsigned short cmd ) {
  TFT_RS = 1;
  PMDIN = cmd;
  PMPWaitBusy();
}

void Write_Data(unsigned int _data) {
  TFT_RS = 1;
  PMDIN = _data;
  PMPWaitBusy();
}


void Init_ADC() {
  AD1PCFG = 0xFFFF;
  PCFG12_bit = 0;
  PCFG13_bit = 0;
  // PMP setup
  ADC1_Init();
}
static void InitializeTouchPanel() {
  Init_ADC();
  TFT_Set_Active(Set_Index, Write_Command, Write_Data);
  TFT_Init(320, 240);

  TP_TFT_Init(320, 240, 13, 12);                                  // Initialize touch panel
  TP_TFT_Set_ADC_Threshold(ADC_THRESHOLD);                              // Set touch panel ADC threshold

  PenDown = 0;
  PressedObject = 0;
  PressedObjectType = -1;
}

void Calibrate() {
  TFT_Set_Pen(CL_WHITE, 3);
  TFT_Set_Font(TFT_defaultFont, CL_WHITE, FO_HORIZONTAL);
  TFT_Write_Text("Touch selected corners for calibration", 50, 80);
  TFT_Write_Text("Touch selected corners for calibration", 50, 75);
  TFT_Line(315, 1, 319, 1);
  TFT_Line(310, 10, 319, 1);
  TFT_Line(319, 5, 319, 1);
  TFT_Write_Text("first here", 230, 20);
  TFT_Image(47, 90, logo_bmp, 1);
  /*
  DrawImage(&Image2);
  Image2.OwnerScreen     = &Screen1;
  Image2.Order           = 5;
  Image2.Left            = 47;
  Image2.Top             = 90;
  Image2.Width           = 226;
  Image2.Height          = 56;
  Image2.Picture_Type    = 0;
  Image2.Picture_Ratio   = 1;
  Image2.Picture_Name    = logo_bmp;
  Image2.Visible         = 1;
  Image2.Active          = 1;
  Image2.OnUpPtr         = 0;
  Image2.OnDownPtr       = 0;
  Image2.OnClickPtr      = 0;
  Image2.OnPressPtr      = 0;
  */

  TP_TFT_Calibrate_Min();                      // Calibration of TP minimum
  Delay_ms(500);

  TFT_Set_Pen(CL_BLACK, 3);
  TFT_Set_Font(TFT_defaultFont, CL_BLACK, FO_HORIZONTAL);
  TFT_Line(315, 1, 319, 1);
  TFT_Line(310, 10, 319, 1);
  TFT_Line(319, 5, 319, 1);
  TFT_Write_Text("first here", 230, 20);

  TFT_Set_Pen(CL_WHITE, 3);
  TFT_Set_Font(TFT_defaultFont, CL_WHITE, FO_HORIZONTAL);
  TFT_Line(0, 239, 0, 235);
  TFT_Line(0, 239, 5, 239);
  TFT_Line(0, 239, 10, 230);
  TFT_Write_Text("now here ", 15, 200);

  TP_TFT_Calibrate_Max();                       // Calibration of TP maximum
  Delay_ms(500);
}


/////////////////////////
  TScreen*  CurrentScreen;

  TScreen                Screen1;
  TButton_Round          Previous;
char Previous_Caption[2] = "<";

  TButton_Round          ButtonRound1;
char ButtonRound1_Caption[2] = ">";

  TLabel                 PageNumber;
char PageNumber_Caption[4] = "1/2";

  TImage               Image2;
  TButton_Round          * const code Screen1_Buttons_Round[2]=
         {
         &Previous,            
         &ButtonRound1         
         };
  TLabel                 * const code Screen1_Labels[1]=
         {
         &PageNumber           
         };
  TImage                 * const code Screen1_Images[1]=
         {
         &Image2               
         };



static void InitializeObjects() {
  Screen1.Color                     = 0xFFFF;
  Screen1.Width                     = 320;
  Screen1.Height                    = 240;
  Screen1.Buttons_RoundCount        = 2;
  Screen1.Buttons_Round             = Screen1_Buttons_Round;
  Screen1.LabelsCount               = 1;
  Screen1.Labels                    = Screen1_Labels;
  Screen1.ImagesCount               = 1;
  Screen1.Images                    = Screen1_Images;
  Screen1.ObjectsCount              = 4;


  Previous.OwnerScreen     = &Screen1;
  Previous.Order           = 0;
  Previous.Left            = 5;
  Previous.Top             = 210;
  Previous.Width           = 25;
  Previous.Height          = 25;
  Previous.Pen_Width       = 1;
  Previous.Pen_Color       = 0x0000;
  Previous.Visible         = 1;
  Previous.Active          = 1;
  Previous.Transparent     = 1;
  Previous.Caption         = Previous_Caption;
  Previous.TextAlign       = _taCenter;
  Previous.TextAlignVertical= _tavMiddle;
  Previous.FontName        = Tahoma11x13_Regular;
  Previous.PressColEnabled = 1;
  Previous.Font_Color      = 0x0000;
  Previous.VerticalText    = 0;
  Previous.Gradient        = 1;
  Previous.Gradient_Orientation = 0;
  Previous.Gradient_Start_Color = 0xFFFF;
  Previous.Gradient_End_Color = 0xC618;
  Previous.Color           = 0xC618;
  Previous.Press_Color     = 0xE71C;
  Previous.Corner_Radius   = 3;
  Previous.OnUpPtr         = 0;
  Previous.OnDownPtr       = 0;
  Previous.OnClickPtr      = 0;
  Previous.OnPressPtr      = 0;

  ButtonRound1.OwnerScreen     = &Screen1;
  ButtonRound1.Order           = 1;
  ButtonRound1.Left            = 290;
  ButtonRound1.Top             = 210;
  ButtonRound1.Width           = 25;
  ButtonRound1.Height          = 25;
  ButtonRound1.Pen_Width       = 1;
  ButtonRound1.Pen_Color       = 0x0000;
  ButtonRound1.Visible         = 1;
  ButtonRound1.Active          = 1;
  ButtonRound1.Transparent     = 1;
  ButtonRound1.Caption         = ButtonRound1_Caption;
  ButtonRound1.TextAlign       = _taCenter;
  ButtonRound1.TextAlignVertical= _tavMiddle;
  ButtonRound1.FontName        = Tahoma11x13_Regular;
  ButtonRound1.PressColEnabled = 1;
  ButtonRound1.Font_Color      = 0x0000;
  ButtonRound1.VerticalText    = 0;
  ButtonRound1.Gradient        = 1;
  ButtonRound1.Gradient_Orientation = 0;
  ButtonRound1.Gradient_Start_Color = 0xFFFF;
  ButtonRound1.Gradient_End_Color = 0xC618;
  ButtonRound1.Color           = 0xC618;
  ButtonRound1.Press_Color     = 0xE71C;
  ButtonRound1.Corner_Radius   = 3;
  ButtonRound1.OnUpPtr         = 0;
  ButtonRound1.OnDownPtr       = 0;
  ButtonRound1.OnClickPtr      = 0;
  ButtonRound1.OnPressPtr      = 0;

  PageNumber.OwnerScreen     = &Screen1;
  PageNumber.Order           = 2;
  PageNumber.Left            = 158;
  PageNumber.Top             = 219;
  PageNumber.Width           = 17;
  PageNumber.Height          = 15;
  PageNumber.Visible         = 1;
  PageNumber.Active          = 1;
  PageNumber.Caption         = PageNumber_Caption;
  PageNumber.FontName        = Tahoma11x13_Regular;
  PageNumber.Font_Color      = 0x0000;
  PageNumber.VerticalText    = 0;
  PageNumber.OnUpPtr         = 0;
  PageNumber.OnDownPtr       = 0;
  PageNumber.OnClickPtr      = 0;
  PageNumber.OnPressPtr      = 0;

  Image2.OwnerScreen     = &Screen1;
  Image2.Order           = 3;
  Image2.Left            = 47;
  Image2.Top             = 90;
  Image2.Width           = 226;
  Image2.Height          = 56;
  Image2.Picture_Type    = 0;
  Image2.Picture_Ratio   = 1;
  Image2.Picture_Name    = logo_bmp;
  Image2.Visible         = 1;
  Image2.Active          = 1;
  Image2.OnUpPtr         = 0;
  Image2.OnDownPtr       = 0;
  Image2.OnClickPtr      = 0;
  Image2.OnPressPtr      = 0;
}

static char IsInsideObject (unsigned int X, unsigned int Y, unsigned int Left, unsigned int Top, unsigned int Width, unsigned int Height) { // static
  if ( (Left<= X) && (Left+ Width - 1 >= X) &&
       (Top <= Y)  && (Top + Height - 1 >= Y) )
    return 1;
  else
    return 0;
}


#define GetRoundButton(index)         CurrentScreen->Buttons_Round[index]
#define GetLabel(index)               CurrentScreen->Labels[index]
#define GetImage(index)               CurrentScreen->Images[index]


void DrawRoundButton(TButton_Round *Around_button) {
unsigned int ALeft, ATop;
  if (Around_button->Visible != 0) {
    if (object_pressed == 1) {
      object_pressed = 0;
      TFT_Set_Brush(Around_button->Transparent, Around_button->Press_Color, Around_button->Gradient, Around_button->Gradient_Orientation,
                    Around_button->Gradient_End_Color, Around_button->Gradient_Start_Color);
    }
    else {
      TFT_Set_Brush(Around_button->Transparent, Around_button->Color, Around_button->Gradient, Around_button->Gradient_Orientation,
                    Around_button->Gradient_Start_Color, Around_button->Gradient_End_Color);
    }
    TFT_Set_Pen(Around_button->Pen_Color, Around_button->Pen_Width);
    TFT_Rectangle_Round_Edges(Around_button->Left + 1, Around_button->Top + 1,
      Around_button->Left + Around_button->Width - 2,
      Around_button->Top + Around_button->Height - 2, Around_button->Corner_Radius);
    if (Around_button->VerticalText != 0)
      TFT_Set_Font(Around_button->FontName, Around_button->Font_Color, FO_VERTICAL_COLUMN);
    else
      TFT_Set_Font(Around_button->FontName, Around_button->Font_Color, FO_HORIZONTAL);
    TFT_Write_Text_Return_Pos(Around_button->Caption, Around_button->Left, Around_button->Top);
    if (Around_button->TextAlign == _taLeft)
      ALeft = Around_button->Left + 4;
    else if (Around_button->TextAlign == _taCenter)
      ALeft = Around_button->Left + (Around_button->Width - caption_length) / 2;
    else if (Around_button->TextAlign == _taRight)
      ALeft = Around_button->Left + Around_button->Width - caption_length - 4;

    if (Around_button->TextAlignVertical == _tavTop)
      ATop = Around_button->Top + 3;
    else if (Around_button->TextAlignVertical == _tavMiddle)
      ATop = Around_button->Top + (Around_button->Height - caption_height) / 2;
    else if (Around_button->TextAlignVertical == _tavBottom)
      ATop  = Around_button->Top + Around_button->Height - caption_height - 4;

    TFT_Write_Text(Around_button->Caption, ALeft, ATop);
  }
}

void DrawLabel(TLabel *ALabel) {
  if (ALabel->Visible != 0) {
    if (ALabel->VerticalText != 0)
      TFT_Set_Font(ALabel->FontName, ALabel->Font_Color, FO_VERTICAL_COLUMN);
    else
      TFT_Set_Font(ALabel->FontName, ALabel->Font_Color, FO_HORIZONTAL);
    TFT_Write_Text(ALabel->Caption, ALabel->Left, ALabel->Top);
  }
}

void DrawImage(TImage *AImage) {
  if (AImage->Visible != 0) {
    TFT_Image(AImage->Left, AImage->Top, AImage->Picture_Name, AImage->Picture_Ratio);
  }
}

void DrawScreen(TScreen *aScreen) {
 unsigned int order;
  unsigned short round_button_idx;
  TButton_Round *local_round_button;
  unsigned short label_idx;
  TLabel *local_label;
  unsigned short image_idx;
  TImage *local_image;
  char save_bled, save_bled_direction;

  object_pressed = 0;
  order = 0;
  round_button_idx = 0;
  label_idx = 0;
  image_idx = 0;
  CurrentScreen = aScreen;

  if ((display_width != CurrentScreen->Width) || (display_height != CurrentScreen->Height)) {
    save_bled = TFT_BLED;
    save_bled_direction = TFT_BLED_Direction;
    TFT_BLED_Direction = 0;
    TFT_BLED           = 0;
    TFT_Set_Active(Set_Index, Write_Command, Write_Data);
    TFT_Init(CurrentScreen->Width, CurrentScreen->Height);
    TP_TFT_Init(CurrentScreen->Width, CurrentScreen->Height, 13, 12);                                  // Initialize touch panel
    TP_TFT_Set_ADC_Threshold(ADC_THRESHOLD);                              // Set touch panel ADC threshold
    TFT_Fill_Screen(CurrentScreen->Color);
    display_width = CurrentScreen->Width;
    display_height = CurrentScreen->Height;
    TFT_BLED           = save_bled;
    TFT_BLED_Direction = save_bled_direction;
  }
  else
    TFT_Fill_Screen(CurrentScreen->Color);


  while (order < CurrentScreen->ObjectsCount) {
    if (round_button_idx < CurrentScreen->Buttons_RoundCount) {
      local_round_button = GetRoundButton(round_button_idx);
      if (order == local_round_button->Order) {
        round_button_idx++;
        order++;
        DrawRoundButton(local_round_button);
      }
    }

    if (label_idx < CurrentScreen->LabelsCount) {
      local_label = GetLabel(label_idx);
      if (order == local_label->Order) {
        label_idx++;
        order++;
        DrawLabel(local_label);
      }
    }

    if (image_idx < CurrentScreen->ImagesCount) {
      local_image = GetImage(image_idx);
      if (order == local_image->Order) {
        image_idx++;
        order++;
        DrawImage(local_image);
      }
    }

  }
}

void Get_Object(unsigned int X, unsigned int Y) {
  round_button_order  = -1;
  label_order         = -1;
  image_order         = -1;
  //  Buttons with Round Edges
  for ( _object_count = 0 ; _object_count < CurrentScreen->Buttons_RoundCount ; _object_count++ ) {
    local_round_button = GetRoundButton(_object_count);
    if (local_round_button->Active != 0) {
      if (IsInsideObject(X, Y, local_round_button->Left, local_round_button->Top,
                         local_round_button->Width, local_round_button->Height) == 1) {
        round_button_order = local_round_button->Order;
        exec_round_button = local_round_button;
      }
    }
  }

  //  Labels
  for ( _object_count = 0 ; _object_count < CurrentScreen->LabelsCount ; _object_count++ ) {
    local_label = GetLabel(_object_count);
    if (local_label->Active != 0) {
      if (IsInsideObject(X, Y, local_label->Left, local_label->Top,
                         local_label->Width, local_label->Height) == 1) {
        label_order = local_label->Order;
        exec_label = local_label;
      }
    }
  }

  //  Images
  for ( _object_count = 0 ; _object_count < CurrentScreen->ImagesCount ; _object_count++ ) {
    local_image = GetImage(_object_count);
    if (local_image->Active != 0) {
      if (IsInsideObject(X, Y, local_image->Left, local_image->Top,
                         local_image->Width, local_image->Height) == 1) {
        image_order = local_image->Order;
        exec_image = local_image;
      }
    }
  }

  _object_count = -1;
  if (round_button_order >  _object_count )
    _object_count = round_button_order;
  if (label_order >  _object_count )
    _object_count = label_order;
  if (image_order >  _object_count )
    _object_count = image_order;
}


void Process_TP_Press(unsigned int X, unsigned int Y) {
  exec_round_button   = 0;
  exec_label          = 0;
  exec_image          = 0;

  Get_Object(X, Y);

  if (_object_count != -1) {
    if (_object_count == round_button_order) {
      if (exec_round_button->Active != 0) {
        if (exec_round_button->OnPressPtr != 0) {
          exec_round_button->OnPressPtr();
          return;
        }
      }
    }

    if (_object_count == label_order) {
      if (exec_label->Active != 0) {
        if (exec_label->OnPressPtr != 0) {
          exec_label->OnPressPtr();
          return;
        }
      }
    }

    if (_object_count == image_order) {
      if (exec_image->Active != 0) {
        if (exec_image->OnPressPtr != 0) {
          exec_image->OnPressPtr();
          return;
        }
      }
    }

  }
}

void Process_TP_Up(unsigned int X, unsigned int Y) {

  switch (PressedObjectType) {
    // Round Button
    case 1: {
      if (PressedObject != 0) {
        exec_round_button = (TButton_Round*)PressedObject;
        if ((exec_round_button->PressColEnabled != 0) && (exec_round_button->OwnerScreen == CurrentScreen)) {
          DrawRoundButton(exec_round_button);
        }
        break;
      }
      break;
    }
  }

  exec_label          = 0;
  exec_image          = 0;

  Get_Object(X, Y);


  if (_object_count != -1) {
  // Buttons with Round Edges
    if (_object_count == round_button_order) {
      if (exec_round_button->Active != 0) {
        if (exec_round_button->OnUpPtr != 0)
          exec_round_button->OnUpPtr();
        if (PressedObject == (void *)exec_round_button)
          if (exec_round_button->OnClickPtr != 0)
            exec_round_button->OnClickPtr();
        PressedObject = 0;
        PressedObjectType = -1;
        return;
      }
    }

  // Labels
    if (_object_count == label_order) {
      if (exec_label->Active != 0) {
        if (exec_label->OnUpPtr != 0)
          exec_label->OnUpPtr();
        if (PressedObject == (void *)exec_label)
          if (exec_label->OnClickPtr != 0)
            exec_label->OnClickPtr();
        PressedObject = 0;
        PressedObjectType = -1;
        return;
      }
    }

  // Images
    if (_object_count == image_order) {
      if (exec_image->Active != 0) {
        if (exec_image->OnUpPtr != 0)
          exec_image->OnUpPtr();
        if (PressedObject == (void *)exec_image)
          if (exec_image->OnClickPtr != 0)
            exec_image->OnClickPtr();
        PressedObject = 0;
        PressedObjectType = -1;
        return;
      }
    }

  }
  PressedObject = 0;
  PressedObjectType = -1;
}

void Process_TP_Down(unsigned int X, unsigned int Y) {

  object_pressed      = 0;
  exec_round_button   = 0;
  exec_label          = 0;
  exec_image          = 0;

  Get_Object(X, Y);

  if (_object_count != -1) {
    if (_object_count == round_button_order) {
      if (exec_round_button->Active != 0) {
        if (exec_round_button->PressColEnabled != 0) {
          object_pressed = 1;
          DrawRoundButton(exec_round_button);
        }
        PressedObject = (void *)exec_round_button;
        PressedObjectType = 1;
        if (exec_round_button->OnDownPtr != 0) {
          exec_round_button->OnDownPtr();
          return;
        }
      }
    }

    if (_object_count == label_order) {
      if (exec_label->Active != 0) {
        PressedObject = (void *)exec_label;
        PressedObjectType = 2;
        if (exec_label->OnDownPtr != 0) {
          exec_label->OnDownPtr();
          return;
        }
      }
    }

    if (_object_count == image_order) {
      if (exec_image->Active != 0) {
        PressedObject = (void *)exec_image;
        PressedObjectType = 3;
        if (exec_image->OnDownPtr != 0) {
          exec_image->OnDownPtr();
          return;
        }
      }
    }

  }
}

void Check_TP() {
  if (TP_TFT_Press_Detect()) {
    if (TP_TFT_Get_Coordinates(&Xcoord, &Ycoord) == 0) {
    // After a PRESS is detected read X-Y and convert it to Display dimensions space
      Process_TP_Press(Xcoord, Ycoord);
      if (PenDown == 0) {
        PenDown = 1;
        Process_TP_Down(Xcoord, Ycoord);
      }
    }
  }
  else if (PenDown == 1) {
    PenDown = 0;
    Process_TP_Up(Xcoord, Ycoord);
  }
}

void Init_MCU() {
  PMMODE = 0;
  PMAEN  = 0;
  PMCON  = 0;  // WRSP: Write Strobe Polarity bit
  PMMODEbits.MODE = 2;     // Master 2
  PMMODEbits.WAITB = 0;
  PMMODEbits.WAITM = 1;
  PMMODEbits.WAITE = 0;
  PMMODEbits.MODE16 = 1;   // 16 bit mode
  PMCONbits.CSF = 0;
  PMCONbits.PTRDEN = 1;
  PMCONbits.PTWREN = 1;
  PMCONbits.PMPEN = 1;
  TFT_Set_Default_Mode();
  TP_TFT_Set_Default_Mode();
  TFT_Set_Active(Set_Index,Write_Command,Write_Data);
}

void Start_TP() {
  Init_MCU();

  InitializeTouchPanel();

  InitializeObjects();

  Delay_ms(1000);
  TFT_Fill_Screen(0);
  Calibrate();
  TFT_Fill_Screen(0);

  InitializeObjects();
  display_width = Screen1.Width;
  display_height = Screen1.Height;
  DrawScreen(&Screen1);
}
