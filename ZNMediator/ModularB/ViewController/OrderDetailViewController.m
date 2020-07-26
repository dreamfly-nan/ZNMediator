//
//  OrderDetailViewController.m
//  ZNMediator
//
//  Created by 郑楠楠 on 2020/7/23.
//  Copyright © 2020 郑楠楠. All rights reserved.
//

#import "OrderDetailViewController.h"

@interface OrderDetailViewController ()

@property (nonatomic , strong) UILabel * orderNumLabel;

/// 订单号
@property (nonatomic , copy) NSString * orderNum;

@end

@implementation OrderDetailViewController

- (instancetype)initWithOrderNum:(NSString *)orderNum{
    self.orderNum = orderNum;
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"订单详情";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.orderNumLabel];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.orderNumLabel.frame = self.view.bounds;
    self.orderNumLabel.text = self.orderNum;
}

#pragma mark - get

- (UILabel *)orderNumLabel{
    if (!_orderNumLabel) {
        _orderNumLabel = [UILabel new];
        _orderNumLabel.font = [UIFont systemFontOfSize:15];
        _orderNumLabel.textColor = [UIColor blackColor];
        _orderNumLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _orderNumLabel;
}

@end
