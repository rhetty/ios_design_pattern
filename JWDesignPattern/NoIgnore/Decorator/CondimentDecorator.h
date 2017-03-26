//
//  CondimentDecorator.h
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/3/26.
//  Copyright © 2017年 huangjw. All rights reserved.
//

#import "Beverage.h"

@interface CondimentDecorator : Beverage
@property (nonatomic, strong, readonly) Beverage *beverage;
+ (instancetype)condimentWithBeverage:(Beverage *)beverage;
@end
