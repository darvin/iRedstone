//
//  TwoDimensionalMutableArray.m
//  iRedstone
//
//  Created by Sergey Klimov on 3/25/12.
//  Copyright (c) 2012 Self-Employed. All rights reserved.
//

#import "TwoDimensionalMutableArray.h"

@implementation TwoDimensionalMutableArray
-(id) initWithXCapacity:(NSUInteger)numItemsX andYCapacity:(NSUInteger)numItemsY {
    if (self=[super initWithCapacity:numItemsX]) {
        for (int i=0; i<numItemsX; i++) {
            [self addObject:[NSMutableArray arrayWithCapacity:numItemsY]];
        }
        countY = numItemsY;
    }
    return self;
}
-(NSUInteger)countX {
    return [self count];
}
-(NSUInteger)countY {
    return countY;
}
@end
