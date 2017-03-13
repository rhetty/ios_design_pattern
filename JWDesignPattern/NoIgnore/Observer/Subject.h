//
//  Subject.h
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/3/13.
//  Copyright © 2017年 huangjw. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Observer;

@protocol Subject <NSObject>
- (void)registerObserver:(id<Observer>)observer;
- (void)removeObserver:(id<Observer>)observer;
- (void)notifyObservers;
@end
