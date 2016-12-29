//
//  ButtonView.swift
//  Mix
//
//  Created by Wouter Janmaat on 29/12/2016.
//  Copyright © 2016 Wouter Janmaat. All rights reserved.
//

import Cocoa

class ButtonView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        StyleKit.drawButton()
    }
    
}
