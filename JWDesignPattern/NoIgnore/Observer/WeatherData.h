//
//  WeatherData.h
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/3/13.
//  Copyright © 2017年 huangjw. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Subject.h"

@interface WeatherData : NSObject <Subject>
- (void)measurementsChanged;
- (void)setMeasurements:(float)temp humidity:(float)humidity pressure:(float)pressure;
@end
