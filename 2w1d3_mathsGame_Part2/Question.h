//
//  Question.h
//  2w1d3_mathsGame_Part2
//
//  Created by Seantastic31 on 28/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (strong, nonatomic) NSString *question;
@property (nonatomic) NSInteger answer;
@property (strong, nonatomic) NSDate *startTime;
@property (strong, nonatomic) NSDate *endTime;
@property (nonatomic) float leftValue;
@property (nonatomic) float rightValue;

- (NSTimeInterval)answerTime;
- (void)generateQuestion;

@end
