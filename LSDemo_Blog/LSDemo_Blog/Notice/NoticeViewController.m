//
//  NoticeViewController.m
//  LSDemo_Blog
//
//  Created by WangBiao on 2017/9/26.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import "NoticeViewController.h"
#import "NoticeViewController_Sec_ViewController.h"

@interface NoticeViewController ()

@end

@implementation NoticeViewController

- (void)notiAction{
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

- (void)pushBtnClick{
    [self.navigationController pushViewController:[NoticeViewController_Sec_ViewController new] animated:YES];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notiAction) name:@"notiOne" object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notiActionTwo) name:@"notiTwo" object:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor blueColor];
    
    UIButton *notiBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 90, 40)];
    notiBtn.backgroundColor = [UIColor blackColor];
    [notiBtn setTitle:@"push" forState:UIControlStateNormal];
    [self.view addSubview:notiBtn];
    [notiBtn addTarget:self action:@selector(pushBtnClick) forControlEvents:UIControlEventTouchUpInside];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notiAction) name:@"test" object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
