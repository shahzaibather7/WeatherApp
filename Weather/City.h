//
//  City.h
//  Weather
//
//  Created by Mohammad Shahzaib Ather on 2017-08-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (nonatomic , strong) NSString *cloudLevel;
@property (nonatomic , strong) NSString *sunnyLevel;
@property (nonatomic , strong) NSString *name;
@property (nonatomic , strong) NSString *snowLevel;

- (instancetype)initWithCloudylevel : (NSString*) cL andSunnyLevel : (NSString*) sL andName : (NSString*) cityName andSnowLevel: (NSString*) snowLevel;

@end
