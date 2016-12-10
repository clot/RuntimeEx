//
//  Tools.m
//  FoundationEx
//
//  Created by jinjunhua on 2016/12/7.
//  Copyright © 2016年 jinjunhua. All rights reserved.
//

#import "Tools.h"
#import <objc/runtime.h>
#import "CowHeader.h"

@implementation Tools

+ (NSArray *)obtainSubClassListOfClass:(Class)baseClass
{
    Class *class = NULL;
    int count, size;
    do
    {
        count = objc_getClassList(NULL, 0);
        class = (__unsafe_unretained Class *)realloc(class, count * sizeof(*class));
        size = objc_getClassList(class, count);
    } while(size != count);
    
    NSMutableArray *array = [NSMutableArray array];
    for(int i = 0; i < count; i++)
    {
        Class candidate = class[i];
        if (candidate == baseClass) continue;
        Class superclass = candidate;
        while(superclass)
        {
            if(superclass == baseClass)
            {
                [array addObject: candidate];
                break;
            }
            superclass = class_getSuperclass(superclass);
        }
    }
    free(class);
    return array;
}

+ (Class)createSubClassWithName:(NSString *)className OfSuperClass:(Class)superClass
{
    Class subClass = objc_allocateClassPair(superClass, [className UTF8String], 0);
    objc_registerClassPair(subClass);
    if (subClass) return subClass;
    else return nil;
}


@end
