//
//  BNRViewController.m
//  Quiz
//
//  Created by mm on 6/3/14.
//  Copyright (c) 2014 mm. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *questionLable;
@property (nonatomic, weak) IBOutlet UILabel *answerLable;

@end

@implementation BNRQuizViewController

- (IBAction)showQestion:(id)sender
{
    // Step to the next question
    self.currentQuestionIndex++;

    // Am I the last question?
    if (self.currentQuestionIndex == [self.questions count]) {
        // Go back to the first question
        self.currentQuestionIndex = 0;
    }

    // Get the string at that index in the question array
    NSString *question = self.questions[self.currentQuestionIndex];

    // Display the string in the question label
    self.questionLable.text = question;

    // Reset the answer label
    self.answerLable.text = @"???";
}

- (IBAction)showAnswer:(id)sender
{
    // What is the answer to the current question
    NSString *answer = self.answers[_currentQuestionIndex];

    // Display it in the answer label
    self.answerLable.text = answer;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    // Call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];

    if (self) {
        // Create two arrays filled with questions and answers
        // and make the pointers point to them
        self.questions = @[@"From what is cognac made?",
                           @"What is 7 + 7?",
                           @"What is the capital of Vermont?"];

        self.answers = @[@"Grapes",
                         @"14",
                         @"Montpelier"];
    }

    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
