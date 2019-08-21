//
//  UILabel+label.m
//  FYJ
//
//  Created by issuser on 2018/7/19.
//  Copyright © 2018年 issuser. All rights reserved.
//

#import "UILabel+label.h"

@implementation UILabel (label)
+ (UILabel *)labelWithTextColor:(UIColor *)textColor fontSize:(CGFloat)fontSize {
    UILabel *label = createLabel(CGRectZero, textColor,[UIFont systemFontOfSize:fontSize], nil);
    return label;
}
+ (UILabel *)labelWithTextColor:(UIColor *)textColor fontName:(NSString *)fontName fontSize:(CGFloat)fontSize {
    UILabel *label = createLabel(CGRectZero, textColor,[UIFont fontWithName:fontName size:fontSize], nil);
    return label;
}
UILabel * createLabel(CGRect frame, UIColor *textColor, UIFont *font, NSString *text) {
    UILabel *label = [[UILabel alloc]initWithFrame:frame];
    label.textColor = textColor?textColor:[UIColor blackColor];
    label.font = font;
    label.backgroundColor = [UIColor clearColor];
    label.text = text;
    [label sizeToFit];
    return label;
}
@end
