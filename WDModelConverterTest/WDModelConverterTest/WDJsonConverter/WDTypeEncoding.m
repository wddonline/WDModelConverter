//
//  WDTypeEncoding.m
//  WDJsonConverter
//
//  Created by richard on 16-1-22.
//  Copyright (c) 2015 Richard Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  成员变量类型（属性类型）
 */
NSString *const WDTypeInt = @"i";
NSString *const WDTypeFloat = @"f";
NSString *const WDTypeDouble = @"d";
NSString *const WDTypeLong = @"q";
NSString *const WDTypeLongLong = @"q";
NSString *const WDTypeChar = @"c";
NSString *const WDTypeBOOL = @"c";
NSString *const WDTypePointer = @"*";

NSString *const WDTypeIvar = @"^{objc_ivar=}";
NSString *const WDTypeMethod = @"^{objc_method=}";
NSString *const WDTypeBlock = @"@?";
NSString *const WDTypeClass = @"#";
NSString *const WDTypeSEL = @":";
NSString *const WDTypeId = @"@";

/**
 *  返回值类型(如果是unsigned，就是大写)
 */
NSString *const WDReturnTypeVoid = @"v";
NSString *const WDReturnTypeObject = @"@";



