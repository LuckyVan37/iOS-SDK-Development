//
//  Calculator.h
//  NKTestOCLib
//
//  Created by Van Zhang on 2023/3/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject
- (CGFloat)addWithA:(CGFloat)a andB:(CGFloat)b;
- (CGFloat)subtractWithA:(CGFloat)a andB:(CGFloat)b;
- (CGFloat)multiplyWithA:(CGFloat)a andB:(CGFloat)b;
- (CGFloat)divideWithA:(CGFloat)a andB:(CGFloat)b;
@end

NS_ASSUME_NONNULL_END
