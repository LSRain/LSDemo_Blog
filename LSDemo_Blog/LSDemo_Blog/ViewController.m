//
//  ViewController.m
//  LSDemo_Blog
//
//  Created by WangBiao on 2017/9/25.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import "ViewController.h"
#import "ConstraintViewController.h"
#import "NoticeViewController.h"
#import "NoticeViewController_Sec_ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"NOTIOne" object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"NOTITwo" object:nil];
}

- (void)notiActionOne{
    UILabel *showLabel = [[UILabel alloc] initWithFrame:CGRectMake(200, 500, 90, 40)];
    showLabel.text = @"One";
    [self.view addSubview:showLabel];
    showLabel.alpha = 0;
    
    [UIView animateWithDuration:5.0 animations:^{
        showLabel.alpha = 1;
    }];
}

- (void)notiActionTwo{
    UILabel *showLabel = [[UILabel alloc] initWithFrame:CGRectMake(200, 500, 90, 40)];
    showLabel.text = @"Two";
    [self.view addSubview:showLabel];
    showLabel.alpha = 0;
    
    [UIView animateWithDuration:5.0 animations:^{
        showLabel.alpha = 1;
    }];
}

- (void)notiTwoBtnClick{
    [self.navigationController pushViewController:[NoticeViewController_Sec_ViewController new] animated:YES];
}

- (void)notiOneBtnClick{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"NOTIOne" object:nil];
    [self.navigationController pushViewController:[NoticeViewController new] animated:YES];
}

- (void)pushBtnClick{
    [self.navigationController pushViewController:[ConstraintViewController new] animated:YES];
}

#pragma mark - UI setup

- (void)setupUI{
    UIButton *pushBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 40, 40)];
    pushBtn.backgroundColor = [UIColor redColor];
    [pushBtn setTitle:@"push" forState:UIControlStateNormal];
    [self.view addSubview:pushBtn];
    [pushBtn addTarget:self action:@selector(pushBtnClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *notiBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 90, 40)];
    notiBtn.backgroundColor = [UIColor redColor];
    [notiBtn setTitle:@"notiOne" forState:UIControlStateNormal];
    [self.view addSubview:notiBtn];
    [notiBtn addTarget:self action:@selector(notiOneBtnClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *notiTwoBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 300, 90, 40)];
    notiTwoBtn.backgroundColor = [UIColor redColor];
    [notiTwoBtn setTitle:@"notiTwo" forState:UIControlStateNormal];
    [self.view addSubview:notiTwoBtn];
    [notiTwoBtn addTarget:self action:@selector(notiTwoBtnClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillDisappear:animated];
    /*
     - Don't addObserver here...
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notiActionOne) name:@"NOTIOne" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notiActionTwo) name:@"NOTITwo" object:nil];
     */
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupUI];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notiActionOne) name:@"NOTIOne" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notiActionTwo) name:@"NOTITwo" object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
