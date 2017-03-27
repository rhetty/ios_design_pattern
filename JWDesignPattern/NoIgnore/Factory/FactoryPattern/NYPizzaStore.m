//
//  NYPizzaStore.m
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/3/27.
//  Copyright © 2017年 huangjw. All rights reserved.
//

#import "NYPizzaStore.h"
#import "NYStyleClamPizza.h"
#import "NYStyleCheesePizza.h"
#import "NYStyleVeggiePizza.h"
#import "NYStylePepperoniPizza.h"

@implementation NYPizzaStore
- (Pizza *)createPizza:(NSString *)type // abstract
{
  Pizza *pizza;
  if ([type isEqualToString:@"cheese"]) {
    pizza = [[NYStyleCheesePizza alloc] init];
  } else if ([type isEqualToString:@"pepperoni"]) {
    pizza = [[NYStylePepperoniPizza alloc] init];
  } else if ([type isEqualToString:@"clam"]) {
    pizza = [[NYStyleClamPizza alloc] init];
  } else if ([type isEqualToString:@"veggie"]) {
    pizza = [[NYStyleVeggiePizza alloc] init];
  }
  return pizza;
}
@end
