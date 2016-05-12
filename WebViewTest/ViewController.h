//
//  ViewController.h
//  WebViewTest
//
//  Created by sublio on 10/05/16.
//  Copyright (c) 2016 sublio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate>


@property (weak, nonatomic) IBOutlet UIWebView* webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView* indicator;

@property (weak, nonatomic) IBOutlet UIBarButtonItem* backButtonItem;
@property (weak, nonatomic) IBOutlet UIBarButtonItem* forwardButtonItem;


- (IBAction) actionBack:(id)sender;
- (IBAction) actionForward:(id)sender;
- (IBAction) actionRefresh:(id)sender;

@end

