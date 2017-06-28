//
//  ScoreKeeper.m
//  2w1d3_mathsGame_Part2
//
//  Created by Seantastic31 on 28/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _right = 0;
        _wrong = 0;
    }
    return self;
}

- (NSString*)score
{
    NSString *score = [[NSString alloc]init];
    
    if (self.right != 0 || self.wrong != 0)
    {
        float percent = self.right/((float)self.right + (float)self.wrong)*100;
        //NSLog(@"score %i right, %i wrong, ---- %.0f%%", self.right, self.wrong, percent);
        
        score = ([NSString stringWithFormat:@"score %i right, %i wrong, ---- %.0f%%", self.right, self.wrong, percent]);
    }
    
    return score;
    
//    else
//    {
//        NSLog(@"score %i right, %i wrong", self.right, self.wrong);
//    }
}

@end
