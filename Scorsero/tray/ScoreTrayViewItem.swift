//
//  ScoreTrayViewItem.swift
//  Scorsero
//
//  Created by dmi3coder on 11/14/17.
//  Copyright © 2017 Scorsero. All rights reserved.
//

import Cocoa

class ScoreTrayViewItem: NSCollectionViewItem {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func clickMe(_ sender: NSView) {
        sender.layer?.backgroundColor = NSColor.green.cgColor
    }
}
