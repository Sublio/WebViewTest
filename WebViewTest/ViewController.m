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
    
    
    
    
    NSString* urlString = @"http://google.com";
    
    NSURL* url = [NSURL URLWithString:urlString ];
    
    
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    
    [self.webView loadRequest:request];
    
    
    /*
    NSString* filePath = [[NSBundle mainBundle]pathForResource:@"1" ofType:@"pdf"];
    
    NSURL* fileUrl = [NSURL fileURLWithPath:filePath];
    
    
    NSURLRequest* request = [NSURLRequest requestWithURL:fileUrl];
    
    [self.webView loadRequest:request];
    */
    
    /*
    NSString* htmlString = @"<html><body><p>Hello World</p></body></html>";
    
    [self.webView loadHTMLString:htmlString baseURL:nil];
    
    
    */
    
    /*
    NSData* fileData = [NSData dataWithContentsOfFile:filePath];
    
    [self.webView loadData:fileData MIMEType:@"application/pdf" textEncodingName:@"UTF-8" baseURL:nil];
    */
    
    
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

-(void) refreshButtons {
    
    self.backButtonItem.enabled = [self.webView canGoBack];
    self.forwardButtonItem.enabled = [self.webView canGoForward];
    
}
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    
    NSLog(@"webViewDidFinishLoad");
    
    [self.indicator stopAnimating];
    
    [self refreshButtons];
    
    
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    
    NSLog(@"didFailLoadWithError %@", [error localizedDescription]);
    
    [self.indicator stopAnimating];
    [self refreshButtons];
}


#pragma mark -Actions



- (IBAction) actionBack:(id)sender{
    
    if ([self.webView canGoBack]){
        [self.webView stopLoading];
        
        [self.webView goBack];
    }
    
}
- (IBAction) actionForward:(id)sender{
    
    if ([self.webView canGoForward]){
        [self.webView stopLoading];
        
        [self.webView goForward];
    }
    
}
- (IBAction) actionRefresh:(id)sender{
    
    [self.webView stopLoading];
    [self.webView reload];
    
}

@end
