//
//  ZNMediator+ModularB.m
//  ZNMediator
//
//  Created by 郑楠楠 on 2020/7/23.
//  Copyright © 2020 郑楠楠. All rights reserved.
//

#import "ZNMediator+ModularB.h"

NSString * const kZNMediatorTargetB = @"ModularB";

@implementation ZNMediator (ModularB)

/// 跳转订单详情页
/// @param orderNum <#orderNum description#>
- (UIViewController *)orderDetailControllerWithOrderNum:(NSString *) orderNum{
    return [self performTarget:kZNMediatorTargetB action:@"orderDetailWithOrderNum:" params:@[orderNum] shouldCacheTarget:NO];
}

- (BOOL)outTimeOrderWithOrderNum:(NSString *) orderNum{
    return [self performTarget:kZNMediatorTargetB action:@"outTimeOrderWithOrderNum:isNow:" params:@[@"1234",@(NO)] shouldCacheTarget:NO];
}

@end
