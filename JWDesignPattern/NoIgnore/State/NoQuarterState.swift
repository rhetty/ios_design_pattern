//
//  NoQuarterState.swift
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/4/21.
//  Copyright © 2017年 huangjw. All rights reserved.
//

import UIKit

class NoQuarterState: NSObject, State {
  var gumballMachine: GumballMachine
  
  init(_ gumballMachine: GumballMachine) {
    self.gumballMachine = gumballMachine
  }
  
  func insertQuarter() {
    print("You inserted a quarter")
    gumballMachine.state = gumballMachine.hasQuarterState
  }
  
  func ejectQuarter() {
    print("You haven't inserted a quarter")
  }
  
  func turnCrank() {
    print("You turned, but there is no quarter")
  }
  
  func dispense() {
    print("You need to pay first")
  }
  
  override var description: String {
    return "Machine is waiting for quarter"
  }
}
