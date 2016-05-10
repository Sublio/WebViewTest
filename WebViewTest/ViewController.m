//
//  ViewController.m
//  WebViewTest
//
//  Created by sublio on 10/05/16.
//  Copyright (c) 2016 sublio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString* urlString = @"http://google.ru";
    
    
    
    NSURL* url = [NSURL URLWithString:urlString ];
    
    
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    
    [self.webView loadRequest:request];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma  mark - UIWebViewDelegate

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    
    
    NSLog(@"shouldStartLoadWithRequest %@", [request debugDescription]);
    
    
    return YES;
    
}
- (void)webViewDidStartLoad:(UIWebView *)webView{
    
    NSLog(@"webViewDidStartLoad");
    
    [self.indicator startAnimating];
    
}
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    
    NSLog(@"webViewDidFinishLoad");
    
    [self.indicator stopAnimating];
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    
    NSLog(@"didFailLoadWithError %@", [error localizedDescription]);
    
    [self.indicator stopAnimating];
}

@end
