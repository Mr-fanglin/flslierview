//
//  UIViewController+FLSliderViewController.m
//  FLSliderViewController
//
//  Created by FangLin on 16/11/14.
//  Copyright © 2016年 FangLin. All rights reserved.
//

#import "UIViewController+FLSliderViewController.h"
#import "FLSliderViewController.h"

@implementation UIViewController (FLSliderViewController)

- (FLSliderViewController *)sliderViewController
{
    UIViewController *viewcontroller = (UIViewController *)self.parentViewController;
    while (viewcontroller) {
        if ([viewcontroller isKindOfClass:[FLSliderViewController class]]) {
            return (FLSliderViewController *)viewcontroller;
        }else if (viewcontroller.parentViewController && viewcontroller.parentViewController!=viewcontroller){
            viewcontroller = (UIViewController *)viewcontroller.parentViewController;
        }else{
            return nil;
        }
    }
    return nil;
}

@end
