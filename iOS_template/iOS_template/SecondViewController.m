//
//  SecondViewController.m
//  iOS_template
//
//  Created by 佐藤　史渉 on 2013/12/27.
//  Copyright (c) 2013年 佐藤　史渉. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController{
    float layoutSpace;
}
@synthesize width;
@synthesize height;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
       
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    //背景色の設定
    self.view.backgroundColor = [UIColor whiteColor];
	// Do any additional setup after loading the view.
    /*[[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector(didRotate:)
     name:UIDeviceOrientationDidChangeNotification
     object:nil];*/
}
/*
- (void) didRotate:(NSNotification *)notification {
    UIDeviceOrientation orientation = [[notification object] orientation];
    
    if (orientation == UIDeviceOrientationPortrait) {
        NSLog(@"device orientation is Portrait.");
        [self buttonCreate];
        [self toolbarWidth:self.view.frame.size.width toolbarHeight:self.view.frame.size.height];
    } else if (orientation == UIDeviceOrientationPortraitUpsideDown) {
        NSLog(@"device orientation is UpsideDown.");
        [self buttonCreate];
        [self toolbarWidth:self.view.frame.size.width toolbarHeight:self.view.frame.size.height];
    } else if (orientation == UIDeviceOrientationLandscapeLeft) {
        NSLog(@"device orientation is LandscapeLeft");
        [self buttonCreate];
        [self toolbarWidth:self.view.frame.size.width toolbarHeight:self.view.frame.size.height];
    } else if (orientation == UIDeviceOrientationLandscapeRight) {
        NSLog(@"device orientation is LandscapeRight");
        [self buttonCreate];
        [self toolbarWidth:self.view.frame.size.width toolbarHeight:self.view.frame.size.height];
    } else {
        
    }
}*/

- (void)loadView{
    [super loadView];
    
    //背景色の設定
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"サブメニュー";
    [self instanceBtn];
    
    [self myWidth:width myHeight:height];
    
    [self addBtn];
    [self toolbarWidth:width toolbarHeight:height];
    
}

-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
                                        duration:(NSTimeInterval)duration {
    
    [self printOrientation:interfaceOrientation];
}

- (void)printOrientation:(UIInterfaceOrientation)orientation{
    
    if (orientation == UIDeviceOrientationPortrait) {
        NSLog(@"device orientation is Portrait.");
        [self buttonCreate];
        [self toolbarWidth:self.view.frame.size.width toolbarHeight:self.view.frame.size.height];
    } else if (orientation == UIDeviceOrientationPortraitUpsideDown) {
        NSLog(@"device orientation is UpsideDown.");
        [self buttonCreate];
        [self toolbarWidth:self.view.frame.size.width toolbarHeight:self.view.frame.size.height];
    } else if (orientation == UIDeviceOrientationLandscapeLeft) {
        NSLog(@"device orientation is LandscapeLeft");
        [self buttonCreate];
        [self toolbarWidth:self.view.frame.size.width toolbarHeight:self.view.frame.size.height];
    } else if (orientation == UIDeviceOrientationLandscapeRight) {
        NSLog(@"device orientation is LandscapeRight");
        [self buttonCreate];
        [self toolbarWidth:self.view.frame.size.width toolbarHeight:self.view.frame.size.height];
    } else {
        
    }
    
}



- (void)buttonCreate{
    [_leftUpbtn removeFromSuperview];
    [_leftDwnbtn removeFromSuperview];
    [_rightUpbtn removeFromSuperview];
    [_rightDwnbtn removeFromSuperview];
    [_bottomToolBar removeFromSuperview];
    
    [self instanceBtn];
    [self myWidth:self.view.frame.size.width myHeight:self.view.frame.size.height];
    [self addBtn];
}

-(void)instanceBtn{
    _leftUpbtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _leftDwnbtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _rightUpbtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _rightDwnbtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
}

-(void)myWidth:(int)f_width myHeight:(int)f_height{
    if (floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1) {
        NSLog(@"ios6");
        layoutSpace = 0.0f;
    }
    else{
        NSLog(@"ios7");
        layoutSpace = self.navigationController.navigationBar.bounds.size.height;
    }
    _leftUpbtn.frame = CGRectMake(10 , 60 + layoutSpace, 100, 30);
    [_leftUpbtn setTitle:@"左上ボタン" forState:UIControlStateNormal];
    _leftDwnbtn.frame = CGRectMake(10 , f_height -120 , 100, 30);
    [_leftDwnbtn setTitle:@"左下ボタン" forState:UIControlStateNormal];
    _rightUpbtn.frame = CGRectMake(f_width - 120 , 60 + layoutSpace, 100, 30);
    [_rightUpbtn setTitle:@"右上ボタン" forState:UIControlStateNormal];
    _rightDwnbtn.frame = CGRectMake( f_width - 120, f_height -120, 100, 30);
    [_rightDwnbtn setTitle:@"右下ボタン" forState:UIControlStateNormal];
}

-(void)addBtn{
    [self.view addSubview:_leftUpbtn];
    [self.view addSubview:_leftDwnbtn];
    [self.view addSubview:_rightUpbtn];
    [self.view addSubview:_rightDwnbtn];
}

-(void)toolbarWidth:(int)f_width toolbarHeight:(int)f_height{
    _bottomToolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, f_height - 44,f_width , 44)];
    [self.view addSubview:_bottomToolBar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
