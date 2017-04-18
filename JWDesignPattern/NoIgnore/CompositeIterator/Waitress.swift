//
//  Waitress.swift
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/4/18.
//  Copyright © 2017年 huangjw. All rights reserved.
//

import UIKit

@objc public class Waitress: NSObject {
  var allMenus: MenuComponent
  
  @objc public init(_ allMenus: MenuComponent) {
    self.allMenus = allMenus
  }
  
  @objc public func printMenu() {
    allMenus.mprint()
  }
  
  @objc public func printVegetarianMenu() {
    let iterator = CompositeIterator(allMenus.createIterator())
    print("\nVEGETARIAN MENU\n----")
    while iterator.hasNext() {
      let menuComponent = iterator.next()! as! MenuComponent
      if let v = menuComponent.isVegetarian() {
        if v {
          menuComponent.mprint()
        }
      }
    }
  }
}
