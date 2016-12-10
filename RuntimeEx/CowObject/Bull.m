//
//  Bull.m
//  FoundationEx
//
//  Created by jinjunhua on 2016/12/7.
//  Copyright © 2016年 jinjunhua. All rights reserved.
//

#import "Bull.h"

@interface Bull ()
// if instance use object_setClass that will crash at dealloc time; because property.

//@property (nonatomic, strong) NSString *myName;
//@property (nonatomic, assign) int age;

@end

@implementation Bull

- (void)yell
{
    NSLog(@"Moooooouuuu~~");
}

- (void)run
{
    NSLog(@"~~~~~~~~~~~~~");
}

- (instancetype)init
{
    self = [super init];
    if (self)
    {
//        _myName = @"Meo";
//        _age = 10;
    }
    return self;
}

@end
