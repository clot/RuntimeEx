//
//  Tools.h
//  FoundationEx
//
//  Created by jinjunhua on 2016/12/7.
//  Copyright © 2016年 jinjunhua. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tools : NSObject

+ (NSArray *)obtainSubClassListOfClass:(Class)baseClass;

+ (Class)createSubClassWithName:(NSString *)className OfSuperClass:(Class)superClass;

@end
