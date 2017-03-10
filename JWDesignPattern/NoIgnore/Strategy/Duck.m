//
//  Duck.m
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/3/10.
//  Copyright © 2017年 huangjw. All rights reserved.
//

#import "Duck.h"

@implementation Duck

- (void)performFly
{
  [self.flyBehavior fly];
}

- (void)performQuack
{
  [self.quackBehavior quack];
}
@end
