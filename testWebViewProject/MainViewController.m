//
//  MainViewController.m
//  testWebViewProject
//
//  Created by Elik Katz on 11/19/13.
//  Copyright (c) 2013 Elik Katz. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
//        [[segue destinationViewController] setDelegate:self];
        FlipsideViewController * flip = [segue destinationViewController];
        [flip setDelegate:self];
        [flip setFileName:@"samplePDF"];
    }else if ([[segue identifier] isEqualToString:@"valid"]) {
        FlipsideViewController * flip = [segue destinationViewController];
        [flip setDelegate:self];
        [flip setFileName:@"samplePDF"];
    }else if ([[segue identifier] isEqualToString:@"corrupted"]) {
        FlipsideViewController * flip = [segue destinationViewController];
        [flip setDelegate:self];
        [flip setFileName:@"Book1"];
    }
}

@end
