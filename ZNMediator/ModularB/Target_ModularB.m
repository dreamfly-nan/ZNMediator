//
//  ModularB.m
//  ZNMediator
//
//  Created by 郑楠楠 on 2020/7/23.
//  Copyright © 2020 郑楠楠. All rights reserved.
//

#import "Target_ModularB.h"
#import "OrderDetailViewController.h"

@implementation Target_ModularB

/// 跳转订单详情页面
/// @param orderNum <#orderNum description#>
- (UIViewController *)action_orderDetailWithOrderNum:(NSString *) orderNum{
    OrderDetailViewController * viewController = [[OrderDetailViewController alloc] initWithOrderNum:orderNum];
    return viewController;
}

- (BOOL)action_outTimeOrderWithOrderNum:(NSString *) orderNum isNow:(BOOL) isNow{
    if ([orderNum isEqualToString:@"1234"]) {
        return YES;
    }
    return NO;
}

@end
