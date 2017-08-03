//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "City.h"
#import "CityViewController.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // Your code goes here
    // Don't forget to assign the window a rootViewController
    
    NSString *high = @"HIGH";
    NSString *medium = @"MEDIUM";
    NSString *low = @"LOW";
    
// Initializing city instances
    
    City *vancouver = [[City alloc] initWithCloudylevel:low andSunnyLevel:high andName:@"Vancouver" andSnowLevel:low];
    City *calgary = [[City alloc] initWithCloudylevel:high andSunnyLevel:medium andName:@"Calgary"andSnowLevel:high ];
    City *toronto = [[City alloc] initWithCloudylevel:medium andSunnyLevel:high andName:@"Toronto" andSnowLevel:medium];
    City *dubai = [[City alloc] initWithCloudylevel:low andSunnyLevel:high andName:@"Dubai" andSnowLevel:low ];
    
// Initializing view controller instances
    
    CityViewController *vancouverVC = [[CityViewController alloc] initWithCity:vancouver];
    CityViewController *calgaryVC = [[CityViewController alloc] initWithCity:calgary];
    CityViewController *torontoVC = [[CityViewController alloc] initWithCity:toronto];
    CityViewController *dubaiVC = [[CityViewController alloc] initWithCity:dubai];
    
    dubaiVC.city = dubai;
    torontoVC.city = toronto;
    calgaryVC.city = calgary;
    vancouverVC.city = vancouver;
    
    
    
// Initializing tabController and navController
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
 
    
    NSMutableArray *navViewControllers = [[NSMutableArray alloc]init];
    
    UINavigationController *navControllerVan = [[UINavigationController alloc] initWithRootViewController:vancouverVC];
    navControllerVan.title = @"Vancouver";
    [navViewControllers addObject:navControllerVan];
    
    UINavigationController *navControllerCal = [[UINavigationController alloc] initWithRootViewController:calgaryVC];
    navControllerCal.title = @"Calgary";
    [navViewControllers addObject:navControllerCal];
    
    UINavigationController *navControllerTor = [[UINavigationController alloc] initWithRootViewController:torontoVC];
    navControllerTor.title = @"Toronto";
    [navViewControllers addObject:navControllerTor];
    
    UINavigationController *navControllerDub = [[UINavigationController alloc] initWithRootViewController: dubaiVC];
    navControllerDub.title = @"Dubai";

    [navViewControllers addObject:navControllerDub];


  vancouverVC.title = vancouver.name;
    calgaryVC.title = calgary.name;
    torontoVC.title = toronto.name;
      dubaiVC.title = dubai.name;
    
    
    
    
    
    
    
    
    
    tabBarController.viewControllers = navViewControllers;
    
    self.window.rootViewController = tabBarController;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
