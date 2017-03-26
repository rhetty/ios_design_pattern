//
//  CondimentDecorator.m
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/3/26.
//  Copyright © 2017年 huangjw. All rights reserved.
//

#import "CondimentDecorator.h"

@implementation CondimentDecorator
+ (instancetype)condimentWithBeverage:(Beverage *)beverage
{
  CondimentDecorator *instance = [[self alloc] init];
  instance->_beverage = beverage;
  return instance;
}
@end
