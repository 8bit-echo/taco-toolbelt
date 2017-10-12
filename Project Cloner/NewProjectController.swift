//
//  NewProjectController.swift
//  Project Cloner
//
//  Created by Matt Dickey on 10/4/17.
//  Copyright © 2017 Matt Dickey. All rights reserved.
//

import Cocoa

class NewProjectController: NSViewController {
    @IBOutlet weak var projectNameTextField: NSTextField!
    @IBOutlet weak var gitRepoTextField: NSTextField!
    @IBOutlet weak var cloneDirTextField: NSTextField!
    @IBOutlet weak var goButton: NSButton!
    @IBOutlet weak var cloneDirPathView: NSPathControl!
    @IBOutlet weak var console: NSTextField!
    
    func log(_ value: String){
        console.stringValue += "\n \(value)"
    }
    
    @IBAction func cloneDirBrowseButtonPressed(_ sender: Any) {
        let openPanel : NSOpenPanel = NSOpenPanel()
        openPanel.allowsMultipleSelection = false
        openPanel.canChooseFiles = false
        openPanel.canChooseDirectories = true
        openPanel.runModal()
        
        if openPanel.url != nil {
            cloneDirPathView.url = openPanel.url
        }
        
    }
    
    
    @IBAction func goButtonPressed(_ sender: Any) {
        let target = cloneDirPathView.url!.absoluteString.replacingOccurrences(of: "file://", with: "")
        print("target: \(target)")
        shell("cd",  "\(target)")
        print("pwd:")
        shell("pwd")
//        shell("git", "clone", gitRepoTextField.stringValue)
        print("done")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        let userHome = NSHomeDirectory()
        cloneDirPathView.url = URL(fileURLWithPath: "file:///\(userHome)", isDirectory: true)
    }
    
}
