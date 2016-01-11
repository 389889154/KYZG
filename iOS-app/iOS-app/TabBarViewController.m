//
//  TabBarViewController.m
//  iOS-app
//
//  Created by wey on 16/1/9.
//  Copyright © 2016年 wey. All rights reserved.
//

#import "TabBarViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)addChildViewController:(UIViewController *)childController title:(NSString *)title selectImg:(NSString *)selectImg img:(NSString *)img{
    
    UINavigationController *nvc = [[UINavigationController alloc]initWithRootViewController:childController];
    childController.title = title;
    childController.tabBarItem = [[UITabBarItem alloc]initWithTitle:title image:[UIImage imageNamed:img] selectedImage:[UIImage imageNamed:img]];
    [self addChildViewController:nvc];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
