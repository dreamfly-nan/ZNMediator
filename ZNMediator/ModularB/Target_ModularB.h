//
//  ModularB.h
//  ZNMediator
//
//  Created by 郑楠楠 on 2020/7/23.
//  Copyright © 2020 郑楠楠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface Target_ModularB : NSObject

/// 跳转订单详情页面
/// @param orderNum <#orderNum description#>
- (UIViewController *)action_orderDetailWithOrderNum:(NSString *) orderNum;

- (BOOL)action_outTimeOrderWithOrderNum:(NSString *) orderNum
                                  isNow:(BOOL) isNow;

@end

NS_ASSUME_NONNULL_END
