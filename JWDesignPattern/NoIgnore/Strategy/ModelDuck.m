//
//  ModelDuck.m
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/3/10.
//  Copyright © 2017年 huangjw. All rights reserved.
//

#import "ModelDuck.h"
#import "FlyNoWay.h"
#import "Squeak.h"

@implementation ModelDuck
- (instancetype)init
{
  self = [super init];
  if (self) {
    self.flyBehavior = [[FlyNoWay alloc] init];
    self.quackBehavior = [[Squeak alloc] init];
  }
  return self;
}
@end
