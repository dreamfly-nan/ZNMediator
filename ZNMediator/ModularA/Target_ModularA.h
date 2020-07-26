//
//  ModularA.h
//  ZNMediator
//
//  Created by 郑楠楠 on 2020/7/23.
//  Copyright © 2020 郑楠楠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

FOUNDATION_EXPORT NSString * const kMyConstantString;

@interface Target_ModularA : NSObject

/// 登录页
/// @param account <#account description#>
- (UIViewController *)action_loginWithAccount:(NSString *) account;

@end

NS_ASSUME_NONNULL_END
