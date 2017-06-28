//
//  Question.m
//  2w1d3_mathsGame_Part2
//
//  Created by Seantastic31 on 28/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        //int first = arc4random_uniform(90)+10;
        //int second = arc4random_uniform(90)+10;
        
        _leftValue = arc4random_uniform(90)+10;
        _rightValue = arc4random_uniform(90)+10;
        
        //_question = [NSString stringWithFormat:@"%i + %i = ?", first, second];
        //_answer = first + second;
        _startTime = [NSDate date];
    }
    return self;
}

- (NSInteger)answer
{
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)answerTime
{
    NSTimeInterval timeInterval = [self.endTime timeIntervalSinceDate:self.startTime];
    return timeInterval;
}

- (void)generateQuestion
{
    
}

@end
