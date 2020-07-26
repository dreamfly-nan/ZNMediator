//
//  ZNMediator+ModularA.m
//  ZNMediator
//
//  Created by 郑楠楠 on 2020/7/23.
//  Copyright © 2020 郑楠楠. All rights reserved.
//

#import "ZNMediator+ModularA.h"

NSString * const kZNMediatorTargetA = @"ModularA";

@implementation ZNMediator (ModularA)

/// 登录回填账号
/// @param account <#account description#>
- (UIViewController *)loginWithAccount:(NSString *) account{
   return [self performTarget:kZNMediatorTargetA action:@"loginWithAccount:" params:@[account] shouldCacheTarget:YES];
}

@end
