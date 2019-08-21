//
//  UIImage+image.h
//  FYJ
//
//  Created by issuser on 2018/7/19.
//  Copyright © 2018年 issuser. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (image)
+ (UIImage *)dc_buildImageWithColor:(UIColor *)color;

/**
 根据Size缩放图片
 */
- (UIImage *)dc_scaleToSize:(CGSize)size;
/**
 给定宽度，返回图片
 */
- (UIImage *)dc_displayImageWithWidth:(CGFloat)width;
@end
