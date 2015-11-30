//
//  ViewController.m
//  LayoutConstraintsTT
//
//  Created by shejun.zhou on 15/11/30.
//  Copyright © 2015年 shejun.zhou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIView *subView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.subView];
    NSLayoutConstraint *constrainTop = [NSLayoutConstraint constraintWithItem:_subView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:40.0];
    NSLayoutConstraint *constrainLeft = [NSLayoutConstraint constraintWithItem:_subView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:40.0];
    NSLayoutConstraint *constrainBottom = [NSLayoutConstraint constraintWithItem:_subView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.0 constant:-40.0];
    NSLayoutConstraint *constrainRight = [NSLayoutConstraint constraintWithItem:_subView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.0 constant:-40.0];
    [self.view addConstraint:constrainTop];
    [self.view addConstraint:constrainLeft];
    [self.view addConstraint:constrainBottom];
    [self.view addConstraint:constrainRight];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIView *)subView {
    if (!_subView) {
        _subView = [[UIView alloc] init];
        _subView.backgroundColor = [UIColor orangeColor];
        [_subView setTranslatesAutoresizingMaskIntoConstraints:NO];
        
    }
    return _subView;
}
@end
