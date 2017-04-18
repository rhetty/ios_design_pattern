//
//  MenuItem.swift
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/4/17.
//  Copyright © 2017年 huangjw. All rights reserved.
//

import UIKit

@objc public class MenuItem: MenuComponent {
  var _name: String
  var _desc: String
  var _isVegetarian: Bool
  var _price: Double
  
  @objc public init(name: String, desc: String, isVegetarian: Bool, price: Double) {
    _name = name
    _desc = desc
    _isVegetarian = isVegetarian
    _price = price
  }
  
  override func name() -> String {
    return _name
  }
  
  override func desc() -> String {
    return _desc
  }
  
  override func isVegetarian() -> Bool? {
    return _isVegetarian
  }
  
  override func price() -> Double? {
    return _price
  }
  
  override func mprint() {
    print(_name + (_isVegetarian ? "(V), " : ", ") + String(_price))
    print("    -- " + _desc)
  }
  
  override func createIterator() -> Iterator {
    return NullIterator()
  }
}
