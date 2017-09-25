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
    
//     有其他控件依赖时需要宽
     UILabel *bikeTitleLabel = [UILabel new];
    [bikeTitleLabel setText:@"bikeTitle"];
    [bikeTitleLabel setTextColor:[UIColor blueColor]];
     [self.view addSubview:bikeTitleLabel];
     [bikeTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
     //        make.left.equalTo(spaceLineImgView.mas_centerX).offset(-4);
     //        make.centerY.offset(0);
     make.right.offset(0);
     make.top.offset(84);
     //        make.size.mas_equalTo(CGSizeMake(40, 40));
//             make.height.equalTo(@60);
     }];
     
    UILabel *bikeNOLabel = [UILabel new];
    [bikeNOLabel setText:@"No"];
    [bikeNOLabel setTextColor:[UIColor blueColor]];
     [self.view addSubview:bikeNOLabel];
     [bikeNOLabel mas_makeConstraints:^(MASConstraintMaker *make) {
         make.top.equalTo(bikeTitleLabel.mas_bottom);
     make.centerX.equalTo(bikeTitleLabel);
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
