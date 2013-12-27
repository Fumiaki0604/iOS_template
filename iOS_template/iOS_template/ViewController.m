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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)loadView{
    [super loadView];
    
    //背景色の設定
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *btn =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake((self.view.frame.size.width - 100) / 2 , (self.view.frame.size.height - 30) / 2 , 100, 30);
    [btn setTitle:@"ボタン" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(button_Tapped:)forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

}

- (void)button_Tapped:(id)sender{
    SecondViewController *vewController = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:vewController animated:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
