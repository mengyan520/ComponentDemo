//
//  NSString+Extension.m
//  PL
//
//  Created by 九合 on 2018/5/9.
//  Copyright © 2018年 Kingworld. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)
- (NSString *)dc_removeSpacesAndLineBreaks
{
    return [[self stringByReplacingOccurrencesOfString:@" " withString:@""] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
}
#pragma mark - size
- (CGFloat)dc_heightWithFont:(UIFont *)font lineWidth:(CGFloat)width {
    
    CGRect rect = [self boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil];
    return rect.size.height;
}
- (CGFloat)dc_widthWithFont:(UIFont *)font lineWidth:(CGFloat)width {
    
    CGRect rect = [self boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil];
    return rect.size.width;
}
- (CGSize)dc_sizeWithFont:(UIFont *)font {
    return [self sizeWithAttributes:@{NSFontAttributeName:font}];
}
#pragma mark - attributedString
- (NSMutableAttributedString *)dc_focusSubstring:(NSString *)subString color:(UIColor *)fontColor font:(UIFont *)font
{
    NSAssert(nil != fontColor, @"nil color!");
    NSAssert(nil != font, @"nil font");
    NSMutableAttributedString * attributeString = [[NSMutableAttributedString alloc] initWithString:self];
    NSRange range = [self rangeOfString:subString];
    if (range.location != NSNotFound) {
        [attributeString setAttributes:@{NSForegroundColorAttributeName:fontColor,NSFontAttributeName:font} range:range];
        
    }else{
        NSLog(@"Could not find the specified substring！");
    }
    return attributeString;
    
}
@end
