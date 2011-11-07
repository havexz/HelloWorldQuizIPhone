//
//  QuizAppDelegate.h
//  Quiz
//
//  Created by joeconway on 7/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizAppDelegate : NSObject <UIApplicationDelegate>
{
    IBOutlet UIWindow *window;
    int currentQuestionIndex;
    
    // The Model Objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}
@property (retain, nonatomic) UIWindow *window;

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
