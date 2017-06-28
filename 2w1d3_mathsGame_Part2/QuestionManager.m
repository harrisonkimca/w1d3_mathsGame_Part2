//
//  QuestionManager.m
//  2w1d3_mathsGame_Part2
//
//  Created by Seantastic31 on 28/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc]init];
    }
    return self;
}

- (NSString*)timeOutput
{
    int totalTime = 0;
    for (Question *currentQuestion in self.questions)
    {
        totalTime += [currentQuestion answerTime];
    }
    int averageTime = totalTime / [self.questions count];
    NSString *outputTime = [NSString stringWithFormat:@"total time: %ds, average time: %ds", totalTime, averageTime];
    //NSLog(@"%@", outputTime);
    return outputTime;
}

@end
