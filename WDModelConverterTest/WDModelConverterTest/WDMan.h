//
//  WDMan.h
//  WDModelConverterTest
//
//  Created by richard wang on 1/22/16.
//  Copyright © 2016 richard wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class WDDog;

@interface WDMan : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *job;
@property (nonatomic, strong) NSArray *dogs;

@end
