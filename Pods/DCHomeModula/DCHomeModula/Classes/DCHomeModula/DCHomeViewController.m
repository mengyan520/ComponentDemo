//
//  DCHomeViewController.m
//  DCHomeModula_Example
//
//  Created by ma on 2019/8/12.
//  Copyright © 2019 mengyan520. All rights reserved.
//

#import "DCHomeViewController.h"

@interface DCHomeViewController ()

@end

@implementation DCHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";
}
#pragma mark - Getter
-(UIColor *)backgroundColor {
    return WHITE_COLOR;
}
- (BOOL)shouldShowBackItem {
    return NO;
}
@end

