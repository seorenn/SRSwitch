//
//  ViewController.swift
//  SRSwitchMacDemo
//
//  Created by Heeseung Seo on 2017. 1. 11..
//  Copyright © 2017년 Seorenn. All rights reserved.
//

import Cocoa
import SRSwitch

class ViewController: NSViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()

    prepareTimerSwitch()
  }

  override var representedObject: Any? {
    didSet {
    // Update the view, if already loaded.
    }
  }

  // MARK: - Timer Switch
  
  var timerSwitch: SRTimerSwitch!
  @IBOutlet weak var timerSwitchStatusLabel: NSTextField!
  
  func prepareTimerSwitch() {
    timerSwitch = SRTimerSwitch(lifeInterval: 2)
    timerSwitch.onBirth = {
      self.timerSwitchBirth()
    }
    timerSwitch.onDeath = {
      self.timerSwitchDeath()
    }
    
    timerSwitchStatusLabel.stringValue = "OFF (Standby)"
  }
  
  @IBAction func pressedTimerSwitchTrigger(_ sender: Any) {
    timerSwitch.trigger()
  }
  
  func timerSwitchBirth() {
    timerSwitchStatusLabel.stringValue = "ON \(Date())"
  }
  
  func timerSwitchDeath() {
    timerSwitchStatusLabel.stringValue = "OFF \(Date())"
  }

}

