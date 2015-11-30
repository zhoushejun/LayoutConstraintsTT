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
    NSLayoutConstraint *constraintTop = [NSLayoutConstraint constraintWithItem:_subView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:200];
    NSLayoutConstraint *constraintLeft = [NSLayoutConstraint constraintWithItem:_subView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:40.0];
    NSLayoutConstraint *constraintRight = [NSLayoutConstraint constraintWithItem:_subView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.0 constant:-40.0];
    NSLayoutConstraint *constraintHeight = [NSLayoutConstraint constraintWithItem:_subView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:300];
    [self.view addConstraint:constraintTop];
    [self.view addConstraint:constraintLeft];
    [self.view addConstraint:constraintRight];
    [self.view addConstraint:constraintHeight];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.view layoutIfNeeded];
    [UIView animateWithDuration:3.0 animations:^{
        NSArray *constraints = self.view.constraints;
        for (NSLayoutConstraint *constraint in constraints) {
            if (constraint.firstAttribute == NSLayoutAttributeHeight) {
                constraint.constant = 200;
            }
        }
        [self.view layoutIfNeeded];
    }];
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
