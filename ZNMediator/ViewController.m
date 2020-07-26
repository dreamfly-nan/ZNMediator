//
//  ViewController.m
//  ZNMediator
//
//  Created by 郑楠楠 on 2020/7/23.
//  Copyright © 2020 郑楠楠. All rights reserved.
//

#import "ViewController.h"
#import "ZNMediator+ModularB.h"
#import "ZNMediator+ModularA.h"

@interface ViewController ()

@property (nonatomic , strong) UIButton * modularABtn;

@property (nonatomic , strong) UIButton * modularBBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.modularABtn];
    [self.view addSubview:self.modularBBtn];
    // Do any additional setup after loading the view.
}

- (void)dealloc{
    NSLog(@"ViewController被释放了");
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.modularABtn.frame = CGRectMake(100, 100, 100, 100);
    self.modularBBtn.frame = CGRectMake(100, 200, 100, 100);
}

- (void)modularABtnAction{
  UIViewController * controller = [[ZNMediator sharedInstance] loginWithAccount:@"测试账号"];
  [self.navigationController pushViewController:controller animated:YES];
}

- (void)modularBBtnAction{
    BOOL outTime = [[ZNMediator sharedInstance] outTimeOrderWithOrderNum:@"1234"];
//    NSLog(@"%@",outTime);
//    UIViewController * controller = [[ZNMediator sharedInstance] orderDetailControllerWithOrderNum:@"订单号"];
//    [self.navigationController pushViewController:controller animated:YES];
}

#pragma mark - get

- (UIButton *)modularABtn{
    if (!_modularABtn) {
        _modularABtn = [UIButton new];
        [_modularABtn setTitle:@"组件A" forState:UIControlStateNormal];
        [_modularABtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _modularABtn.backgroundColor = [UIColor redColor];
        [_modularABtn addTarget:self action:@selector(modularABtnAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _modularABtn;
}

- (UIButton *)modularBBtn{
    if (!_modularBBtn) {
        _modularBBtn = [UIButton new];
        [_modularBBtn setTitle:@"组件B" forState:UIControlStateNormal];
        [_modularBBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _modularBBtn.backgroundColor = [UIColor yellowColor];
        [_modularBBtn addTarget:self action:@selector(modularBBtnAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _modularBBtn;
}


@end
