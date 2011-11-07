//
//  QuizAppDelegate.m
//  Quiz
//
//  Created by joeconway on 7/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "QuizAppDelegate.h"

@implementation QuizAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    [self.window makeKeyAndVisible];
    return YES;
}

- (id)init
{
    self = [super init];
    if(self)
    {
        // Create two arrays
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        // Add questions and answers 
        [questions addObject:@"What is 7+7?"];
        [answers addObject:@"14"];
        [questions addObject:@"What is the capital of Vermont?"];
        [answers addObject:@"Montpelier"];
        [questions addObject:@"From what is cognac made?"];
        [answers addObject:@"Grapes"];
    }
    
    return self;
}

- (IBAction)showQuestion:(id)sender
{
    currentQuestionIndex++;
    if (currentQuestionIndex == [questions count]) {
        currentQuestionIndex=0;
    }
    
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    // Log
    NSLog(@"displaying question: %@", question);
    
    // Set the question label
    [questionField setText:question];
    // Clear the answer label
    [answerField setText:@"???"];
}

- (IBAction)showAnswer:(id)sender
{
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    // Log
    NSLog(@"displaying answer: %@", answer);
    
    // Display the answer in the field
    [answerField setText:answer];
}

@end
