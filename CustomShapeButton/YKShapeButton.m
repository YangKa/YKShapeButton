//
//  YKShapeButton.m
//  CustomShapeButton
//
//  Created by qianzhan on 15/12/14.
//  Copyright © 2015年 qianzhan. All rights reserved.
//

#import "YKShapeButton.h"

@implementation YKShapeButton

//绘制按钮时添加path遮罩
//- (void)drawRect:(CGRect)rect
//{
//    [super drawRect:rect];
//    CAShapeLayer *shapLayer = [CAShapeLayer layer];
//    shapLayer.path = self.path.CGPath;
//    self.layer.mask = shapLayer;
//}

- (void)setPath:(UIBezierPath *)path{
    _path = path;
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.path = _path.CGPath;
    self.layer.mask = shapeLayer;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    
    BOOL result = [super pointInside:point withEvent:event];
    if (result) {
        if ([_path containsPoint:point]) {
            return YES;
        }
    }
    return NO;
}

@end
