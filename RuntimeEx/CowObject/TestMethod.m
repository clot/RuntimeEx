//
//  TestMethod.m
//  RuntimeEx
//
//  Created by jinjunhua on 2016/12/20.
//  Copyright © 2016年 clot. All rights reserved.
//

#import "TestMethod.h"

@interface TestMethod ()

@property (nonatomic, assign) Method method;

@end

@implementation TestMethod

- (instancetype)initWithMethod:(Method)method
{
    self = [super init];
    if (self)
    {
        _method = method;
    }
    return self;
}

- (NSString *)description
{
    SEL selName = method_getName(_method);
    return NSStringFromSelector(selName);
}

@end
