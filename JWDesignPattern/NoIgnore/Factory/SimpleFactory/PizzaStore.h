//
//  PizzaStore.h
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/3/27.
//  Copyright © 2017年 huangjw. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SimplePizzaFactory;
@class Pizza;

@interface PizzaStore : NSObject
- (instancetype)initWithFactory:(SimplePizzaFactory *)factory;
- (Pizza *)orderPizza:(NSString *)type;
@end
