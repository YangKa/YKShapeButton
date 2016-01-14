//
//  ViewController.m
//  CustomShapeButton
//
//  Created by qianzhan on 15/12/14.
//  Copyright © 2015年 qianzhan. All rights reserved.
//

#import "ViewController.h"
#import "YKShapeButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //六边形
    YKShapeButton *btn1 = [YKShapeButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(50, 250, 100, 100);
    btn1.path = [self getPath:1];
    [btn1 setTitle:@"按钮1" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    [btn1 addTarget:self action:@selector(touchBtn:) forControlEvents:UIControlEventTouchUpInside];
    btn1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btn1];
    
    //五边形
    YKShapeButton *btn2 = [YKShapeButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(160, 250, 100, 90);
    btn2.path = [self getPath:2];
    [btn2 setTitle:@"按钮2" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(touchBtn:) forControlEvents:UIControlEventTouchUpInside];
    btn2.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btn2];
    
    //随意
    YKShapeButton *btn3 = [YKShapeButton buttonWithType:UIButtonTypeCustom];
    btn3.frame = CGRectMake(10, 370, 200, 100);
    btn3.path = [self getPath:3];
    [btn3 setTitle:@"按钮3" forState:UIControlStateNormal];
    [btn3 addTarget:self action:@selector(touchBtn:) forControlEvents:UIControlEventTouchUpInside];
    btn3.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btn3];
    
}

- (void)touchBtn:(YKShapeButton*)btn{
    NSLog(@"－－－－－－－触发按钮点击事件");
}

//获取遮罩path
- (UIBezierPath *)getPath:(NSInteger)num
{
    switch (num)
    {
        case 1:
        {
            float viewWidth = 100;
            UIBezierPath *path = [UIBezierPath bezierPath];
            [path moveToPoint:CGPointMake((sin(M_1_PI / 180 * 60)) * (viewWidth / 2), (viewWidth / 4))];
            
            [path addLineToPoint:CGPointMake((viewWidth / 2), 0)];
            
            [path addLineToPoint:CGPointMake(viewWidth - ((sin(M_1_PI / 180 * 60)) * (viewWidth / 2)),
                                             (viewWidth / 4))];
            
            [path addLineToPoint:CGPointMake(viewWidth - ((sin(M_1_PI / 180 * 60)) * (viewWidth / 2)),
                                             (viewWidth / 2) + (viewWidth / 4))];
            
            [path addLineToPoint:CGPointMake((viewWidth / 2), viewWidth)];
            
            [path addLineToPoint:CGPointMake((sin(M_1_PI / 180 * 60)) * (viewWidth / 2),
                                             (viewWidth / 2) + (viewWidth / 4))];
            
            [path closePath];
            return path;
        }
            break;
        case 2:
        {
            UIBezierPath *path = [UIBezierPath bezierPath];
            [path moveToPoint:CGPointMake(50.0, 0.0)];
            [path addLineToPoint:CGPointMake(100.0, 35.0)];
            [path addLineToPoint:CGPointMake(80, 90)];
            [path addLineToPoint:CGPointMake(20.0, 90)];
            [path addLineToPoint:CGPointMake(0.0, 35.0)];
            [path closePath];
            return path;
        }
            break;
        case 3:
        {
            UIBezierPath *path = [UIBezierPath bezierPath];
            [path moveToPoint:CGPointMake(0, 100)];
            [path addLineToPoint:CGPointMake(20, 0)];
            [path addLineToPoint:CGPointMake(45, 50)];
            [path addLineToPoint:CGPointMake(70, 0)];
            [path addLineToPoint:CGPointMake(150, 30)];
            [path addLineToPoint:CGPointMake(175, 0)];
            [path addLineToPoint:CGPointMake(200, 100)];
            [path closePath];
            return path;
        }
            break;
            
        default:
            return nil;
            break;
    }
}

@end
