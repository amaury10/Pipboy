#include "ihm_objects.h"
#include "ihm_resources.h"

extern char * ReadBuffer, WriteBuffer;

//--------------------- User code ---------------------//

//----------------- End of User code ------------------//

// Event Handlers
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