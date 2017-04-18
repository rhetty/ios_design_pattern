//
//  CompositeIterator.swift
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/4/18.
//  Copyright © 2017年 huangjw. All rights reserved.
//

import UIKit

// 组合迭代器
class CompositeIterator: NSObject, Iterator {
  var stack = [Iterator]()
  
  init(_ iterator: Iterator) {
    stack.append(iterator)
  }
  
  func hasNext() -> Bool {
    if stack.isEmpty {
      return false
    } else {
      let iterator = stack.last!
      if !iterator.hasNext() {
        stack.removeLast()
        return hasNext()
      } else {
        return true
      }
    }
  }
  
  func next() -> AnyObject? {
    if hasNext() {
      let iterator = stack.last!
      let component: MenuComponent = iterator.next() as! MenuComponent
      if component is Menu {
        stack.append(component.createIterator())
      }
      return component
    } else {
      return nil
    }
  }
  
  func remove() -> Bool {
    return false
  }
}
