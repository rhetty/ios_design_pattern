//
//  SoldOutState.swift
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/4/21.
//  Copyright © 2017年 huangjw. All rights reserved.
//

import UIKit

class SoldOutState: NSObject, State {
  var gumballMachine: GumballMachine
  
  init(_ gumballMachine: GumballMachine) {
    self.gumballMachine = gumballMachine
  }
  
  func insertQuarter() {
    print("You can't insert a quarter, the machine is sold out")
  }
  
  func ejectQuarter() {
    print("You can't eject, you haven't inserted a quarter yet")
  }
  
  func turnCrank() {
    print("You turned, but there are no gumballs")
  }
  
  func dispense() {
    print("No gumball dispensed")
  }
  
  override var description: String {
    return "Machine is sold out"
  }
}
