#include "ofMain.h"
#include "testApp.h"
#include "ofConstants.h"
#include "ofxCocoaWindowNibless.h"


//========================================================================
int main( ){
	
	ofxCocoaWindowNibless cocoaWindow;
	
	ofSetupOpenGL(&cocoaWindow, 50, 50, OF_WINDOW);
	ofRunApp( new testApp(&cocoaWindow) );
}
