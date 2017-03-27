//
//  SimplePizzaFactory.m
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/3/27.
//  Copyright © 2017年 huangjw. All rights reserved.
//

#import "SimplePizzaFactory.h"
#import "CheesePizza.h"
#import "PepperoniPizza.h"
#import "ClamPizza.h"
#import "VeggiePizza.h"

@implementation SimplePizzaFactory
- (Pizza *)createPizza:(NSString *)type
{
  Pizza *pizza;
  if ([type isEqualToString:@"cheese"]) {
    pizza = [[CheesePizza alloc] init];
  } else if ([type isEqualToString:@"pepperoni"]) {
    pizza = [[PepperoniPizza alloc] init];
  } else if ([type isEqualToString:@"clam"]) {
    pizza = [[ClamPizza alloc] init];
  } else if ([type isEqualToString:@"veggie"]) {
    pizza = [[VeggiePizza alloc] init];
  }
  return pizza;
}
@end
