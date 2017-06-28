//
//  MultiplicationQuestion.m
//  2w1d3_mathsGame_Part2
//
//  Created by Seantastic31 on 28/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion
{
    super.question = [NSString stringWithFormat:@"Your question is: %.f x %.f?", super.leftValue, super.rightValue];
    super.answer = super.leftValue * super.rightValue;
}

@end
