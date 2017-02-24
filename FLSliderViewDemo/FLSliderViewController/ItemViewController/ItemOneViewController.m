//
//  ItemOneViewController.m
//  FLSliderViewDemo
//
//  Created by FangLin on 17/2/17.
//  Copyright © 2017年 FangLin. All rights reserved.
//

#import "ItemOneViewController.h"
#import "UIViewController+FLSliderViewController.h"
#import "FLSliderViewController.h"

@interface ItemOneViewController ()

@end

@implementation ItemOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self setNavTitle:@"ItemOne"];
}

-(void)MenuDidClick
{
    [[self sliderViewController] showLeft];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
