//
//  WCoverModule.m
//  weex_iOS
//
//  Created by limao on 2017/5/12.
//  Copyright © 2017年 MarcoLi. All rights reserved.
//

#import "WCoverModule.h"
#import <WeexSDK/WeexSDK.h>

@implementation WCoverModule
@synthesize weexInstance;

WX_EXPORT_METHOD(@selector(info:))



-(void)info:(WXModuleCallback)callback {
    NSLog(@"weex testtest");
    callback(@"weex test");
}
@end
