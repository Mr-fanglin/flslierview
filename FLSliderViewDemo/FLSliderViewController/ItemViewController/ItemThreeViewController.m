//
//  ItemThreeViewController.m
//  FLSliderViewDemo
//
//  Created by FangLin on 17/2/17.
//  Copyright © 2017年 FangLin. All rights reserved.
//

#import "ItemThreeViewController.h"
#import "UIViewController+FLSliderViewController.h"
#import "FLSliderViewController.h"

@interface ItemThreeViewController ()

@end

@implementation ItemThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self setNavTitle:@"ItemThree"];
}

-(void)MenuDidClick
{
    [[self sliderViewController] showLeft];
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
