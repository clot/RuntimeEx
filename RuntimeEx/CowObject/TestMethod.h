//
//  TestMethod.h
//  RuntimeEx
//
//  Created by jinjunhua on 2016/12/20.
//  Copyright © 2016年 clot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface TestMethod : NSObject

- (instancetype)initWithMethod:(Method)method;

@end
