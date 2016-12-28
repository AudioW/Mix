//
//  ViewController.swift
//  Mix
//
//  Created by Wouter Janmaat on 05/12/2016.
//  Copyright © 2016 Wouter Janmaat. All rights reserved.
//

import Cocoa


class ViewController: NSViewController, NSTableViewDelegate {

    @IBOutlet weak var tableView: NSTableView!
        
    @IBOutlet weak var Fader: NSSlider!
    
    dynamic var objects: Array<Snapshot> = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.objects.append(Snapshot())
        
        tableView.delegate = self
        
        let indexSet = IndexSet(integer: 0)
        
        tableView.selectRowIndexes(indexSet, byExtendingSelection: false)
        
        view.backgroundColor = NSColor.init(red: 0.33, green: 0.33, blue: 0.33, alpha: 1.0)
        
        self.tableView.backgroundColor = NSColor.lightGray
            }

    override var representedObject: Any? {
        didSet {
        }
    }

    @IBAction func AddSnapshot(_ sender: Any) {
        self.objects.append(Snapshot())
    }
    
    
    @IBAction func RemoveSnapshot(_ sender: Any) {
        
        guard objects.count != 0 else{return}
        
        self.objects.remove(at: tableView.selectedRow)
    }
    
    
    @IBAction func FaderMoved(_ sender: Any) {
    }
    
    func tableViewSelectionDidChange(_ notification: Notification) {
        let table = notification.object as! NSTableView
        let snapShot = objects[table.selectedRow]
        
        Fader.floatValue = snapShot.fadervalue
    }
    
    @IBAction func newDocument(_ sender: NSMenuItem) {
        print("openDocument ViewController")
        
    }
    
    @IBAction func openDocument(_ sender: NSMenuItem) {
        print("openDocument ViewController")

    }
    
    @IBAction func saveDocument(_ sender: NSMenuItem) {
        
        let saveDialog = NSSavePanel();
        saveDialog.begin() { (result: Int) -> Void in
            if result == NSFileHandlingPanelOKButton {
          
            }
        }
    }
}
extension NSView {
    
    var backgroundColor: NSColor? {
        
        get {
            if let colorRef = self.layer?.backgroundColor {
                return NSColor(cgColor: colorRef)
            } else {
                return nil
            }
        }
        
        set {
            self.wantsLayer = true
            self.layer?.backgroundColor = newValue?.cgColor
        }
    }
}

