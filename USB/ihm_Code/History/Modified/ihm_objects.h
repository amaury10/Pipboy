typedef enum {_taLeft, _taCenter, _taRight} TTextAlign;
typedef enum {_tavTop, _tavMiddle, _tavBottom} TTextAlignVertical;

typedef struct Screen TScreen;

typedef struct  Button_Round {
  TScreen*  OwnerScreen;
  char          Order;
  unsigned int  Left;
  unsigned int  Top;
  unsigned int  Width;
  unsigned int  Height;
  char          Pen_Width;
  unsigned int  Pen_Color;
  char          Visible;
  char          Active;
  char          Transparent;
  char          *Caption;
  TTextAlign    TextAlign;
  TTextAlignVertical TextAlignVertical;
  const char    *FontName;
  unsigned int  Font_Color;
  char          VerticalText;
  char          Gradient;
  char          Gradient_Orientation;
  unsigned int  Gradient_Start_Color;
  unsigned int  Gradient_End_Color;
  unsigned int  Color;
  char          Corner_Radius;
  char          PressColEnabled;
  unsigned int  Press_Color;
  void          (*OnUpPtr)();
  void          (*OnDownPtr)();
  void          (*OnClickPtr)();
  void          (*OnPressPtr)();
} TButton_Round;

typedef struct  Label {
  TScreen*  OwnerScreen;
  char          Order;
  unsigned int  Left;
  unsigned int  Top;
  unsigned int  Width;
  unsigned int  Height;
  char          *Caption;
  const char    *FontName;
  unsigned int  Font_Color;
  char          VerticalText;
  char          Visible;
  char          Active;
  void          (*OnUpPtr)();
  void          (*OnDownPtr)();
  void          (*OnClickPtr)();
  void          (*OnPressPtr)();
} TLabel;

struct Screen {
  unsigned int           Color;
  unsigned int           Width;
  unsigned int           Height;
  unsigned int           ObjectsCount;
  unsigned int           Buttons_RoundCount;
  TButton_Round          * const code *Buttons_Round;
  unsigned int           LabelsCount;
  TLabel                 * const code *Labels;
};

extern   TScreen                Screen1;
extern   TButton_Round          Previous;
extern   TButton_Round          ButtonRound1;
extern   TLabel                 PageNumber;
extern   TButton_Round          * const code Screen1_Buttons_Round[2];
extern   TLabel                 * const code Screen1_Labels[1];


/////////////////////////
// Events Code Declarations
void ButtonRound1OnClick();
void ButtonRound2OnClick();
/////////////////////////

/////////////////////////////////
// Caption variables Declarations
extern char Previous_Caption[];
extern char ButtonRound1_Caption[];
extern char PageNumber_Caption[];
/////////////////////////////////

void DrawScreen(TScreen *aScreen);
void DrawRoundButton(TButton_Round *Around_button);
void DrawLabel(TLabel *ALabel);
void Check_TP();
void Start_TP();
void Process_TP_Press(unsigned int X, unsigned int Y);
void Process_TP_Up(unsigned int X, unsigned int Y);
void Process_TP_Down(unsigned int X, unsigned int Y);
