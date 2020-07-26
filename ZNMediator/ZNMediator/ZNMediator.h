//
//  ZNMediator.h
//  ZNMediator
//
//  Created by 郑楠楠 on 2020/7/23.
//  Copyright © 2020 郑楠楠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZNMediatorDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZNMediator : NSObject <ZNMediatorDelegate>

///target的前缀,默认为     Target_
@property(nonatomic , copy) NSString * targetPrefix;

///事件的前缀,默认为 action_
@property(nonatomic , copy) NSString * actionPrefix;

+ (instancetype _Nonnull)sharedInstance;

@end

NS_ASSUME_NONNULL_END
