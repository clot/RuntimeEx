//
//  main.m
//  RuntimeEx
//
//  Created by clot on 2016/12/10.
//  Copyright © 2016年 clot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CowHeader.h"
#import <objc/runtime.h>
#import "Tools.h"


void getSubClassList()
{
    // waste much time
    NSArray *classList;
    classList = [Tools obtainSubClassListOfClass:[CowObject class]];
    NSLog(@"Class list: %@", classList);
}

void createSubClass()
{
    Class Yak = [Tools createSubClassWithName:@"Yak" OfSuperClass:[CowObject class]];
    NSArray *classList = [Tools obtainSubClassListOfClass:[CowObject class]];
    NSLog(@"Class List: %@", classList);
    id littleYak = [[Yak alloc] init];
    [littleYak yell];
    objc_disposeClassPair(Yak);
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        getSubClassList();
        
        createSubClass();
    }
    return 0;
}
