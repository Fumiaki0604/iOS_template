//
//  ViewController.m
//  iOS_template
//
//  Created by 佐藤　史渉 on 2013/12/27.
//  Copyright (c) 2013年 佐藤　史渉. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"viewWillAppear");
    self.title = @"メインメニュー";
    [self buttonCreate];
    [super viewWillAppear:animated];
}

- (void)loadView{
    [super loadView];
	// Do any additional setup after loading the view, typically from a nib.
    // start monitoring device orientation changes.
    //背景色の設定
    self.view.backgroundColor = [UIColor whiteColor];
    UIBarButtonItem *back_button = [[UIBarButtonItem alloc] initWithTitle:@"戻る" style:UIBarButtonItemStyleDone target:nil action:nil];
    self.navigationItem.backBarButtonItem = back_button;
<<<<<<< HEAD
    //[self buttonCreate];
=======
    [self buttonCreate];
>>>>>>> 984e01aaefa06bb67c349ab17faff66a96005a13
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
    } else if (orientation == UIDeviceOrientationPortraitUpsideDown) {
        NSLog(@"device orientation is UpsideDown.");
        [self buttonCreate];
    } else if (orientation == UIDeviceOrientationLandscapeLeft) {
        NSLog(@"device orientation is LandscapeLeft");
        [self buttonCreate];
    } else if (orientation == UIDeviceOrientationLandscapeRight) {
       NSLog(@"device orientation is LandscapeRight");
        [self buttonCreate];
    } else {
    
    }
}*/

// 画面が回転しようとする時に呼ばれる

-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
                                        duration:(NSTimeInterval)duration {
    
    [self printOrientation:interfaceOrientation];
}

- (void)printOrientation:(UIInterfaceOrientation)orientation{
    if (orientation == UIDeviceOrientationPortrait) {
        NSLog(@"device orientation is Portrait.");
        [self buttonCreate];
    } else if (orientation == UIDeviceOrientationPortraitUpsideDown) {
        NSLog(@"device orientation is UpsideDown.");
        [self buttonCreate];
    } else if (orientation == UIDeviceOrientationLandscapeLeft) {
        NSLog(@"device orientation is LandscapeLeft");
        [self buttonCreate];
    } else if (orientation == UIDeviceOrientationLandscapeRight) {
        NSLog(@"device orientation is LandscapeRight");
        [self buttonCreate];
    } else {
        
    }

}

- (void)buttonCreate{
    [_btn removeFromSuperview];
    _btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn.frame = CGRectMake((self.view.frame.size.width - 100) / 2 , (self.view.frame.size.height - 30) / 2 , 100, 30);
    [_btn setTitle:@"ボタン" forState:UIControlStateNormal];
    [_btn addTarget:self action:@selector(button_Tapped:)forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn];
}

- (void)button_Tapped:(id)sender{
    SecondViewController *viewController = [[SecondViewController alloc] init];
    viewController.width = self.view.frame.size.width;
    viewController.height = self.view.frame.size.height;
    [self.navigationController pushViewController:viewController animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
