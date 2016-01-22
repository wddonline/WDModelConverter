//
//  WDType.m
//  WDJsonConverter
//
//  Created by richard on 16-1-22.
//  Copyright (c) 2015 Richard Wang. All rights reserved.
//

#import "WDType.h"
#import "WDJsonConverter.h"

@implementation WDType

- (instancetype)initWithCode:(NSString *)code
{
    if (self = [super init]) {
        self.code = code;
    }
    return self;
}

/** 类型标识符 */
- (void)setCode:(NSString *)code
{
    _code = code;
    
    if (_code.length == 0 || [_code isEqualToString:WDTypeSEL] ||
        [_code isEqualToString:WDTypeIvar] ||
        [_code isEqualToString:WDTypeMethod]) {
        _KVCDisabled = YES;
    } else if ([_code hasPrefix:@"@"] && _code.length > 3) {
        // 去掉@"和"，截取中间的类型名称
        _code = [_code substringFromIndex:2];
        _code = [_code substringToIndex:_code.length - 1];
        _typeClass = NSClassFromString(_code);
        
        _fromFoundation = [_code hasPrefix:@"NS"];
    }
}

WDLogAllIvrs
@end
