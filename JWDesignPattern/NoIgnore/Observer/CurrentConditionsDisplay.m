//
//  CurrentConditionsDisplay.m
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/3/13.
//  Copyright © 2017年 huangjw. All rights reserved.
//

#import "CurrentConditionsDisplay.h"

@interface CurrentConditionsDisplay()
@property (nonatomic, assign) float temperature;
@property (nonatomic, assign) float humidity;
@property (nonatomic, weak) id<Subject> weatherData;
@end

@implementation CurrentConditionsDisplay
- (instancetype)initWithWeatherData:(id<Subject>)weatherData
{
  self = [super init];
  if (self) {
    self.weatherData = weatherData;
  }
  return self;
}

- (void)update:(float)temp humidity:(float)humidity pressure:(float)pressure
{
  self.temperature = temp;
  self.humidity = humidity;
  NSLog(@"Current conditions updated");
}
@end
