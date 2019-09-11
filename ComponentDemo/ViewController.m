//
//  ViewController.m
//  ComponentDemo
//
//  Created by ma on 2019/8/2.
//  Copyright © 2019 ma. All rights reserved.
//

#import "ViewController.h"
#import "DCTwoViewController.h"
#import <DCHomeViewController.h>
#import <CTMediator/CTMediator.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
   
    [self.navigationController pushViewController:[[CTMediator sharedInstance]performActionWithUrl:[NSURL URLWithString:@"http://Home/HomeViewController"] completion:nil] animated:YES];
    NSLog(@"%@",[[CTMediator sharedInstance]performActionWithUrl:[NSURL URLWithString:@"http://Home/HomeViewController"] completion:nil]);
    NSLog(@"%@",[[CTMediator sharedInstance]performTarget:@"Home" action:@"HomeViewController" params:nil shouldCacheTarget:nil]);
}

@end
