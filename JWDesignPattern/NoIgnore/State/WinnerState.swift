//
//  WinnerState.swift
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/4/21.
//  Copyright © 2017年 huangjw. All rights reserved.
//

import UIKit

class WinnerState: NSObject, State {
  var gumballMachine: GumballMachine
  
  init(_ gumballMachine: GumballMachine) {
    self.gumballMachine = gumballMachine
  }
  
  func insertQuarter() {
    print("Please wait, we're already giving you a gumball")
  }
  
  func ejectQuarter() {
    print("Sorry, you already turned the crank")
  }
  
  func turnCrank() {
    print("Turning twice doesn't get you another gumball")
  }
  
  // 上面跟 SoldState 一样
  
  func dispense() {
    print("YOU'RE a winner! You get two gumballs for your quarter")
    gumballMachine.releaseBall()
    if gumballMachine.count == 0 {
      gumballMachine.state = gumballMachine.soldOutState
    } else {
      gumballMachine.releaseBall()
      if gumballMachine.count > 0 {
        gumballMachine.state = gumballMachine.noQuarterState
      } else {
        print("Oops, out of gumballs!")
        gumballMachine.state = gumballMachine.soldOutState
      }
    }
  }
  
  override var description: String {
    return "Machine is about to give 2 gumballs"
  }
}
