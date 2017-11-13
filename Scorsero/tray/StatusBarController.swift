//
//  StatusBarController.swift
//  Scorsero
//
//  Created by dmi3coder on 11/13/17.
//  Copyright © 2017 Scorsero. All rights reserved.
//

import Cocoa

class StatusBarController: NSObject {
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    
    @IBOutlet weak var statusMenu: NSMenu!
    
    @IBOutlet weak var trayViewMenu: NSMenuItem!
    
    @IBOutlet weak var testView: NSImageView!
    
    override func awakeFromNib() {
        statusItem.title = "Scorsero"
        statusItem.menu = statusMenu
        trayViewMenu.view = testView
        
    }
    
}
