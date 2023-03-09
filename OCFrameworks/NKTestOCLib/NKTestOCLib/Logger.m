//
//  Logger.m
//  NKTestOCLib
//
//  Created by Van Zhang on 2023/3/9.
//

#import "Logger.h"

@implementation Logger
+ (void)logWithString:(NSString *)log{
    NSLog(@"Log:%@",log);
    #if DEBUG
    NSLog(@"%s",__func__);
    #endif
}

+ (NSString *)testString:(NSString *)string {
    #if DEBUG
    NSLog(@"%s",__func__);
    #endif
    return [@"NKTestOCFramework: " stringByAppendingString:string];
}

@end

@implementation NSDictionary (Log)
- (NSString *)descriptionWithLocale:(id)locale{
    NSMutableString *string = [NSMutableString string];
    
    [string appendString:@"{\n"];
    
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        [string appendFormat:@"\t%@", key];
        [string appendString:@" : "];
        [string appendFormat:@"%@,\n", obj];
    }];
    
    [string appendString:@"}"];
    
    NSRange range = [string rangeOfString:@"," options:NSBackwardsSearch];
    if (range.location != NSNotFound)
        [string deleteCharactersInRange:range];
    
    return string;
}

@end

@implementation NSArray (Log)
- (NSString *)descriptionWithLocale:(id)locale
{
    NSMutableString *string = [NSMutableString string];
    
    [string appendString:@"[\n"];
    
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [string appendFormat:@"\t%@,\n", obj];
    }];
    
    [string appendString:@"]"];
    
    NSRange range = [string rangeOfString:@"," options:NSBackwardsSearch];
    if (range.location != NSNotFound)
        [string deleteCharactersInRange:range];
    
    return string;
}
@end
