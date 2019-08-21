//
//  UILabel+label.h
//  FYJ
//
//  Created by issuser on 2018/7/19.
//  Copyright © 2018年 issuser. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (label)
+ (UILabel *)labelWithTextColor:(UIColor *)textColor fontSize:(CGFloat)fontSize;
+ (UILabel *)labelWithTextColor:(UIColor *)textColor fontName:(NSString *)fontName fontSize:(CGFloat)fontSize;
@end
