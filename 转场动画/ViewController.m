//
//  ViewController.m
//  转场动画
//
//  Created by 霍文轩 on 15/10/30.
//  Copyright © 2015年 霍文轩. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "PresentTransition.h"

@interface ViewController () <UIViewControllerTransitioningDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.transitioningDelegate = self;
    
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:imageView];
    imageView.image = [UIImage imageNamed:@"i5.png"];
    
    UIButton * presentButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
    presentButton.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    [self.view addSubview:presentButton];
    presentButton.backgroundColor = [UIColor blackColor];
    [presentButton setTitle:@"present" forState:UIControlStateNormal];
    [presentButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [presentButton addTarget:self action:@selector(presentClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)presentClick{
    SecondViewController * secondVC = [[SecondViewController alloc] init];
    secondVC.transitioningDelegate = self; // 必须second同样设置delegate才有动画
    [self presentViewController:secondVC animated:YES completion:^{
    }];
}
// present动画
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    return [[PresentTransition alloc] init];
}

@end
