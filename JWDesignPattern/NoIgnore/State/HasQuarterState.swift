//
//  HasQuarterState.swift
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/4/21.
//  Copyright © 2017年 huangjw. All rights reserved.
//

import UIKit

class HasQuarterState: NSObject, State {
  var gumballMachine: GumballMachine
  
  init(_ gumballMachine: GumballMachine) {
    self.gumballMachine = gumballMachine
  }
  
  func insertQuarter() {
    print("You can't insert another quarter")
  }
  
  func ejectQuarter() {
    print("Quarter returned")
    gumballMachine.state = gumballMachine.noQuarterState
  }
  
  func turnCrank() {
    print("You turned...")
    let random = arc4random() % 10
    if random == 0 && gumballMachine.count > 1 {
      gumballMachine.state = gumballMachine.winnerState
    } else {
      gumballMachine.state = gumballMachine.soldState
    }
  }
  
  func dispense() {
    print("No gumball dispensed")
  }
  
  override var description: String {
    return "Machine got quarter"
  }
}
