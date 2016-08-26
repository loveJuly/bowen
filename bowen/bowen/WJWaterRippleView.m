//
//  WJWaterRippleView.m
//  bowen
//
//  Created by July on 16/8/25.
//  Copyright © 2016年 July. All rights reserved.
//

#import "WJWaterRippleView.h"

@implementation WJWaterRippleView

- (void)drawRect:(CGRect)rect{
    
    // 半径
    CGFloat radius = 50;
    // 起始角
    CGFloat startAngle = 0;
    // 圆心
    CGPoint center = CGPointMake(100, 100);
    // 结束角
    CGFloat endAngle = 2 * M_PI;
    
    /*
     center: 弧线中心点的坐标
     radius: 弧线所在圆的半径
     startAngle: 弧线开始的角度值
     endAngle: 弧线结束的角度值
     clockwise: 是否顺时针画弧线
     */
    UIBezierPath * path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startAngle endAngle:endAngle clockwise:YES];
    
    CAShapeLayer * layer = [[CAShapeLayer alloc] init];
    layer.path = path.CGPath;
    layer.strokeColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.3].CGColor;
    layer.fillColor = [UIColor clearColor].CGColor;
    
    [self.layer addSublayer:layer];
}

@end
