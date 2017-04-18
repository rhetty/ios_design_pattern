//
//  NullIterator.swift
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/4/18.
//  Copyright © 2017年 huangjw. All rights reserved.
//

import UIKit

class NullIterator: NSObject, Iterator {
  func hasNext() -> Bool {
    return false
  }
  
  func next() -> AnyObject? {
    return nil
  }
  
  func remove() -> Bool {
    return false
  }
}
