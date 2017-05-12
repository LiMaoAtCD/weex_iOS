//
//  WXBaseModule.m
//  weex_iOS
//
//  Created by AlienLi on 2017/5/12.
//  Copyright © 2017年 MarcoLi. All rights reserved.
//

#import "WXBaseModule.h"
#import <WeexSDK/WeexSDK.h>

@implementation WXBaseModule
@synthesize weexInstance;

WX_EXPORT_METHOD_SYNC(@selector(getUserInfo))

-(NSString*)getUserInfo {
    return @"limao";
}
@end
