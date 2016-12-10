//
//  CowObject.m
//  FoundationEx
//
//  Created by jinjunhua on 2016/12/7.
//  Copyright © 2016年 jinjunhua. All rights reserved.
//

#import "CowObject.h"
#import <objc/runtime.h>

@interface CowObject ()

@property (nonatomic, unsafe_unretained) Class *cowClass;

@end

@implementation CowObject

- (void)yell
{
    NSLog(@"mou mou mou~");
}

@end
