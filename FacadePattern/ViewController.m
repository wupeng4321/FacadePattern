//
//  ViewController.m
//  FacadePattern
//
//  Created by wupeng on 2017/2/26.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import "ViewController.h"
#import "ShapeMaker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //regular method and facade pattern method
    [self regularMethod];
    [self FacadePatternMethod];
}

- (void)regularMethod {
    // 绘制了一个圆
    Circle *circle = [Circle new];
    circle.radius  = 10.f;
    [circle draw];
    
    // 绘制了一个矩形
    Rectangle *rectangle = [Rectangle new];
    rectangle.width      = 10.f;
    rectangle.height     = 20.f;
    [rectangle draw];
}


/**
 解耦，简化操作
 */
- (void)FacadePatternMethod {
    // 绘制一个圆的操作
    [ShapeMaker drawCircleWithParas:@{@"a" : @"b"}];
    
    // 绘制圆 + 矩形操作
    [ShapeMaker drawCircleAndRectangle:@{@"a" : @"b", @"c" : @"d"}];

}

@end
