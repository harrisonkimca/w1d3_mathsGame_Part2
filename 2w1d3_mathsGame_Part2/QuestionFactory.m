//
//  QuestionFactory.m
//  2w1d3_mathsGame_Part2
//
//  Created by Seantastic31 on 28/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (Question*)generateRandomQuestion
{
    // subclass array names
    NSArray *questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    
    // pick random subclass name from array
    NSString *className = questionSubclassNames[arc4random_uniform(4)];
    
    // generate random question based on subclass
    Question *randomQuestion = [[NSClassFromString(className) alloc]init];
    
    return randomQuestion;
}

@end
