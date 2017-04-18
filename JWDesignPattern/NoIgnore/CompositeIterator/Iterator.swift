//
//  Iterator.swift
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/4/18.
//  Copyright © 2017年 huangjw. All rights reserved.
//

import UIKit

protocol Iterator {
  func hasNext() -> Bool
  func next() -> AnyObject?
  func remove() -> Bool
}
