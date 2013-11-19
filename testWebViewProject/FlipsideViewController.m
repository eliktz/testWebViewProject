//
//  FlipsideViewController.m
//  testWebViewProject
//
//  Created by Elik Katz on 11/19/13.
//  Copyright (c) 2013 Elik Katz. All rights reserved.
//

#import "FlipsideViewController.h"

@interface FlipsideViewController ()<UIWebViewDelegate>

@end

@implementation FlipsideViewController

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

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    if (self.fileName==nil) {
        self.fileName=@"samplePDF";
    }
    NSString *path = [[NSBundle mainBundle] pathForResource:self.fileName ofType:@"pdf"];
    NSURL *targetURL = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [self.webView loadRequest:request];
    [self.webView setDelegate:self];
}

-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    
    NSLog(@"Error %@", [error description]);
}
@end
