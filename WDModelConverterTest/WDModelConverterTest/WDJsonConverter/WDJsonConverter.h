//
//  WDExtension.h
//  WDJsonConverter
//
//  Created by richard on 16-1-22.
//  Copyright (c) 2015 Richard Wang. All rights reserved.
//

#import "WDTypeEncoding.h"
#import "NSObject+WDCoding.h"
#import "NSObject+WDMember.h"
#import "NSObject+WDKeyValue.h"

#define WDLogAllIvrs \
- (NSString *)description \
{ \
    return [self keyValues].description; \
}
