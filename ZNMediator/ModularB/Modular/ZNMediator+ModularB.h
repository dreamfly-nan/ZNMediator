//
//  ZNMediator+ModularB.h
//  ZNMediator
//
//  Created by 郑楠楠 on 2020/7/23.
//  Copyright © 2020 郑楠楠. All rights reserved.
//


#import "ZNMediator.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZNMediator (ModularB)

/// 跳转订单详情页
/// @param orderNum <#orderNum description#>
- (UIViewController *)orderDetailControllerWithOrderNum:(NSString *) orderNum;

- (BOOL)outTimeOrderWithOrderNum:(NSString *) orderNum;

@end

NS_ASSUME_NONNULL_END
