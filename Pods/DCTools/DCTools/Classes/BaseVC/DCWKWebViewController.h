//
//  DCWKWebViewController.h
//  FYJ
//
//  Created by ma on 2018/8/31.
//  Copyright © 2018年 issuser. All rights reserved.
//

#import "DCBaseViewController.h"
@interface DCWKWebViewController : DCBaseViewController
/**
 网页地址
 */
@property(nonatomic, strong) NSString *urlString;
/**
 网页自定义标题
 */
@property(nonatomic, strong) NSString *wkTitle;
@end
