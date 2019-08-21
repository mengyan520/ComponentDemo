

#import "UIButton+EnlargeTouchArea.h"
#import <objc/runtime.h>

static char topKey;
static char leftKey;
static char bottomkey;
static char rightKey;

@implementation UIButton (EnlargeTouchArea)

- (void)enlargeTouchAreaWithTop:(CGFloat)top left:(CGFloat)left bottom:(CGFloat)bottom right:(CGFloat)right{
    objc_setAssociatedObject(self, &topKey, [NSNumber numberWithFloat:top], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &leftKey, [NSNumber numberWithFloat:left], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &bottomkey, [NSNumber numberWithFloat:bottom], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &rightKey, [NSNumber numberWithFloat:right], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (CGRect)enlargeTouchArea{
    NSNumber *top = objc_getAssociatedObject(self, &topKey);
    NSNumber *left = objc_getAssociatedObject(self, &leftKey);
    NSNumber *bottom = objc_getAssociatedObject(self, &bottomkey);
    NSNumber *right = objc_getAssociatedObject(self, &rightKey);
    if(top && left && bottom && right){
        return CGRectMake(self.bounds.origin.x - left.integerValue, self.bounds.origin.y - top.integerValue, CGRectGetWidth(self.bounds) + left.integerValue + right.integerValue, CGRectGetHeight(self.bounds) + top.integerValue + bottom.integerValue);
    }
    return self.bounds;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    CGRect rect = [self enlargeTouchArea];
    if(CGRectEqualToRect(rect, self.bounds)){
        return [super hitTest:point withEvent:event];
    }
    return CGRectContainsPoint(rect, point)?self:nil;
}

@end
