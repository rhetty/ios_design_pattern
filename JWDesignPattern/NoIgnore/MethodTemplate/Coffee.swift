//
//  Coffee.swift
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/4/10.
//  Copyright © 2017年 huangjw. All rights reserved.
//

import UIKit

@objc public class Coffee: CoffeineBeverage {
  override func brew() {
    print("Dripping Coffee through filter")
  }
  
  override func addCondiments() {
    print("Adding Sugar and Milk")
  }
  
  override func customerWantsCondiments() -> Bool {
    return false
  }
}
