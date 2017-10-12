//
//  UpdateController.swift
//  Project Cloner
//
//  Created by Matt Dickey on 10/4/17.
//  Copyright © 2017 Matt Dickey. All rights reserved.
//

import Cocoa


class UpdateController: NSViewController {

    @IBOutlet weak var projectNameTextField: NSTextField!
    @IBOutlet weak var gitPullCheckBox: NSButton!
    @IBOutlet weak var syncUploadsCheckBox: NSButton!
    @IBOutlet weak var syncDatabaseCheckBox: NSButton!
    @IBOutlet weak var goButton: NSButton!
    
    
    @IBAction func goButtonPressed(_ sender: NSButton) {
        print(projectNameTextField.stringValue)
        print(gitPullCheckBox.state)
        print(syncUploadsCheckBox.state)
        print(syncDatabaseCheckBox.state)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
