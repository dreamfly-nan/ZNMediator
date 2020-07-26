//
//  LoginViewController.m
//  ZNMediator
//
//  Created by 郑楠楠 on 2020/7/24.
//  Copyright © 2020 郑楠楠. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@property (nonatomic , strong) UILabel * textLabel;

@property(nonatomic , strong)UIButton * testBtn;

@end

@implementation LoginViewController

- (instancetype)initWithAccount:(NSString *)account{
    self.textLabel.text = account;
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.textLabel];
    [self.view addSubview:self.testBtn];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.textLabel.frame = self.view.bounds;
    self.testBtn.frame = CGRectMake(100, 100, 100, 100);
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear");
}

- (void)testAction{
    NSLog(@"testAction");
}

#pragma mark - get

-  (UILabel *)textLabel{
    if (!_textLabel) {
        _textLabel = [UILabel new];
        _textLabel.font = [UIFont systemFontOfSize:15];
        _textLabel.text = @"登录";
        _textLabel.textAlignment = NSTextAlignmentCenter;
        _textLabel.textColor = [UIColor blackColor];
        _textLabel.backgroundColor = [UIColor whiteColor];
    }
    return _textLabel;
}

- (UIButton *)testBtn{
    if (!_testBtn) {
        _testBtn = [UIButton new];
        [_testBtn setTitle:@"测试" forState:UIControlStateNormal];
        _testBtn.backgroundColor = [UIColor redColor];
        
        [_testBtn addTarget:self action:@selector(testAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _testBtn;
}

@end
