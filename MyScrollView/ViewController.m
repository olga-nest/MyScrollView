//
//  ViewController.m
//  MyScrollView
//
//  Created by Olga on 10/16/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@property (nonatomic, weak) UIView *mainView;
@property (nonatomic, weak) UIView *redView;
@property (nonatomic, weak) UIView *greenView;
@property (nonatomic, weak) UIView *blueView;
@property (nonatomic, weak) UIView *yellowView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createMainView];
    [self setMyScrollView];
    [self createSubViews];
    
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewWillAppear:animated];
//Move the origin of the bounds of the mainView down 100 point in the y direction
    CGRect rect = self.mainView.frame;
    rect.origin = CGPointMake(self.mainView.frame.origin.x, self.mainView.frame.origin.y - 100);
    self.mainView.frame = rect;
}

-(void)createMainView {
    UIView *mainView = [[UIView alloc] initWithFrame:CGRectZero];
    mainView.translatesAutoresizingMaskIntoConstraints = NO;
 //   mainView.backgroundColor = [UIColor grayColor];
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

    //A blue UIView at (40,400) x, y coordinates and with width 200 and height 150
    CGRect blueViewFrame = CGRectMake(40, 400, 200, 150);
    
    UIView *blueView = [[UIView alloc] initWithFrame:blueViewFrame];
    blueView.translatesAutoresizingMaskIntoConstraints = NO;
    blueView.backgroundColor = [UIColor blueColor];
    [self.mainView addSubview:blueView];
    self.blueView = blueView;
    
    //A yellow UIView at (100,600) x, y coordinates and with width 180 and height 150
    CGRect yellowViewFrame = CGRectMake(100, 600, 180, 150);
    
    UIView *yellowView = [[UIView alloc] initWithFrame:yellowViewFrame];
    yellowView.translatesAutoresizingMaskIntoConstraints = NO;
    yellowView.backgroundColor = [UIColor yellowColor];
    [self.mainView addSubview:yellowView];
    self.yellowView = yellowView;

}

-(void)setMyScrollView {
    
    MyScrollView *myScrollView = [[MyScrollView alloc]initWithFrame:CGRectMake(0,0, self.mainView.frame.size.width, self.mainView.frame.size.width)];
    
    myScrollView.userInteractionEnabled=YES;
    [self.mainView addSubview:myScrollView];
    myScrollView.contentSize = self.mainView.bounds.size;
    
    myScrollView.panRecognizer = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(scroll:)];
    [self.mainView addGestureRecognizer:myScrollView.panRecognizer];
    
    }

-(void)scroll: (UIGestureRecognizer *) sender {
    CGPoint locationInView = [sender locationInView:self.mainView];
    sender.view.center = locationInView;
}

@end
