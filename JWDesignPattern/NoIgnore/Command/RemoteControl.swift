//
//  RemoteControl.swift
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/4/9.
//  Copyright © 2017年 huangjw. All rights reserved.
//

import Foundation

public class RemoteControl: NSObject {
  var onCommands: [Command]
  var offCommands: [Command]
  var undoCommand: Command
  let slotCount = 7
  
  public override init() {
    let noCommand = NoCommand()
    onCommands = [Command](repeating: noCommand, count: slotCount)
    offCommands = [Command](repeating: noCommand, count: slotCount)
    undoCommand = noCommand
  }
  
  public func setCommand(slot: Int, onCommand: Command, offCommand: Command) {
    onCommands[slot] = onCommand
    offCommands[slot] = offCommand
  }
  
  public func onButtonWasPressed(_ slot: Int) {
    onCommands[slot].execute()
    undoCommand = onCommands[slot]
  }
  
  public func offButtonWasPressed(_ slot: Int) {
    offCommands[slot].execute()
    undoCommand = offCommands[slot]
  }
  
  public func undoButtonWasPressed() {
    undoCommand.undo()
  }
}
