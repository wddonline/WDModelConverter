//
//  NSObject+WDCoding.m
//  WDJsonConverter
//
//  Created by richard on 16-1-22.
//  Copyright (c) 2015 Richard Wang. All rights reserved.
//

#import "NSObject+WDCoding.h"
#import "NSObject+WDMember.h"

@implementation NSObject (WDCoding)
/**
 *  编码（将对象写入文件中）
 */
- (void)encode:(NSCoder *)encoder
{
    [self enumerateIvarsWithBlock:^(WDIvar *ivar, BOOL *stop) {
        if (ivar.isSrcClassFromFoundation) return;
        [encoder encodeObject:ivar.value forKey:ivar.name];
    }];
}

/**
 *  解码（从文件中解析对象）
 */
- (void)decode:(NSCoder *)decoder
{
    [self enumerateIvarsWithBlock:^(WDIvar *ivar, BOOL *stop) {
        if (ivar.isSrcClassFromFoundation) return;
        ivar.value = [decoder decodeObjectForKey:ivar.name];
    }];
}
@end
