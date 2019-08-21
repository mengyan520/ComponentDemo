//
//  NSString+Extension.h
//  PL
//
//  Created by 九合 on 2018/5/9.
//  Copyright © 2018年 Kingworld. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)
//移除空格和换行
- (NSString *)dc_removeSpacesAndLineBreaks;
//获取字符串高度
- (CGFloat)dc_heightWithFont:(UIFont *)font lineWidth:(CGFloat)width;
//获取字符串宽度(最大宽度限制下)
- (CGFloat)dc_widthWithFont:(UIFont *)font lineWidth:(CGFloat)width;
//获取字符串宽高
- (CGSize)dc_sizeWithFont:(UIFont *)font;
//设置富文本
- (NSMutableAttributedString *)dc_focusSubstring:(NSString *)subString color:(UIColor *)fontColor font:(UIFont *)font;
@end
