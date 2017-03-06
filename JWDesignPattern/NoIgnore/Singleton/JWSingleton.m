//
//  JWSingleton.m
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/3/6.
//  Copyright © 2017年 huangjw. All rights reserved.
//

#import "JWSingleton.h"

static id _sharedInstance;

@interface JWSingleton() <NSCopying, NSMutableCopying>

@end

@implementation JWSingleton

/**
 * 用 GCD 实现
 */
+ (instancetype)sharedInstance
{
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    _sharedInstance = [[self alloc] init];
  });
  return _sharedInstance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    _sharedInstance = [super allocWithZone:zone];
  });
  return _sharedInstance;
}

- (id)copyWithZone:(NSZone *)zone
{
  return _sharedInstance;
}

- (id)mutableCopyWithZone:(NSZone *)zone
{
  return _sharedInstance;
}

/**
 * 用互斥锁实现
 */
//+ (instancetype)sharedInstance
//{
//  @synchronized (self) {
//    if (!_sharedInstance) {
//      _sharedInstance = [[self alloc] init];
//    }
//  }
//  return _sharedInstance;
//}
@end
