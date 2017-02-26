//
//  ShapeMaker.h
//  FacadePattern
//
//  Created by wupeng on 2017/2/26.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Circle.h"

@interface ShapeMaker : NSObject

/**
 *  绘制圆
 *
 *  @param paras 参数
 */
+ (void)drawCircleWithParas:(NSDictionary *)paras;

/**
 *  绘制圆 + 矩形
 *
 *  @param paras 参数
 */
+ (void)drawCircleAndRectangle:(NSDictionary *)paras;

@end
