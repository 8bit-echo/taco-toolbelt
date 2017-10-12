//
//  Shell.swift
//  Project Cloner
//
//  Created by Matt Dickey on 10/5/17.
//  Copyright © 2017 Matt Dickey. All rights reserved.
//

import Foundation


@discardableResult
public func shell(_ args:String...) -> Int {
    let task = Process()
    task.launchPath = "/usr/bin/env"
    task.arguments = args
    task.launch()
    task.waitUntilExit()
    return Int(task.terminationStatus)
}
