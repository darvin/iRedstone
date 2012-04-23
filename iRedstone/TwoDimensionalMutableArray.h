//
//  TwoDimensionalMutableArray.h
//  iRedstone
//
//  Created by Sergey Klimov on 3/25/12.
//  Copyright (c) 2012 Self-Employed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TwoDimensionalMutableArray : NSMutableArray {
    NSUInteger countY;
}
-(id) initWithXCapacity:(NSUInteger)numItemsX andYCapacity:(NSUInteger)numItemsY;
-(NSUInteger)countX;
-(NSUInteger)countY;
@end
