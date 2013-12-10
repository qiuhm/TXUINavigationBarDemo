//
//  txMainViewController.m
//  TXUINavigationBarDemo
//
//  Created by tingxuan.qhm on 13-12-10.
//  Copyright (c) 2013年 tingxuan.qhm. All rights reserved.
//

#import "txMainViewController.h"

@interface txMainViewController ()

@end

@implementation txMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UINavigationBar * navigationBarDefault = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 40, 320, 40)];
    navigationBarDefault.barStyle = UIBarStyleDefault;
    [self.view addSubview:navigationBarDefault];
    UINavigationItem * defaultItem = [[UINavigationItem alloc]initWithTitle:@"默认导航栏"];
   
    UIBarButtonItem * leftDefaultButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:nil];
    defaultItem.leftBarButtonItem = leftDefaultButton;
    
    UIBarButtonItem * rightDefaultButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:nil];
    defaultItem.rightBarButtonItem = rightDefaultButton;
     [navigationBarDefault setItems:[NSArray arrayWithObjects:defaultItem, nil]];
    
    UINavigationBar * navigationBlack = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 100, 320, 40)];
    navigationBlack.barStyle = UIBarStyleBlack;
    [self.view addSubview:navigationBlack];
    UINavigationItem *blackItem = [[UINavigationItem alloc]initWithTitle:@"黑色导航栏"];
    navigationBlack.translucent = YES;  //设置为半透明
    [navigationBlack setItems:[NSArray arrayWithObjects:blackItem, nil]];
    
    UINavigationBar * navigationTran = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 160, 320, 40)];
    navigationTran.barStyle = UIBarStyleBlackTranslucent;
    navigationTran.translucent = YES;   //设置为半透明
    [self.view addSubview:navigationTran];
    UINavigationItem * blackTranItem = [[UINavigationItem alloc]initWithTitle:@"半透明黑色导航栏"];
    [navigationTran setItems:[NSArray arrayWithObjects:blackTranItem, nil]];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
