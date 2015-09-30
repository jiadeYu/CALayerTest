//
//  ViewController.m
//  CALayerTest
//
//  Created by jiadeyu on 15/9/30.
//  Copyright (c) 2015年 jiadeyu. All rights reserved.
//

#import "ViewController.h"
#import "CustomMyLayer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
         CALayer *Mylayer=[CALayer layer];
         //设置layer的属性
         Mylayer.bounds=CGRectMake(100, 100, 100, 100);
         Mylayer.position=CGPointMake(100, 100);
    
         //设置需要显示的图片
         Mylayer.contents=(id)[UIImage imageNamed:@"hk"].CGImage;
         //设置圆角半径为10
         Mylayer.cornerRadius=10;
         //如果设置了图片，那么需要设置这个属性为YES才能显示圆角效果
         Mylayer.masksToBounds=YES;
         //设置边框
         Mylayer.borderWidth=3;
         Mylayer.borderColor=[UIColor brownColor].CGColor;
    
         //把layer添加到界面上
         [self.view.layer addSublayer:Mylayer];
}

- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx{
    CGContextAddEllipseInRect(ctx, CGRectMake(50, 50, 100, 100));
    CGContextSetRGBFillColor(ctx, 0, 1, 1, 1);
    CGContextFillPath(ctx);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
