//
//  Menu.swift
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/4/17.
//  Copyright © 2017年 huangjw. All rights reserved.
//

import UIKit

@objc public class Menu: MenuComponent {
  var menuComponents = [MenuComponent]()
  var _name: String
  var _desc: String
  
  @objc public init(name: String, desc: String) {
    _name = name
    _desc = desc
  }
  
  override public func add(_ component: MenuComponent) {
    menuComponents.append(component)
  }
  
  override func remove(at index: Int) {
    menuComponents.remove(at: index)
  }
  
  override func child(at index: Int) -> MenuComponent? {
    return menuComponents[index]
  }
  
  override func name() -> String {
    return _name
  }
  
  override func desc() -> String {
    return _desc
  }
  
  override func mprint() {
    print("\n" + _name + ", " + _desc)
    print("-------------------")
    
    var iterator = self.menuComponents.makeIterator()
    while let next = iterator.next() {
      next.mprint()
    }
  }
  
  override func createIterator() -> Iterator {
    return MenuIterator(menuComponents) // 这里书上返回的是组合迭代器，感觉是多余的
  }
}
