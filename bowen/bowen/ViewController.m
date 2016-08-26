//
//  ViewController.m
//  bowen
//
//  Created by July on 16/8/25.
//  Copyright © 2016年 July. All rights reserved.
//

#import "ViewController.h"
#import "WJWaterRippleView.h"

@interface ViewController ()

@property(nonatomic, weak) NSTimer * timer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 先在控制器上初始化一个圆，使用者可以注释这段代码，不过效果没那么好
    WJWaterRippleView * waterRippleView = [[WJWaterRippleView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    waterRippleView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:waterRippleView];
}

- (IBAction)startBtnAction:(id)sender {
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.6 target:self selector:@selector(waterRippleAnimation) userInfo:nil repeats:YES];
}

- (IBAction)stopBtnAction:(id)sender {
    [self.timer invalidate];
}

- (void)waterRippleAnimation{
    __block WJWaterRippleView * waterRippleView = [[WJWaterRippleView alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
    waterRippleView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:waterRippleView];
    
    [UIView animateWithDuration:2 animations:^{
        
        /*
         t:要变换的矩阵
         sx:缩放倍数--横向
         sy:缩放倍数--竖向
         */
        // 这里就是把圆进行两倍放大
        waterRippleView.transform = CGAffineTransformScale(waterRippleView.transform, 2, 2);
        
        waterRippleView.alpha = 0;
        
    } completion:^(BOOL finished) {
        [waterRippleView removeFromSuperview];
    }];
}

@end
