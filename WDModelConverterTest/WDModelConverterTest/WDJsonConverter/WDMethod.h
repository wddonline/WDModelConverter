//
//  WDMethod.h
//  WDJsonConverter
//
//  Created by richard on 16-1-22.
//  Copyright (c) 2015 Richard Wang. All rights reserved.
//

#import "WDMember.h"
/**
 *  包装一个方法
 */
@interface WDMethod : WDMember
/** 方法 */
@property (nonatomic, assign) Method method;
/** 方法名 */
@property (nonatomic, assign, readonly) SEL selector;
/** 所有的参数（都是WDArgument对象） */
@property (nonatomic, strong, readonly) NSArray *arguments;
/** 返回值类型 */
@property (nonatomic, copy, readonly) NSString *returnType;
/**
 *  初始化
 *
 *  @param method    方法
 *  @param srcObject 哪个对象的方法
 *
 *  @return 初始化好的对象
 */
- (instancetype)initWithMethod:(Method)method srcObject:(id)srcObject;
@end

/**
 *  遍历方法用的block
 *
 *  @param method 方法的包装对象
 *  @param stop       YES代表停止遍历，NO代表继续遍历
 */
typedef void (^WDMethodsBlock)(WDMethod *method, BOOL *stop);