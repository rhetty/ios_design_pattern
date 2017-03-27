//
//  SimplePizzaFactory.h
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/3/27.
//  Copyright © 2017年 huangjw. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Pizza;

@interface SimplePizzaFactory : NSObject
- (Pizza *)createPizza:(NSString *)type;
@end
