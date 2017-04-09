//
//  NoCommand.swift
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/4/9.
//  Copyright © 2017年 huangjw. All rights reserved.
//

import Foundation

public class NoCommand: NSObject, Command {
  public func undo() {
    print("do nothing")
  }

  public func execute() {
    print("do nothing")
  }
}
