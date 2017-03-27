//
//  FPPizzaStore.m
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/3/27.
//  Copyright © 2017年 huangjw. All rights reserved.
//

#import "FPPizzaStore.h"
#import "Pizza.h"

@implementation FPPizzaStore
- (Pizza *)orderPizza:(NSString *)type
{
  Pizza *pizza;
  
  [pizza prepare];
  [pizza bake];
  [pizza cut];
  [pizza box];
  
  return pizza;
}

- (Pizza *)createPizza:(NSString *)type // abstract
{
  return nil;
}
@end
