//
//  RootViewController.m
//  iOS-app
//
//  Created by wey on 16/1/9.
//  Copyright © 2016年 wey. All rights reserved.
//

#import "RootViewController.h"
#import "TabBarViewController.h"
#import "LeftMenuViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (instancetype)init {

  self = [super init];
    if (self) {
        self.parallaxEnabled = NO;
        self.scaleContentView = YES;
        self.contentViewScaleValue = 0.95;
        self.scaleMenuView = NO;
        self.contentViewShadowEnabled = YES;
        self.contentViewShadowRadius = 4.5;
        self.leftMenuViewController = [[LeftMenuViewController alloc]init];
        self.contentViewController = [[TabBarViewController alloc]init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
