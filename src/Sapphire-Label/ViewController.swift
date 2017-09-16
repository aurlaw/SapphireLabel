//
//  ViewController.swift
//  Sapphire-Label
//
//  Created by Michael Lawrence on 9/13/17.
//  Copyright © 2017 Aurlaw. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    
    @IBOutlet weak var txtView: NSScrollView!
    @IBOutlet weak var destView: NSBox!
    @IBOutlet var txtViewItem: USTextView!
    
    var currentTextView: USTextView!
    var didTextViewDidSelectCallback: TextViewDidSelect!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        didTextViewDidSelectCallback = { (textView) in
            self.currentTextView = textView
            Swift.print(self.currentTextView)
        }
        txtViewItem.didSelectCallback = didTextViewDidSelectCallback
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    override func mouseDown(with event: NSEvent) {
        //print(event)
        
    }
    override func mouseDragged(with event: NSEvent) {
        //print(event)
        
        
        NSCursor.closedHand().set()
        guard let textField = currentTextView else {
            return
        }
        textField.superview?.superview?.frame.origin.x += event.deltaX
        textField.superview?.superview?.frame.origin.y -= event.deltaY
    
//        NSCursor.closedHand().set()
//        
//        guard let textView = currentTextView else {
//            return
//        }
        
//        textField.frame.origin.x += theEvent.deltaX
//        textField.frame.origin.y -= theEvent.deltaY
        
    }


}

