//
//  GumballMachine.swift
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/4/21.
//  Copyright © 2017年 huangjw. All rights reserved.
//

import UIKit

@objc public class GumballMachine: NSObject {
  var soldOutState: State!
  var noQuarterState: State!
  var hasQuarterState: State!
  var soldState: State!
  var winnerState: State! // 新添加的状态
  
  var state: State!
  @objc public var count = 0
  
  @objc public init(numberGumballs: Int) {
    super.init()
    soldOutState = SoldOutState(self)
    noQuarterState = NoQuarterState(self)
    hasQuarterState = HasQuarterState(self)
    soldState = SoldState(self)
    winnerState = WinnerState(self)
    count = numberGumballs
    state = numberGumballs > 0 ? noQuarterState : soldOutState
  }
  
  @objc public func insertQuarter() {
    state.insertQuarter()
  }
  
  @objc public func ejectQuarter() {
    state.ejectQuarter()
  }
  
  @objc public func turnCrank() {
    state.turnCrank()
    state.dispense()
  }
  
  func releaseBall() {
    print("A gumball comes rolling out the slot...")
    if count != 0 {
      count -= 1
    }
  }
  
  public override var description: String {
    return "Inventory: \(count) gumballs \n" + (state as! NSObject).description
  }
}
