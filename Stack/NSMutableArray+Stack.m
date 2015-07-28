#import "NSMutableArray+Stack.h"

@implementation NSMutableArray (Stack)

- (void)push:(id)object {
    [self addObject:object];
}

- (id)pop {
    
    if([self count] == 0)
    {
        [NSException raise:@"Stack is Empty" format:@"%@", @"Stack is Empty"];
    }
    
    id headObject = [[self objectAtIndex:0] copy];
    [self removeObjectAtIndex:0];
    
    return headObject;
}

@end
