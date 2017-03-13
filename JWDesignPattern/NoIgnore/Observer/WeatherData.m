//
//  WeatherData.m
//  JWDesignPattern
//
//  Created by 黄嘉伟 on 2017/3/13.
//  Copyright © 2017年 huangjw. All rights reserved.
//

#import "WeatherData.h"
#import "Observer.h"

@interface WeatherData()
@property (nonatomic, strong) NSMutableArray *observers;

@property (nonatomic, assign) float temp;
@property (nonatomic, assign) float humidity;
@property (nonatomic, assign) float pressure;
@end

@implementation WeatherData

- (instancetype)init
{
  self = [super init];
  if (self) {
    _observers = [NSMutableArray array];
  }
  return self;
}

#pragma mark - Subject Protocol

- (void)registerObserver:(id<Observer>)observer
{
  [self.observers addObject:observer];
}

- (void)removeObserver:(id<Observer>)observer
{
  [self.observers removeObject:observer];
}

- (void)notifyObservers
{
  for (id<Observer> observer in self.observers) {
    [observer update:self.temp humidity:self.humidity pressure:self.pressure];
  }
}

#pragma mark - 

- (void)measurementsChanged
{
  [self notifyObservers];
}

- (void)setMeasurements:(float)temp humidity:(float)humidity pressure:(float)pressure
{
  self.temp = temp;
  self.humidity = humidity;
  self.pressure = pressure;
  [self measurementsChanged];
}

@end
