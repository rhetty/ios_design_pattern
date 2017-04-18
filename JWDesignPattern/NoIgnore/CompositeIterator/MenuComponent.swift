//
//  MenuComponent.swift
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/4/17.
//  Copyright © 2017年 huangjw. All rights reserved.
//

import UIKit

@objc public class MenuComponent: NSObject {
  
  func name() -> String {
    return ""
  }
  
  func desc() -> String {
    return ""
  }
  
  func price() -> Double? {
    return nil
  }
  
  func isVegetarian() -> Bool? {
    return nil
  }
  
  func mprint() {
    
  }
  
  @objc public func add(_ component: MenuComponent) {
    
  }
  
  func remove(at index: Int) {
    
  }
  
  func child(at index: Int) -> MenuComponent? {
    return nil
  }
  
  func createIterator() -> Iterator {
    return NullIterator()
  }
		
}
