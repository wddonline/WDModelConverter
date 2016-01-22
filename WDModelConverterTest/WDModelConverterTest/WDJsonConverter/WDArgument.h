//
//  WDArgument.h
//  WDJsonConverter
//
//  Created by richard on 16-1-22.
//  Copyright (c) 2015 Richard Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  包装一个方法参数
 */
@interface WDArgument : NSObject
/** 参数的索引 */
@property (nonatomic, assign) int index;
/** 参数类型 */
@property (nonatomic, copy) NSString *type;
@end
