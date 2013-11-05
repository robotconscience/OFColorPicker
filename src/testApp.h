#pragma once

#include "ofMain.h"
#include "ofxCocoaWindowNibless.h"

class testApp : public ofBaseApp{

	public:
        testApp(ofxCocoaWindowNibless * window){
            cocoaWindow = window;
            mouseX = mouseY = 0;
        }
		void setup();
		void update();
		void draw();

		void keyPressed(int key);
		void keyReleased(int key);
		void mouseMoved(int x, int y );
		void mouseDragged(int x, int y, int button);
		void mousePressed(int x, int y, int button);
		void mouseReleased(int x, int y, int button);
		void windowResized(int w, int h);
		void dragEvent(ofDragInfo dragInfo);
		void gotMessage(ofMessage msg);
    
        ofxCocoaWindowNibless * cocoaWindow;
    
        void mouseMovedOutside( ofMouseEventArgs & e );
        void mouseDraggedOutside( ofMouseEventArgs & e );
        void mousePressedOutside( ofMouseEventArgs & e );
        void mouseReleasedOutside( ofMouseEventArgs & e );
};
