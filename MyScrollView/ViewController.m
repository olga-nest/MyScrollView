//
//  ViewController.m
//  MyScrollView
//
//  Created by Olga on 10/16/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) UIView *mainView;
@property (nonatomic, weak) UIView *redView;
@property (nonatomic, weak) UIView *greenView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createMainView];
    [self createSubViews];
    
    
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

-(void)createSubViews {
    
    //Red view: A red UIView at (20,20) x, y coordinates and with width 100 and height 100
    CGRect redViewFrame = CGRectMake(20, 20, 100, 100);
    
    UIView *redView = [[UIView alloc] initWithFrame:redViewFrame];
    redView.translatesAutoresizingMaskIntoConstraints = NO;
    redView.backgroundColor = [UIColor redColor];
    [self.mainView addSubview:redView];
    self.redView = redView;
    
    //A green UIView at (150,150) x, y coordinates and with width 150 and height 200
    CGRect greenViewFrame = CGRectMake(150, 150, 150, 200);
    
    UIView *greenView = [[UIView alloc] initWithFrame:greenViewFrame];
    greenView.translatesAutoresizingMaskIntoConstraints = NO;
    greenView.backgroundColor = [UIColor greenColor];
    [self.mainView addSubview:greenView];
    self.greenView = greenView;

   
    
}


@end
