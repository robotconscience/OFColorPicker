#include "testApp.h"
#import <AppKit/AppKit.h>

ofColor color;

NSColor *MyColorAtScreenCoordinate(CGDirectDisplayID displayID, NSInteger x, NSInteger y) {
    CGImageRef image = CGDisplayCreateImageForRect(displayID, CGRectMake(x, y, 1, 1));
    NSBitmapImageRep *bitmap = [[NSBitmapImageRep alloc] initWithCGImage:image];
    CGImageRelease(image);
    NSColor *color = [bitmap colorAtX:0 y:0];
    [bitmap release];
    
    return color;
}

//--------------------------------------------------------------
void testApp::setup(){
    cocoaWindow->setCaptureExternalMouseEvents(true);
	cocoaWindow->setUpdateRate(0);
    cocoaWindow->setWindowLevel(6);
    
    registerMouseOutsideEvents(this);
}

//--------------------------------------------------------------
void testApp::update(){
}

//--------------------------------------------------------------
void testApp::draw(){
    ofBackground(color);
    cout << color << endl;
}

//--------------------------------------------------------------
void testApp::keyPressed(int key){

}

//--------------------------------------------------------------
void testApp::keyReleased(int key){

}

//--------------------------------------------------------------
void testApp::mouseMoved(int x, int y ){
    
    NSColor * c = MyColorAtScreenCoordinate(0, ofGetWindowPositionX() + mouseX, ofGetWindowPositionY() + mouseY);
    c = [c colorUsingColorSpace:[NSColorSpace deviceRGBColorSpace]];
    color = ofColor( 255.0 * [c redComponent], 255.0 * [c greenComponent], 255.0 * [c blueComponent]);
}

//--------------------------------------------------------------
void testApp::mouseMovedOutside( ofMouseEventArgs & e ){
    cout<<"out"<<endl;
    
    NSColor * c = MyColorAtScreenCoordinate(0, e.x, e.y);
    c = [c colorUsingColorSpace:[NSColorSpace deviceRGBColorSpace]];
    color = ofColor( 255.0 * [c redComponent], 255.0 * [c greenComponent], 255.0 * [c blueComponent]);
    cout << color << endl;
}

//--------------------------------------------------------------
void testApp::mouseDraggedOutside( ofMouseEventArgs & e ){
    cout<<"out"<<endl;
};

//--------------------------------------------------------------
void testApp::mousePressedOutside( ofMouseEventArgs & e ){
    cout<<"out"<<endl;
};

//--------------------------------------------------------------
void testApp::mouseReleasedOutside( ofMouseEventArgs & e ){
    cout<<"out"<<endl;
};

//--------------------------------------------------------------
void testApp::mouseDragged(int x, int y, int button){

}

//--------------------------------------------------------------
void testApp::mousePressed(int x, int y, int button){

}

//--------------------------------------------------------------
void testApp::mouseReleased(int x, int y, int button){

}

//--------------------------------------------------------------
void testApp::windowResized(int w, int h){

}

//--------------------------------------------------------------
void testApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
void testApp::dragEvent(ofDragInfo dragInfo){ 

}
