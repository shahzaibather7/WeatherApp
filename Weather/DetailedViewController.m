//
//  DetailedViewController.m
//  Weather
//
//  Created by Mohammad Shahzaib Ather on 2017-08-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "DetailedViewController.h"

@interface DetailedViewController ()


@end




@implementation DetailedViewController

- (instancetype)initWithCity : (City*) city
{
    self = [super init];
    if (self) {
        _city = city;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];

// CLOUD LABEL
    
    
    UILabel *cloudLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 90, 400, 40)];
    [cloudLabel setBackgroundColor:[UIColor clearColor]];
    [cloudLabel setText:@"THE CLOUD LEVEL FOR TODAY IS : "];
    [cloudLabel setFont:[UIFont fontWithName:@"Arial" size:16]];
    [cloudLabel setFont:[UIFont boldSystemFontOfSize:16]];
    [self.view addSubview:cloudLabel];
  
    UILabel *cloudLabelLevel = [[UILabel alloc]initWithFrame:CGRectMake(10, 130, 200, 40)];
    [cloudLabelLevel setBackgroundColor:[UIColor clearColor]];
    [cloudLabelLevel setText:self.city.cloudLevel];
    [self.view addSubview:cloudLabelLevel];
    [cloudLabelLevel setFont:[UIFont fontWithName:@"Arial" size:16]];
    [cloudLabelLevel setFont:[UIFont boldSystemFontOfSize:16]];
//SUNNY LEVEL
    
    UILabel *sunnyLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 200, 400, 40)];
    [sunnyLabel setBackgroundColor:[UIColor clearColor]];
    [sunnyLabel setText:@"THE SUNNY LEVEL FOR TODAY IS : "];
    [sunnyLabel setFont:[UIFont fontWithName:@"Arial" size:16]];
    [sunnyLabel setFont:[UIFont boldSystemFontOfSize:16]];
    
    [self.view addSubview:sunnyLabel];
    
    UILabel *sunnyLabelLevel = [[UILabel alloc]initWithFrame:CGRectMake(10, 250, 200, 40)];
    [sunnyLabelLevel setBackgroundColor:[UIColor clearColor]];
    [sunnyLabelLevel setText:self.city.sunnyLevel];
    [self.view addSubview:sunnyLabelLevel];
    [sunnyLabelLevel setFont:[UIFont fontWithName:@"Arial" size:16]];
    [sunnyLabelLevel setFont:[UIFont boldSystemFontOfSize:16]];
    
//SNOW LEVEL
    
    UILabel *snowLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 300, 300, 40)];
    [snowLabel setBackgroundColor:[UIColor clearColor]];
    [snowLabel setText:@"THE SNOW LEVEL FOR TODAY IS : "];
    [snowLabel setFont:[UIFont fontWithName:@"Arial" size:16]];
    [snowLabel setFont:[UIFont boldSystemFontOfSize:16]];
    
    [self.view addSubview:snowLabel];
    
    UILabel *snowLabelLevel = [[UILabel alloc]initWithFrame:CGRectMake(10, 350, 200, 40)];
    [snowLabelLevel setBackgroundColor:[UIColor clearColor]];
    [snowLabelLevel setText:self.city.snowLevel];
    [self.view addSubview:snowLabelLevel];
    [snowLabelLevel setFont:[UIFont fontWithName:@"Arial" size:16]];
    [snowLabelLevel setFont:[UIFont boldSystemFontOfSize:16]];
    
    // Do any additional setup after loading the view.
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

@end
