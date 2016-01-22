//
//  WDMember.m
//  WDJsonConverter
//
//  Created by richard on 16-1-22.
//  Copyright (c) 2015 Richard Wang. All rights reserved.
//

#import "WDMember.h"
#import "WDJsonConverter.h"

@implementation WDMember
/**
 *  初始化
 *
 *  @param srcObject 来源于哪个对象
 *
 *  @return 初始化好的对象
 */
- (instancetype)initWithSrcObject:(id)srcObject
{
    if (self = [super init]) {
        _srcObject = srcObject;
    }
    return self;
}

- (void)setSrcClass:(Class)srcClass
{
    _srcClass = srcClass;
    
    _srcClassFromFoundation = [NSStringFromClass(srcClass) hasPrefix:@"NS"];
}

WDLogAllIvrs
@end
