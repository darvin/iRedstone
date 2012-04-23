//
//  Workspace.h
//  iRedstone
//
//  Created by Sergey Klimov on 3/25/12.
//  Copyright (c) 2012 Self-Employed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TwoDimensionalMutableArray.h"
@interface Workspace : NSObject {
    TwoDimensionalMutableArray * array;
}
@property NSUInteger maxY;
@property NSUInteger maxX;
@property NSUInteger maxZ;
-(id) initWithURL:(NSURL*) URL;
@end
