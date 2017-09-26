//
//  NoticeViewController.m
//  LSDemo_Blog
//
//  Created by WangBiao on 2017/9/26.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import "NoticeViewController.h"

@interface NoticeViewController ()

@end

@implementation NoticeViewController

- (void)notiAction{
    UILabel *showLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 40, 40)];
    showLabel.text = @"LSRain.";
    [self.view addSubview:showLabel];
    showLabel.alpha = 0;
    
    [UIView animateWithDuration:1.0 animations:^{
        showLabel.alpha = 1;
    }];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"Noti" object:nil];
}

- (void)viewWillAppear:(BOOL)animated{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notiAction) name:@"Noti" object:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor blueColor];
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
