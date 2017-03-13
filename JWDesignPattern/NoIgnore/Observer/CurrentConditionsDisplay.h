//
//  CurrentConditionsDisplay.h
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/3/13.
//  Copyright © 2017年 huangjw. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"
#import "Subject.h"

@interface CurrentConditionsDisplay : NSObject <Observer>
- (instancetype)initWithWeatherData:(id<Subject>)weatherData;
@end
