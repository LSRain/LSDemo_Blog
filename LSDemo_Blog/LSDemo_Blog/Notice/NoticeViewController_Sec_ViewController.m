//
//  NoticeViewController_Sec_ViewController.m
//  LSDemo_Blog
//
//  Created by WangBiao on 2017/9/26.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import "NoticeViewController_Sec_ViewController.h"

@interface NoticeViewController_Sec_ViewController ()

@end

@implementation NoticeViewController_Sec_ViewController

- (void)notiBtnClick{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"NOTITwo" object:nil];
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - UI setup

- (void)setupUI{
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIButton *notiBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 90, 40)];
    notiBtn.backgroundColor = [UIColor redColor];
    [notiBtn setTitle:@"Send NOTI" forState:UIControlStateNormal];
    [self.view addSubview:notiBtn];
    [notiBtn addTarget:self action:@selector(notiBtnClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupUI];
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
