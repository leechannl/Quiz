//
//  BNRViewController.m
//  Quiz
//
//  Created by mm on 6/3/14.
//  Copyright (c) 2014 mm. All rights reserved.
//

#import "BNRViewController.h"

@interface BNRViewController ()

@property (nonatomic, weak) IBOutlet UILabel *questionLable;
@property (nonatomic, weak) IBOutlet UILabel *answerLable;

@end

@implementation BNRViewController

- (IBAction)showQestion:(id)sender
{

}

- (IBAction)showAnswer:(id)sender
{

}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
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
