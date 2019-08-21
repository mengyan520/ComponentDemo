//
//  Target_Home.m
//  ComponentDemo
//
//  Created by ma on 2019/8/21.
//  Copyright © 2019 ma. All rights reserved.
//

#import "Target_Home.h"
#import <DCHomeViewController.h>
@implementation Target_Home
- (UIViewController *)Action_HomeViewController:(NSDictionary *)params; {
    return [DCHomeViewController new];
}
@end
