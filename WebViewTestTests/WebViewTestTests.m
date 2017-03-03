//
//  WebViewTestTests.m
//  WebViewTestTests
//
//  Created by sublio on 10/05/16.
//  Copyright (c) 2016 sublio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface WebViewTestTests : XCTestCase

@end

@implementation WebViewTestTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}


- (void)testThisTestWillFail{
    
    
    NSLog(@"This test will passed always");
}



@end
