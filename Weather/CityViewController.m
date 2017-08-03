//
//  CityViewController.m
//  Weather
//
//  Created by Mohammad Shahzaib Ather on 2017-08-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"



@interface CityViewController ()

@property (nonatomic, weak) UIButton *button;

@end

@implementation CityViewController

- (instancetype)initWithCity : (City*) city
{
    self = [super init];
    if (self) {
        _city = city;
    }
    return self;
}

-(void)showWeatherDetails{
  //  self.view.backgroundColor = [UIColor redColor];
    DetailedViewController *showDetailsControllers = [[DetailedViewController alloc]initWithCity:self.city];

    [self.navigationController pushViewController:showDetailsControllers animated:NO];

    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
// Initializing and creating the button
    
    UIButton *button = [[UIButton alloc]init];
    [button setTitle:@"Detailed View" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(showWeatherDetails) forControlEvents:UIControlEventTouchUpInside];
    button.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:button];
    
    NSLayoutConstraint *rightConstraint = [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view  attribute:NSLayoutAttributeTrailing multiplier: 1.0 constant:50];
    NSLayoutConstraint *bottomConstraint = [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier: 1.0 constant:-300];
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeWidth multiplier: 1 constant: 100];
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100];
    
    
    rightConstraint.active = YES;
    bottomConstraint.active = YES;
    widthConstraint.active = YES;
    heightConstraint.active = YES;

    
    
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
