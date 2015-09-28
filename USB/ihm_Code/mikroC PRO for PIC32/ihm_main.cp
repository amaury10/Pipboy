#line 1 "J:/SAPHIR/LUGE_IhmTactile/Pipboy/USB/ihm_Code/mikroC PRO for PIC32/ihm_main.c"
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
#line 1 "j:/saphir/luge_ihmtactile/pipboy/usb/ihm_code/mikroc pro for pic32/usbdsc.c"
const unsigned int USB_VENDOR_ID = 0x003F;
const unsigned int USB_PRODUCT_ID = 0x04D8;
const char USB_SELF_POWER = 0x80;
const char USB_MAX_POWER = 50;
const char HID_INPUT_REPORT_BYTES = 64;
const char HID_OUTPUT_REPORT_BYTES = 64;
const char USB_TRANSFER_TYPE = 0x03;
const char EP_IN_INTERVAL = 1;
const char EP_OUT_INTERVAL = 1;

const char USB_INTERRUPT = 1;
const char USB_HID_EP = 1;
const char USB_HID_RPT_SIZE = 33;


const struct {
 char bLength;
 char bDescriptorType;
 unsigned int bcdUSB;
 char bDeviceClass;
 char bDeviceSubClass;
 char bDeviceProtocol;
 char bMaxPacketSize0;
 unsigned int idVendor;
 unsigned int idProduct;
 unsigned int bcdDevice;
 char iManufacturer;
 char iProduct;
 char iSerialNumber;
 char bNumConfigurations;
} device_dsc = {
 0x12,
 0x01,
 0x0200,
 0x00,
 0x00,
 0x00,
 8,
 USB_VENDOR_ID,
 USB_PRODUCT_ID,
 0x0001,
 0x01,
 0x02,
 0x00,
 0x01
 };


const char configDescriptor1[]= {

 0x09,
 0x02,
 0x29,0x00,
 1,
 1,
 0,
 USB_SELF_POWER,
 USB_MAX_POWER,


 0x09,
 0x04,
 0,
 0,
 2,
 0x03,
 0,
 0,
 0,


 0x09,
 0x21,
 0x01,0x01,
 0x00,
 1,
 0x22,
 USB_HID_RPT_SIZE,0x00,


 0x07,
 0x05,
 USB_HID_EP | 0x80,
 USB_TRANSFER_TYPE,
 0x40,0x00,
 EP_IN_INTERVAL,


 0x07,
 0x05,
 USB_HID_EP,
 USB_TRANSFER_TYPE,
 0x40,0x00,
 EP_OUT_INTERVAL
};

const struct {
 char report[USB_HID_RPT_SIZE];
}hid_rpt_desc =
 {
 {0x06, 0x00, 0xFF,
 0x09, 0x01,
 0xA1, 0x01,

 0x19, 0x01,
 0x29, 0x40,
 0x15, 0x00,
 0x26, 0xFF, 0x00,
 0x75, 0x08,
 0x95, HID_INPUT_REPORT_BYTES,
 0x81, 0x02,

 0x19, 0x01,
 0x29, 0x40,
 0x75, 0x08,
 0x95, HID_OUTPUT_REPORT_BYTES,
 0x91, 0x02,
 0xC0}
 };


const struct {
 char bLength;
 char bDscType;
 unsigned int string[1];
 } strd1 = {
 4,
 0x03,
 {0x0409}
 };



const struct{
 char bLength;
 char bDscType;
 unsigned int string[6];
 }strd2={
 14,
 0x03,
 {'S','A','P','H','I','R'}
 };


const struct{
 char bLength;
 char bDscType;
 unsigned int string[20];
}strd3={
 42,
 0x03,
 {'M','i','k','r','o','m','e','d','i','a',' ','f','o','r',' ','P','I','C','3','2'}
 };


const char* USB_config_dsc_ptr[1];


const char* USB_string_dsc_ptr[3];

void USB_Init_Desc(){
 USB_config_dsc_ptr[0] = &configDescriptor1;
 USB_string_dsc_ptr[0] = (const char*)&strd1;
 USB_string_dsc_ptr[1] = (const char*)&strd2;
 USB_string_dsc_ptr[2] = (const char*)&strd3;
}
#line 28 "J:/SAPHIR/LUGE_IhmTactile/Pipboy/USB/ihm_Code/mikroC PRO for PIC32/ihm_main.c"
char ind1 = 0, ind1_old = 1;
char ind2 = 0, ind2_old = 1;
int ind_num = 0, ind_num_old = 1;

unsigned int Image_icon[1024] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,0,35921,35921,35921,35921,35921,35921,35921,35921,35921,35921,35921,35921,48599,35921,52851,35921,52851,4096,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,0,35921,0,0,0,0,0,0,0,0,0,0,0,48599,35921,52851,35921,52851,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,0,35921,0,544,1344,544,0,0,0,544,1344,544,0,48599,16936,52857,16936,52851,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,0,35921,0,1344,0,1344,0,0,0,1344,0,1344,0,48599,52851,52851,52851,52851,4096,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,0,35921,544,1344,0,1344,544,0,544,1344,0,1344,544,48599,52857,16936,52857,52851,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,0,35921,1344,544,0,544,1344,0,1344,544,0,544,1344,48599,16936,65139,16936,52851,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,0,35921,1344,0,0,0,1344,0,1344,0,0,0,1344,48599,16936,65139,16936,52851,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,0,35921,0,0,0,0,544,1344,544,0,0,0,0,48599,52857,16936,52857,52851,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,0,35921,0,0,0,0,0,0,0,0,0,0,0,48599,52851,52851,52851,52851,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,0,48599,48599,48599,48599,48599,48599,48599,48599,48599,48599,48599,48599,48599,52851,52851,25376,25376,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,0,52851,52851,52851,52851,52851,52851,52851,52851,52851,52851,52851,52851,52851,52851,52851,25376,65504,25376,25376,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,0,52851,16936,52851,52851,52851,52851,52851,16936,52851,52851,52851,52851,63488,63488,63488,25376,65504,65504,65504,25376,25376,65535,65535,65535,65535,65535,65535,0,0,65535,65535,0,16936,14,16936,52851,52851,52851,16936,63488,16936,52851,63488,63488,52851,52851,52851,25376,65504,65504,0,65504,65504,25376,25376,65535,65535,65535,65535,0,0,65535,65535,0,52851,17,52851,52851,52851,52851,63488,52851,52851,63488,52851,52851,52851,52851,52851,25376,65504,0,0,0,65504,65504,65504,25376,63488,63488,65535,0,0,65535,65535,0,0,14,0,0,0,63488,0,0,63488,0,0,0,0,0,0,25376,65504,65504,0,65504,65504,25376,25376,65535,65535,65535,65535,0,0,65535,65535,65535,65535,17,65535,65535,65535,63488,65535,65535,63488,65535,65535,14,17,17,14,25376,65504,65504,65504,25376,25376,65535,65535,65535,65535,65535,65535,0,0,65535,65535,65535,65535,65535,14,65535,65535,65535,63488,63488,65535,65535,17,65535,65535,65535,65535,25376,65504,25376,25376,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,65535,65535,65535,65535,17,17,65535,65535,65535,65535,14,65535,65535,65535,65535,65535,25376,25376,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,65535,65535,65535,65535,65535,65535,14,17,14,17,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,65535,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
char Image_text[30] = "Add.vi";

char ReadBuffer[ 64 ], WriteBuffer[ 64 ];

void UsbIsr() iv IVT_USB_1 ilevel 7 ics ICS_SRS {
 USB_Interrupt_Proc();
 USBIF_bit = 0;
}

void ClearBuffer (char * buffer, int length) {
 int i = 0;
 for(i=0; i<length; i++) *(buffer+i) = 0;
}

void DrawIconName(int xx, int yy) {
 int i = 0, j = 0;
 int xd = 0, yd = 0;
 int dx, dy;
 int x, y;

 dx = 320/4;
 dy = 240/3;

 x = dx/2;
 y = dy/2;

 xd = (x+xx*dx)-16;
 yd = (y+yy*dy)-16;
 TFT_Set_Brush(1, CL_WHITE, 0, 0, 0, 0);
 TFT_Set_Pen(CL_WHITE, 0);
 TFT_Rectangle(xd-18, yd+32, xd-18 + 68, yd+32 + 20);
 TFT_Set_Font(TFT_defaultFont, CL_BLACK, FO_HORIZONTAL);
 TFT_Write_Text(Image_text, xd-18, yd+32);
}

void DrawIcon (int xx, int yy) {
 int i = 0, j = 0;
 int xd = 0, yd = 0;
 int dx, dy;
 int x, y;

 dx = 320/4;
 dy = 240/3;

 x = dx/2;
 y = dy/2;

 xd = (x+xx*dx)-16;
 yd = (y+yy*dy)-16;

 for(i=0; i<32; i++) {
 for(j=0; j<32; j++) {
 TFT_Dot(xd+i, yd+j, Image_icon[j*32+i]);
 }
 }
 DrawIconName(xx, yy);
}

void main() {
 int x0, y0;
 int i = 0, j = 0;

 int receive_block;
 int image_to_draw;

 receive_block = -1;

 USBIP0_bit = 1;
 USBIP1_bit = 1;
 USBIP2_bit = 1;

 USBIE_bit = 1;

 EnableInterrupts();

 Start_TP();

 ClearBuffer(ReadBuffer,  64 );
 ClearBuffer(WriteBuffer,  64 );
 HID_Enable(ReadBuffer, &WriteBuffer);

 for(i=0; i<2; i++) {
 for(j=0; j<4; j++) {
 DrawIcon(j, i);
 }
 }

 while (1) {
 Check_TP();
 if (HID_Read()) {
 ClearBuffer(WriteBuffer,  64 );
 if (strstr(ReadBuffer, "AT+SEND_IMAGE")) {
 strcpy(WriteBuffer, "READY\r\n");
 HID_Write(WriteBuffer, 64 );
 receive_block = 0;
 }

 else if ((receive_block>=0)&&(receive_block<2048)) {
 memcpy((char *)Image_icon+receive_block, ReadBuffer,  64 );
 receive_block+= 64 ;
 if(receive_block > 2048- 64 ) strcpy(WriteBuffer, "FINISH\r\n");
 else strcpy(WriteBuffer, "NEXT\r\n");
 HID_Write(WriteBuffer, 64 );

 }

 else if (strstr(&ReadBuffer, "AT+DRAW_IMAGE=")) {
 image_to_draw = ReadBuffer[strlen("AT+DRAW_IMAGE=")]-'0';
 DrawIcon(image_to_draw%4, image_to_draw/4);
 strcpy(WriteBuffer, "OK\r\n");
 HID_Write(WriteBuffer, 64 );
 }
 else if (strstr(&ReadBuffer, "AT+SET_PAGENUM=")) {
 PageNumber.Font_Color=CL_WHITE;
 DrawLabel(&PageNumber);
 strncpy(PageNumber.Caption, &ReadBuffer + strlen("AT+SET_PAGENUM="), 29);
 PageNumber.Font_Color=CL_BLACK;
 DrawLabel(&PageNumber);
 strcpy(WriteBuffer, "OK\r\n");
 HID_Write(WriteBuffer, 64 );
 }
 else if (strstr(&ReadBuffer, "AT+SET_ICON_NAME=")) {
 strncpy(Image_text, &ReadBuffer + strlen("AT+SET_ICON_NAME="), 29);
 strcpy(WriteBuffer, "OK\r\n");
 HID_Write(WriteBuffer, 64 );
 }
 else if (strstr(&ReadBuffer, "AT+DRAW_ICON_NAME=")) {
 image_to_draw = ReadBuffer[strlen("AT+DRAW_ICON_NAME=")]-'0';
 DrawIconName(image_to_draw%4, image_to_draw/4);
 strcpy(WriteBuffer, "OK\r\n");
 HID_Write(WriteBuffer, 64 );
 }
 else if (strstr(&ReadBuffer, "PING")) {
 strcpy(WriteBuffer, "PONG\r\n");
 HID_Write(WriteBuffer, 64 );
 }
 else {
 strcpy(WriteBuffer, "UNKNOWN\r\n");
 HID_Write(WriteBuffer, 64 );
 }
 }
 ClearBuffer(&ReadBuffer,  64 );
 if(receive_block > 2048- 64 ) receive_block = -1;
 }
}
