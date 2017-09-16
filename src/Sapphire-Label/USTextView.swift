//
//  USTextView.swift
//  Sapphire-Label
//
//  Created by Michael Lawrence on 9/13/17.
//  Copyright © 2017 Aurlaw. All rights reserved.
//
import Foundation
import Cocoa


typealias TextViewDidSelect = (USTextView) -> Void

class USTextView: NSTextView {

    var didSelectCallback: (TextViewDidSelect)?
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
    }
    
    override func mouseDown(with event: NSEvent) {
        super.mouseDown(with: event)
        Swift.print(event.clickCount)
        if event.clickCount > 1 {
            Swift.print("callback")
            didSelectCallback?(self)
            
        }
        
    }
}
