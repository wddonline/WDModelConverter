//
//  ViewController.m
//  WDModelConverterTest
//
//  Created by richard wang on 1/22/16.
//  Copyright © 2016 richard wang. All rights reserved.
//

#import "ViewController.h"
#import "WDJsonConverter.h"
#import "WDJsonConverter.h"
#import "WDMan.h"
#import "WDDog.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableDictionary *manDict = [NSMutableDictionary dictionary];
    manDict[@"name"] = @"jack";
    manDict[@"job"] = @"worker";
    NSMutableArray *dogsArr = [NSMutableArray array];
    for (int i = 0; i < 5; i++) {
        NSMutableDictionary *dogDict = [NSMutableDictionary dictionary];
        dogDict[@"name"] = [NSString stringWithFormat:@"dog%d", i];
        dogDict[@"weight"] = [NSString stringWithFormat:@"%d", arc4random_uniform(15)];
        dogDict[@"color"] = @"yellow";
        [dogsArr addObject:dogDict];
    }
    manDict[@"dogs"] = dogsArr;
    
    WDMan *man = [WDMan objectWithKeyValues:manDict];
//    [WDDog objectArrayWithFile:]
//    [WDDog objectArrayWithFilename:]
   NSArray *dogs = [WDDog objectArrayWithKeyValuesArray:dogsArr];
//    [WDDog objectWithFile:];
//    [WDDog objectWithFilename:]
//    [WDDog objectWithKeyValues:];

}

@end
