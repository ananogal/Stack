#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSMutableArray+Stack.h"

@interface StackTests : XCTestCase

@end

@implementation StackTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testShouldPushAnObjectTotheStack {
    
    NSMutableArray *stack = [NSMutableArray array];
    
    [stack push:@"Pushed an object"];
    
    XCTAssertTrue([stack[0] isEqualToString:@"Pushed an object"]);
}


@end
