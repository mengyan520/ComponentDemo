//
//  UIButton+button.h
//  FYJ
//
//  Created by issuser on 2018/7/19.
//  Copyright © 2018年 issuser. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface UIButton (button)
+ (UIButton *)buttonWithImgName:(NSString *)imgName title:(NSString *)title color:(UIColor *)color fontSize:(CGFloat)fontSize action:(SEL)action Target:(id)target;
+ (UIButton *)buttonWithTitle:(NSString *)title color:(UIColor *)color fontName:(NSString *)fontName fontSize:(CGFloat)fontSize action:(SEL)action Target:(id)target;
+ (UIButton*)buttonWithImage:(UIImage*)image title:(NSString*)title target:(id)target action:(SEL)action;
+ (UIButton *)buttonWithImgName:(NSString *)imgName selectImgName:(NSString *)selectImgName action:(SEL)action Target:(id)target;
+ (UIButton *)buttonWithBackgroundImgName:(NSString *)backgroundImgName action:(SEL)action Target:(id)target;

/**
文字在左，图片在右
 */
+ (UIButton *)buttonWithEdgeInsetWithRightImgName:(NSString *)imgName leftTitle:(NSString *)title color:(UIColor *)color fontSize:(CGFloat)fontSize action:(SEL)action Target:(id)target;

/**
图片在上，文字在下
 */
+ (UIButton *)buttonWithEdgeInsetWithTopImgName:(NSString *)imgName bottomTitle:(NSString *)title color:(UIColor *)color fontSize:(CGFloat)fontSize action:(SEL)action Target:(id)target;
@end
