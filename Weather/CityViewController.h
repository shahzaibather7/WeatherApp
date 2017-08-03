//
//  CityViewController.h
//  Weather
//
//  Created by Mohammad Shahzaib Ather on 2017-08-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"
#import "DetailedViewController.h"

@interface CityViewController : UIViewController

@property (nonatomic ,strong ) City* city;

- (instancetype)initWithCity : (City*) city;
@end
