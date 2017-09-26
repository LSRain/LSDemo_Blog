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

@interface ViewController ()

@end

@implementation ViewController


- (void)notiBtnClick{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Noti" object:nil];
    [self.navigationController pushViewController:[NoticeViewController new] animated:YES];
}

- (void)pushBtnClick{
    [self.navigationController pushViewController:[ConstraintViewController new] animated:YES];
}

- (void)removeObserver:(id)observer{
    NSLog(@"====%@ remove===", [observer class]);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *pushBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 40, 40)];
    pushBtn.backgroundColor = [UIColor redColor];
    [pushBtn setTitle:@"push" forState:UIControlStateNormal];
    [self.view addSubview:pushBtn];
    [pushBtn addTarget:self action:@selector(pushBtnClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *notiBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 40, 40)];
    notiBtn.backgroundColor = [UIColor redColor];
    [notiBtn setTitle:@"noti" forState:UIControlStateNormal];
    [self.view addSubview:notiBtn];
    [notiBtn addTarget:self action:@selector(notiBtnClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
