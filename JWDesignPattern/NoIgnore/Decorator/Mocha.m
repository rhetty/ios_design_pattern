//
//  Mocha.m
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/3/26.
//  Copyright © 2017年 huangjw. All rights reserved.
//

#import "Mocha.h"

@implementation Mocha

- (NSString *)desc
{
  return [NSString stringWithFormat:@"%@, Mocha", self.beverage.desc];
}

- (float)cost
{
  return self.beverage.cost + .20;
}
@end
