//
//  MenuIterator.swift
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/4/18.
//  Copyright © 2017年 huangjw. All rights reserved.
//

import UIKit

// 组合迭代器
class MenuIterator: NSObject, Iterator {
  var menuComponents = [MenuComponent]()
  var position = 0
  
  init(_ menuComponents: [MenuComponent]) {
    self.menuComponents = menuComponents
  }
  
  func hasNext() -> Bool {
    return position < menuComponents.count
  }
  
  func next() -> AnyObject? {
    if hasNext() {
      let ret = menuComponents[position]
      position += 1
      return ret
    } else {
      return nil
    }
  }
  
  func remove() -> Bool {
    return false
  }
}
