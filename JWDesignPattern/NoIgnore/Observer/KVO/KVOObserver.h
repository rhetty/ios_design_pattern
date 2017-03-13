//
//  KVOObserver.h
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/3/13.
//  Copyright © 2017年 huangjw. All rights reserved.
//

#import <Foundation/Foundation.h>

@class KVOSubject;

@interface KVOObserver : NSObject
- (instancetype)initWithSubject:(KVOSubject *)subject;
@end
