//
//  Logger.h
//  NKTestOCLib
//
//  Created by Van Zhang on 2023/3/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Logger : NSObject
+ (void)logWithString:(NSString *)log;
+ (NSString *)testString:(NSString *)string;
@end

NS_ASSUME_NONNULL_END
