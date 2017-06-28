//
//  main.m
//  2w1d3_mathsGame_Part2
//
//  Created by Seantastic31 on 28/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Question.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        ScoreKeeper *scorekeeper = [[ScoreKeeper alloc]init];
        QuestionManager *questionmanager = [[QuestionManager alloc]init];
        QuestionFactory *questionfactory = [[QuestionFactory alloc]init];
        
        NSLog(@"MATHS!");
        
        while (gameOn){
            
            NSLog(@"Type 'quit' to end game\n");
            
            // replace with QuestionFactory
            Question *question = [questionfactory generateRandomQuestion];
            NSLog(@"%@", question.question);
            
            // ask question
            //Question *question = [[Question alloc]init];
            //NSLog(@"Your question is: %@", question.question);
            // add question for timer
            [questionmanager.questions addObject:question];
            // read response
            NSString *inputString = [InputHandler cleanInput];
            
            // check 'quit' when input is a string
            if ([inputString isEqualToString:@"quit"])
            {
                gameOn = NO;
                NSLog(@"%@", [scorekeeper score]);
                NSLog(@"%@", [questionmanager timeOutput]);
                NSLog(@"Thank you for playing");
                break;
            }
            
            // else check answer
            else
            {
                // need to convert input to NSInteger to compare to answer property
                NSInteger inputNumber = inputString.integerValue;
                //NSLog(@"The answer you gave is: %li", inputNumber);
                
                // check answer
                // right
                if (inputNumber == question.answer)
                {
                    scorekeeper.right += 1;
                    NSLog(@"You are correct!");
                }
                
                // not right
                else
                {
                    scorekeeper.wrong += 1;
                    NSLog(@"You are wrong!");
                }
                
                // log updated score
                //[scorekeeper score];
                //[questionmanager timeOutput];
                
                NSLog(@"%@", [scorekeeper score]);
                NSLog(@"%@", [questionmanager timeOutput]);
                
            }
            continue;
        }
    }
    return 0;
}
