//
//  SecondTabBarViewController.m
//  TabBarDemo
//
//  Created by boo sun on 2016/10/10.
//  Copyright © 2016年 张新平. All rights reserved.
//

#import "SecondTabBarViewController.h"
#import "SecondOneViewController.h"
#import "SecondTwoViewController.h"

@interface SecondTabBarViewController ()

@end

@implementation SecondTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SecondOneViewController * oneVC = [[SecondOneViewController alloc] init];
    UINavigationController * oneNav = [[UINavigationController alloc] initWithRootViewController:oneVC];
    oneVC.title = @"second1";
    
    SecondTwoViewController * twoVC = [[SecondTwoViewController alloc] init];
    UINavigationController * twoNav = [[UINavigationController alloc] initWithRootViewController:twoVC];
    twoVC.title = @"second2";
    
    self.viewControllers = @[oneNav, twoNav];
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
