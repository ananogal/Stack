#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSMutableArray+Stack.h"

@interface StackTests : XCTestCase

@end

@implementation StackTests

NSMutableArray *stack;

- (void)setUp {
    [super setUp];
    
    stack = [NSMutableArray array];
}

- (void)tearDown {
    stack = nil;
    [super tearDown];
}

- (void)testShouldPushAnObjectTotheStack {
    
    [stack push:@"Pushed an object"];
    
    XCTAssertTrue([stack[0] isEqualToString:@"Pushed an object"]);
}

- (void)testShouldThrowWhenPopAndStackIsEmpty {
    
    XCTAssertThrows([stack pop]);
}

- (void)testShouldPopAnElementFromStack {
    
    [stack push:@"Object 1"];
    [stack push:@"Object 2"];
    [stack push:@"Object 3"];
    
    id result = [stack pop];
    
    XCTAssertTrue([result isEqualToString:@"Object 1"]);
}

@end
