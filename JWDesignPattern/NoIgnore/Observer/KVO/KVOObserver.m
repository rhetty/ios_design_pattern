//
//  KVOObserver.m
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/3/13.
//  Copyright © 2017年 huangjw. All rights reserved.
//

#import "KVOObserver.h"
#import "KVOSubject.h"

@interface KVOObserver()

@end

@implementation KVOObserver
- (instancetype)initWithSubject:(KVOSubject *)subject;
{
  self = [super init];
  if (self) {
    [subject addObserver:self
              forKeyPath:@"something"
                 options:NSKeyValueObservingOptionOld | NSKeyValueObservingOptionNew
                 context:@"whatever"];
    
  }
  return self;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
  NSLog(@"%@", @{@"keyPath":keyPath,
                 @"object":object,
                 @"change":change,
                 @"context":(__bridge_transfer id)context});
}
@end
