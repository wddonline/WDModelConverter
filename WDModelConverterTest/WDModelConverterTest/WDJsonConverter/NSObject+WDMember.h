//
//  NSObject+WDMember.h
//  WDJsonConverter
//
//  Created by richard on 16-1-22.
//  Copyright (c) 2015 Richard Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WDIvar.h"
#import "WDMethod.h"

/**
 *  遍历所有类的block（父类）
 */
typedef void (^WDClassesBlock)(Class c, BOOL *stop);

@interface NSObject (WDMember)

/**
 *  遍历所有的成员变量
 */
- (void)enumerateIvarsWithBlock:(WDIvarsBlock)block;

/**
 *  遍历所有的方法
 */
- (void)enumerateMethodsWithBlock:(WDMethodsBlock)block;

/**
 *  遍历所有的类
 */
- (void)enumerateClassesWithBlock:(WDClassesBlock)block;
@end
