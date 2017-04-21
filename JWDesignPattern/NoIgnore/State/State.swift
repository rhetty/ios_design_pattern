//
//  State.swift
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/4/21.
//  Copyright © 2017年 huangjw. All rights reserved.
//

import UIKit

protocol State {
  func insertQuarter()
  func ejectQuarter()
  func turnCrank()
  func dispense()
}
