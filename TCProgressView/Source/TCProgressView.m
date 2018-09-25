//
//  TCProgressView.m
//  TCProgressView
//
//  Created by Tianchi Wang on 2018/9/24.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

#import "TCProgressView.h"

@implementation TCProgressView

- (void)drawRect:(CGRect)rect {
    //    定义扇形中心
    CGPoint origin = self.center;
    //    定义扇形半径
    CGFloat radius = self.frame.size.width/2;
    
    //    设定扇形起点位置
    CGFloat startAngle = - M_PI_2;
    //    根据进度计算扇形结束位置
    CGFloat endAngle = startAngle + self.progress * M_PI * 2;
    
    //    根据起始点、原点、半径绘制弧线
    UIBezierPath *sectorPath = [UIBezierPath bezierPathWithArcCenter:origin radius:radius startAngle:startAngle endAngle:endAngle clockwise:YES];
    
    //    从弧线结束为止绘制一条线段到圆心。这样系统会自动闭合图形，绘制一条从圆心到弧线起点的线段。
    [sectorPath addLineToPoint:origin];
    
    //    设置扇形的填充颜色
    [[UIColor darkGrayColor] set];
    
    //    设置扇形的填充模式
    [sectorPath fill];

}

-(void)setProgress:(CGFloat)progress {
    _progress = progress;

    [self setNeedsDisplay];
}

@end
