//
//  CoffeineBeverage.swift
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/4/10.
//  Copyright © 2017年 huangjw. All rights reserved.
//

import UIKit

@objc public class CoffeineBeverage: NSObject {
  @objc public func prepareRecipe () {
    boilWater()
    brew()
    pourInCup()
    if customerWantsCondiments() {
      addCondiments()
    }
  }
  
  func brew() {
    
  }
  
  func addCondiments() {
    
  }
  
  func boilWater() {
    print("Boiling water")
  }
  
  func pourInCup() {
    print("Pouring into cup")
  }
  
  // hook
  func customerWantsCondiments() -> Bool {
    return true
  }
}
