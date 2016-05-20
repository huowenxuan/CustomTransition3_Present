//
//  SecondViewController.m
//  转场动画
//
//  Created by 霍文轩 on 15/10/30.
//  Copyright © 2015年 霍文轩. All rights reserved.
//

#import "PresentTransition.h"
#import "SecondViewController.h"

@interface SecondViewController () <UINavigationControllerDelegate>

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:imageView];
    imageView.image = [UIImage imageNamed:@"i1.png"];
    
    UIButton * dismissButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
    dismissButton.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    [self.view addSubview:dismissButton];
    dismissButton.backgroundColor = [UIColor blackColor];
    [dismissButton setTitle:@"dismiss" forState:UIControlStateNormal];
    [dismissButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    [dismissButton addTarget:self action:@selector(dismissClick) forControlEvents:UIControlEventTouchUpInside];
}
- (void)dismissClick{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

@end
