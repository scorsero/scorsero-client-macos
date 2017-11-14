//
//  StatusBarController.swift
//  Scorsero
//
//  Created by dmi3coder on 11/13/17.
//  Copyright © 2017 Scorsero. All rights reserved.
//

import Cocoa

class StatusBarController: NSObject, NSCollectionViewDataSource, NSCollectionViewDelegate {

    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    
    @IBOutlet weak var statusMenu: NSMenu!
    
    @IBOutlet weak var trayViewMenu: NSMenuItem!
    
    @IBOutlet weak var testView: NSView!
    
    @IBOutlet weak var collectionView: NSCollectionView!
    
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    // 3
    func collectionView(_ itemForRepresentedObjectAtcollectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        
        // 4
        let item = collectionView.makeItem(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "ScoreTrayViewItem"), for: indexPath)
        guard let collectionViewItem = item as? ScoreTrayViewItem else {return item}
        return item
    }
    override func awakeFromNib() {
        statusItem.title = "Scorsero"
        statusItem.menu = statusMenu
        trayViewMenu.view = testView
        
    }
    
}
