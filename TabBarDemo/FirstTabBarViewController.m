//
//  FirstTabBarViewController.m
//  TabBarDemo
//
//  Created by boo sun on 2016/10/10.
//  Copyright © 2016年 张新平. All rights reserved.
//

#import "FirstTabBarViewController.h"
#import "FirstOneViewController.h"
#import "FirstTwoViewController.h"
#import "FirstThreeViewController.h"

#import "SecondTabBarViewController.h"

@interface FirstTabBarViewController ()<UITabBarControllerDelegate>

{
    NSInteger _index;
}

@end

@implementation FirstTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _index = 0;
    
    FirstOneViewController * oneVC = [[FirstOneViewController alloc] init];
    UINavigationController * oneNav = [[UINavigationController alloc] initWithRootViewController:oneVC];
    oneVC.title = @"1";
    
    FirstTwoViewController * twoVC = [[FirstTwoViewController alloc] init];
    UINavigationController * twoNav = [[UINavigationController alloc] initWithRootViewController:twoVC];
    twoVC.title = @"2";
    
    FirstThreeViewController * threeVC = [[FirstThreeViewController alloc] init];
    UINavigationController * threeNav = [[UINavigationController alloc] initWithRootViewController:threeVC];
    threeVC.title = @"3";

    self.viewControllers = @[oneNav, twoNav, threeNav];
    
    self.delegate = self;
}

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    NSInteger index = [self.viewControllers indexOfObject:viewController];
    if (index == 1) {
        //第二个BTabBar
        SecondTabBarViewController * starTabBar = [[SecondTabBarViewController alloc ] init];
        // 隐藏 tarBar
        self.tabBar.hidden = YES;
        // 隐藏导航栏
        UINavigationController * oneNav = self.viewControllers[_index];
        oneNav.navigationBarHidden = YES;
        
        [UIView transitionFromView:oneNav.topViewController.view toView:starTabBar.view duration:0.8 options:UIViewAnimationOptionTransitionFlipFromLeft completion:^(BOOL finished) {
            [oneNav pushViewController:starTabBar animated:NO];
        }];
        return NO;
    }
    _index = index;
    return YES;
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
