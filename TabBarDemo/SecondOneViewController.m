//
//  SecondOneViewController.m
//  TabBarDemo
//
//  Created by boo sun on 2016/10/10.
//  Copyright © 2016年 张新平. All rights reserved.
//

#import "SecondOneViewController.h"

@interface SecondOneViewController ()

@end

@implementation SecondOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:(arc4random() % 256) / 255.0 green:(arc4random() % 256) / 255.0 blue:(arc4random() % 256) / 255.0 alpha:1];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:self action:@selector(back)];

    // Do any additional setup after loading the view.
}

- (void)back {
    //创建动画
    CATransition *animation = [CATransition animation];
    //设置运动轨迹的速度
    animation.timingFunction = UIViewAnimationCurveEaseInOut;
    //设置动画类型为立方体动画
    animation.type = @"oglFlip";
    //设置动画时长
    animation.duration = 0.8f;
    //设置运动的方向
    animation.subtype = kCATransitionFromRight;
    //控制器间跳转动画
    [[[UIApplication sharedApplication].delegate window].layer addAnimation:animation forKey:nil];
    [self.tabBarController.navigationController popToRootViewControllerAnimated:NO];
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
