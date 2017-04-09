//
//  LightOffCommand.swift
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/4/9.
//  Copyright © 2017年 huangjw. All rights reserved.
//

import Foundation

public class LightOffCommand: NSObject, Command {
  let light: Light
  
  public init(light: Light) {
    self.light = light
  }
  
  public func execute() {
    light.off()
  }
  
  public func undo() {
    light.on()
  }
}
