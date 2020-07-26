//
//  ModularA.m
//  ZNMediator
//
//  Created by 郑楠楠 on 2020/7/23.
//  Copyright © 2020 郑楠楠. All rights reserved.
//

#import "Target_ModularA.h"
#import "LoginViewController.h"

NSString * const kMyConstantString = @"Hello";

@implementation Target_ModularA

/// 登录页
/// @param account <#account description#>
- (UIViewController *)action_loginWithAccount:(NSString *) account{
    LoginViewController * controller = [[LoginViewController alloc] initWithAccount:account];
    NSLog(@"kMyConstantString = %@",kMyConstantString);
    return controller;
}

@end
