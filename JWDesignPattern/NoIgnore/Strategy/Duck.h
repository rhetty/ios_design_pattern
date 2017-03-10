//
//  Duck.h
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/3/10.
//  Copyright © 2017年 huangjw. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlyBehavior.h"
#import "QuackBehavior.h"

@interface Duck : NSObject
@property (nonatomic, strong) id<FlyBehavior> flyBehavior;
@property (nonatomic, strong) id<QuackBehavior> quackBehavior;

- (void)performFly;
- (void)performQuack;
@end
