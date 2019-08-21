//
//  UIButton+button.m
//  FYJ
//
//  Created by issuser on 2018/7/19.
//  Copyright © 2018年 issuser. All rights reserved.
//

#import "UIButton+button.h"

@implementation UIButton (button)
+ (UIButton *)buttonWithImgName:(NSString *)imgName title:(NSString *)title color:(UIColor *)color fontSize:(CGFloat)fontSize action:(SEL)action Target:(id)target {
    UIButton *btn = [self buttonWithType:UIButtonTypeCustom];
    if (title != nil && ![title isEqualToString:@""]) {
        [btn setTitle:title forState:UIControlStateNormal];
        [btn setTitleColor:color forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:fontSize];
    }
    if (imgName != nil && ![imgName isEqualToString:@""]) {
        [btn  setImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal];
    }
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    btn.adjustsImageWhenHighlighted = NO;
    return  btn;
}
+ (UIButton *)buttonWithTitle:(NSString *)title color:(UIColor *)color fontName:(NSString *)fontName fontSize:(CGFloat)fontSize action:(SEL)action Target:(id)target {
    UIButton *btn = [self buttonWithType:UIButtonTypeCustom];
    if (title != nil && ![title isEqualToString:@""]) {
        [btn setTitle:title forState:UIControlStateNormal];
        [btn setTitleColor:color forState:UIControlStateNormal];
    }
    if (fontName != nil && ![fontName isEqualToString:@""]) {
        btn.titleLabel.font = [UIFont fontWithName:fontName size:fontSize];
    }else {
        btn.titleLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:fontSize];
    }
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    return  btn;
}
+ (UIButton *)buttonWithImage:(UIImage *)image title:(NSString *)title target:(id)target action:(SEL)action {
    UIButton *btn = [[self alloc]init];
    if (title != nil && ![title isEqualToString:@""]) {
        [btn setTitle:title forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:16];
    }
    if (image != nil) {
        [btn  setImage:image forState:UIControlStateNormal];
    }
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    btn.adjustsImageWhenHighlighted = NO;
    return  btn;
}
+ (UIButton *)buttonWithImgName:(NSString *)imgName selectImgName:(NSString *)selectImgName action:(SEL)action Target:(id)target {
    UIButton *btn = [[self alloc]init];
    if (imgName != nil && ![imgName isEqualToString:@""]) {
        [btn  setImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal];
    }
    if (selectImgName != nil && ![selectImgName isEqualToString:@""]) {
        [btn  setImage:[UIImage imageNamed:selectImgName] forState:UIControlStateSelected];
    }
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    [btn setAdjustsImageWhenHighlighted:NO];
    return  btn;
}
+ (UIButton *)buttonWithBackgroundImgName:(NSString *)backgroundImgName action:(SEL)action Target:(id)target {
    UIButton *btn = [[self alloc]init];
    if (backgroundImgName != nil && ![backgroundImgName isEqualToString:@""]) {
        [btn  setBackgroundImage:[UIImage imageNamed:backgroundImgName] forState:UIControlStateNormal];
    }
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    [btn setAdjustsImageWhenHighlighted:NO];
    return  btn;
}
+ (UIButton *)buttonWithEdgeInsetWithRightImgName:(NSString *)imgName leftTitle:(NSString *)title color:(UIColor *)color fontSize:(CGFloat)fontSize action:(SEL)action Target:(id)target {
    UIButton *btn = [[self alloc]init];
    if (title != nil && ![title isEqualToString:@""]) {
        [btn setTitle:title forState:UIControlStateNormal];
        [btn setTitleColor:color forState:UIControlStateNormal];
    }
    if (imgName != nil && ![imgName isEqualToString:@""]) {
        [btn  setImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal];
    }
    btn.titleLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:fontSize];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    [btn setTitleEdgeInsets:UIEdgeInsetsMake(0, -btn.imageView.frame.size.width, 0, btn.imageView.frame.size.width)];
    [btn setImageEdgeInsets:UIEdgeInsetsMake(0, btn.titleLabel.bounds.size.width+5, 0, -btn.titleLabel.bounds.size.width-5)];
    return  btn;
}
+ (UIButton *)buttonWithEdgeInsetWithTopImgName:(NSString *)imgName bottomTitle:(NSString *)title color:(UIColor *)color fontSize:(CGFloat)fontSize action:(SEL)action Target:(id)target {
    UIButton *btn = [[self alloc]init];
    if (title != nil && ![title isEqualToString:@""]) {
        [btn setTitle:title forState:UIControlStateNormal];
        [btn setTitleColor:color forState:UIControlStateNormal];
    }
    if (imgName != nil && ![imgName isEqualToString:@""]) {
        [btn  setImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal];
    }
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    btn.titleLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:fontSize];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    CGFloat spacing = 5;
    CGSize imageSize = btn.imageView.image.size;
    btn.titleEdgeInsets = UIEdgeInsetsMake(0.0, - imageSize.width, - (imageSize.height + spacing), 0.0);
    CGSize titleSize = [btn.titleLabel.text sizeWithAttributes:@{NSFontAttributeName: btn.titleLabel.font}];
    btn.imageEdgeInsets = UIEdgeInsetsMake(- (titleSize.height + spacing), 0.0, 0.0, - titleSize.width);
    return  btn;
}
@end
