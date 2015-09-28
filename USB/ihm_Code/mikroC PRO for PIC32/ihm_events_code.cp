#line 1 "J:/SAPHIR/LUGE_IhmTactile/Pipboy/USB/ihm_Code/mikroC PRO for PIC32/ihm_events_code.c"
#line 1 "j:/saphir/luge_ihmtactile/pipboy/usb/ihm_code/mikroc pro for pic32/ihm_objects.h"
typedef enum {_taLeft, _taCenter, _taRight} TTextAlign;
typedef enum {_tavTop, _tavMiddle, _tavBottom} TTextAlignVertical;

typedef struct Screen TScreen;

typedef struct Button_Round {
 TScreen* OwnerScreen;
 char Order;
 unsigned int Left;
 unsigned int Top;
 unsigned int Width;
 unsigned int Height;
 char Pen_Width;
 unsigned int Pen_Color;
 char Visible;
 char Active;
 char Transparent;
 char *Caption;
 TTextAlign TextAlign;
 TTextAlignVertical TextAlignVertical;
 const char *FontName;
 unsigned int Font_Color;
 char VerticalText;
 char Gradient;
 char Gradient_Orientation;
 unsigned int Gradient_Start_Color;
 unsigned int Gradient_End_Color;
 unsigned int Color;
 char Corner_Radius;
 char PressColEnabled;
 unsigned int Press_Color;
 void (*OnUpPtr)();
 void (*OnDownPtr)();
 void (*OnClickPtr)();
 void (*OnPressPtr)();
} TButton_Round;

typedef struct Label {
 TScreen* OwnerScreen;
 char Order;
 unsigned int Left;
 unsigned int Top;
 unsigned int Width;
 unsigned int Height;
 char *Caption;
 const char *FontName;
 unsigned int Font_Color;
 char VerticalText;
 char Visible;
 char Active;
 void (*OnUpPtr)();
 void (*OnDownPtr)();
 void (*OnClickPtr)();
 void (*OnPressPtr)();
} TLabel;

typedef struct Image {
 TScreen* OwnerScreen;
 char Order;
 unsigned int Left;
 unsigned int Top;
 unsigned int Width;
 unsigned int Height;
 const char *Picture_Name;
 char Visible;
 char Active;
 char Picture_Type;
 char Picture_Ratio;
 void (*OnUpPtr)();
 void (*OnDownPtr)();
 void (*OnClickPtr)();
 void (*OnPressPtr)();
} TImage;

struct Screen {
 unsigned int Color;
 unsigned int Width;
 unsigned int Height;
 unsigned int ObjectsCount;
 unsigned int Buttons_RoundCount;
 TButton_Round * const code *Buttons_Round;
 unsigned int LabelsCount;
 TLabel * const code *Labels;
 unsigned int ImagesCount;
 TImage * const code *Images;
};

extern TScreen Screen1;
extern TButton_Round Previous;
extern TButton_Round ButtonRound1;
extern TLabel PageNumber;
extern TImage Image2;
extern TButton_Round * const code Screen1_Buttons_Round[2];
extern TLabel * const code Screen1_Labels[1];
extern TImage * const code Screen1_Images[1];




void ButtonRound1OnClick();
void ButtonRound2OnClick();
void IconOnClick(unsigned int X, unsigned int Y);




extern char Previous_Caption[];
extern char ButtonRound1_Caption[];
extern char PageNumber_Caption[];
extern char Image2_Caption[];


void DrawScreen(TScreen *aScreen);
void DrawRoundButton(TButton_Round *Around_button);
void DrawLabel(TLabel *ALabel);
void DrawImage(TImage *AImage);
void Check_TP();
void Start_TP();
void Process_TP_Press(unsigned int X, unsigned int Y);
void Process_TP_Up(unsigned int X, unsigned int Y);
void Process_TP_Down(unsigned int X, unsigned int Y);
#line 1 "j:/saphir/luge_ihmtactile/pipboy/usb/ihm_code/mikroc pro for pic32/ihm_resources.h"
const code char Tahoma11x13_Regular[];
const code char logo_bmp[25318];
#line 4 "J:/SAPHIR/LUGE_IhmTactile/Pipboy/USB/ihm_Code/mikroC PRO for PIC32/ihm_events_code.c"
extern char * ReadBuffer, WriteBuffer;






void ButtonRound1OnClick() {
 strcpy(&WriteBuffer, "Previous\r\n");
 HID_Write(&WriteBuffer, 64);
}

void ButtonRound2OnClick() {
 strcpy(&WriteBuffer, "Next\r\n");
 HID_Write(&WriteBuffer, 64);
}

void IconOnClick(unsigned int X, unsigned int Y) {
 int icon_number = -1, Ix = -1, Iy = -1;
 Ix = X/80;
 Iy = Y/80;
 if (Iy < 2) {
 sprintf(&WriteBuffer, "Icon=%d\r\n", Ix+4*Iy);
 HID_Write(&WriteBuffer, 64);
 }
}
