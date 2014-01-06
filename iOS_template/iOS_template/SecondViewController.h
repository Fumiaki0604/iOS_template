//
//  SecondViewController.h
//  iOS_template
//
//  Created by 佐藤　史渉 on 2013/12/27.
//  Copyright (c) 2013年 佐藤　史渉. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController{
    int width;
    int height;
}
@property int width;
@property int height;

@property(strong,nonatomic)UIButton *leftUpbtn;
@property(strong,nonatomic)UIButton *leftDwnbtn;
@property(strong,nonatomic)UIButton *rightUpbtn;
@property(strong,nonatomic)UIButton *rightDwnbtn;

@property (strong, nonatomic) UIToolbar *bottomToolBar;

//- (void)makeBtn:(int)f_width:(int)f_height;
@end
