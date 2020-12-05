//
//  WindowController.swift
//  DocumentBrowserApp
//
//  Created by Nathan Chmielewski on 12/5/20.
//

import Cocoa

class WindowController: NSWindowController {

    
    @IBOutlet weak var urlField: NSTextField!
    
    override func windowDidLoad() {
        super.windowDidLoad()
        window?.titleVisibility = .hidden
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }

}
