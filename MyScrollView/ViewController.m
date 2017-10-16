//
//  ViewController.m
//  MyScrollView
//
//  Created by Olga on 10/16/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) UIView *mainView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createMainView]; 
    
    
}

-(void)createMainView {
    UIView *mainView = [[UIView alloc] initWithFrame:CGRectZero];
    mainView.translatesAutoresizingMaskIntoConstraints = NO;
    mainView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:mainView];
    self.mainView = mainView;
    
    [self.mainView.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [self.mainView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
    [self.mainView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    [self.mainView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;

}


@end
