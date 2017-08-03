//
//  City.m
//  Weather
//
//  Created by Mohammad Shahzaib Ather on 2017-08-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City

- (instancetype)initWithCloudylevel : (NSString*) cL andSunnyLevel : (NSString*) sL andName : (NSString*) cityName andSnowLevel: (NSString*) snowLevel{
{
    self = [super init];
    if (self) {
        self.cloudLevel = cL;
        self.sunnyLevel = sL;
        self.name = cityName;
        self.snowLevel = snowLevel;
        
    }
    return self;
}
}

@end
