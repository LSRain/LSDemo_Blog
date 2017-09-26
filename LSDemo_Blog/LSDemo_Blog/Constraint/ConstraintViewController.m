//
//  ConstraintViewController.m
//  LSDemo_Blog
//
//  Created by WangBiao on 2017/9/25.
//  Copyright © 2017年 LSRain. All rights reserved.
//

#import "ConstraintViewController.h"
#import <Masonry.h>

@interface ConstraintViewController ()

@end

@implementation ConstraintViewController

#pragma mark - UI setup

- (void)setupUI{
    UILabel *bikeTitleLabel = [UILabel new];
    [bikeTitleLabel setText:@"bikeTitle"];
    [bikeTitleLabel setTextColor:[UIColor blueColor]];
    [self.view addSubview:bikeTitleLabel];
    [bikeTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.offset(0);
        make.top.offset(84);
    }];
     
    UILabel *bikeNOLabel = [UILabel new];
    [bikeNOLabel setText:@"No"];
    [bikeNOLabel setTextColor:[UIColor blueColor]];
    [self.view addSubview:bikeNOLabel];
    [bikeNOLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(bikeTitleLabel);
        make.left.equalTo(bikeTitleLabel.mas_right).offset(10);
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor redColor];
    
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
