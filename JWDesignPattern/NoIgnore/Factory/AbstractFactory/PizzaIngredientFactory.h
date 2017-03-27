//
//  PizzaIngredientFactory.h
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/3/27.
//  Copyright © 2017年 huangjw. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Dough;
@class Sauce;
@class Cheese;
@class Veggies;
@class Pepperoni;
@class Clams;

@interface PizzaIngredientFactory : NSObject
- (Dough *)createDough;
- (Sauce *)createSauce;
- (Cheese *)createCheese;
- (NSArray<Veggies *> *)createVeggies;
- (Pepperoni *)createPepperoni;
- (Clams *)createClams;
@end
