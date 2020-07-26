//
//  ZNMediator+ModularA.h
//  ZNMediator
//
//  Created by 郑楠楠 on 2020/7/23.
//  Copyright © 2020 郑楠楠. All rights reserved.
//

#import "ZNMediator.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZNMediator (ModularA)

/// 登录回填账号
/// @param account <#account description#>
- (UIViewController *)loginWithAccount:(NSString *) account;

@end

NS_ASSUME_NONNULL_END
