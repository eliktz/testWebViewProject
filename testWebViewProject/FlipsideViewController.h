//
//  FlipsideViewController.h
//  testWebViewProject
//
//  Created by Elik Katz on 11/19/13.
//  Copyright (c) 2013 Elik Katz. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

@interface FlipsideViewController : UIViewController

@property (weak, nonatomic) id <FlipsideViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (nonatomic,strong) NSString * fileName;
- (IBAction)done:(id)sender;

@end
