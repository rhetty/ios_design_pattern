//
//  PizzaStore.m
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/3/27.
//  Copyright © 2017年 huangjw. All rights reserved.
//

#import "PizzaStore.h"
#import "SimplePizzaFactory.h"
#import "Pizza.h"

@interface PizzaStore()
@property (nonatomic, strong) SimplePizzaFactory *factory;
@end

@implementation PizzaStore
- (instancetype)initWithFactory:(SimplePizzaFactory *)factory
{
  self = [super init];
  if (self) {
    _factory = factory;
  }
  return self;
}

- (Pizza *)orderPizza:(NSString *)type
{
  Pizza *pizza = [self.factory createPizza:type];
  
  [pizza prepare];
  [pizza bake];
  [pizza cut];
  [pizza box];
  
  return pizza;
}
@end
