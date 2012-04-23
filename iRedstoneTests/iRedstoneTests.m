//
//  iRedstoneTests.m
//  iRedstoneTests
//
//  Created by Sergey Klimov on 3/24/12.
//  Copyright (c) 2012 Self-Employed. All rights reserved.
//

#import "iRedstoneTests.h"
#import "Workspace.h"
@implementation iRedstoneTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
    NSURL * sanityPath = [[NSBundle mainBundle] URLForResource:@"testDataSanity"  withExtension:@"schematic"];
    Workspace* workspace = [[Workspace alloc] initWithURL:sanityPath];

}

@end
