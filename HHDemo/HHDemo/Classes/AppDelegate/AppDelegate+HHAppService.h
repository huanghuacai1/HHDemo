//
//  AppDelegate+HHAppService.h
//  HHDemo
//
//  Created by 蔡万鸿 on 2017/9/8.
//  Copyright © 2017年 黄花菜. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate (HHAppService)
/**
 初始化window
 */
- (void)initWindow;
/**
 初始化网络请求框架
 */
- (void)initYTKNetwork;
/**
 初始化 UMeng
 */
-(void)initUMeng;

@end
