//
//  CallCAndCppHelper.m
//  SwiftDemo
//
//  Created by Van Zhang on 2023/3/9.
//

#import "CallCAndCppHelper.h"
#import <NKTestOCFramework/NKTestOCFramework.h>

@implementation CallCAndCppHelper
+ (void)excuteCHandler{
    NSLog(@"加法:\(%d)",addFunc(extern_int_value, 2));
    caculateDemo1();
    caculateDemo2();
}

+ (void)excuteCppHandler{
    [CalculatorCppHandler doSomethingForCppClass];
}
@end
