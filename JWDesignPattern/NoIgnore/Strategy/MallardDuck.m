//
//  MallardDuck.m
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/3/10.
//  Copyright © 2017年 huangjw. All rights reserved.
//

#import "MallardDuck.h"
#import "FlyWithWings.h"
#import "Quack.h"

@implementation MallardDuck
- (instancetype)init
{
  self = [super init];
  if (self) {
    self.flyBehavior = [[FlyWithWings alloc] init];
    self.quackBehavior = [[Quack alloc] init];
  }
  return self;
}
@end
