//
//  Command.swift
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/4/9.
//  Copyright © 2017年 huangjw. All rights reserved.
//

import Foundation

@objc public protocol Command {
  func execute ()
  func undo ()
}
