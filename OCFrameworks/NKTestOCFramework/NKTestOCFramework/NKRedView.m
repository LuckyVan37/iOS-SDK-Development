//
//  NKRedView.m
//  NKTestOCLib
//
//  Created by Van Zhang on 2023/3/9.
//

#import "NKRedView.h"

@implementation NKRedView
-(instancetype)initWithFrame:(CGRect)frame{
    self =  [super initWithFrame:frame];
    self.backgroundColor = [UIColor redColor];
    return self;
}

+ (instancetype)shared{
    return [[self alloc]initWithFrame:CGRectMake(20, 20, 100, 100)];
}

@end
