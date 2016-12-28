//
//  AppDelegate.swift
//  Mix
//
//  Created by Wouter Janmaat on 05/12/2016.
//  Copyright © 2016 Wouter Janmaat. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    @IBAction func newDocument(sender: NSMenuItem) {
        print("openDocument ViewController")
        
    }
    @IBAction func openDocument(sender: NSMenuItem) {
        print("openDocument ViewController")
        
    }
}

