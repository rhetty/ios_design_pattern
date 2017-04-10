//
//  Tea.swift
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/4/10.
//  Copyright © 2017年 huangjw. All rights reserved.
//

import UIKit

@objc public class Tea: CoffeineBeverage {
  override func brew() {
    print("Steeping the tea")
  }
  
  override func addCondiments() {
    print("Adding Lemon")
  }
  
  override func customerWantsCondiments() -> Bool {
    return true
  }
}
