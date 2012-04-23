//
//  Workspace.m
//  iRedstone
//
//  Created by Sergey Klimov on 3/25/12.
//  Copyright (c) 2012 Self-Employed. All rights reserved.
//

#import "Workspace.h"
#import "nbt.h"
@implementation Workspace
@synthesize maxX, maxY, maxZ;
-(id) initWithURL:(NSURL*) URL {
    if (self=[super init]) {
        FILE *f = fopen([[URL path] cStringUsingEncoding:1],"r");
        nbt_node* schematic = nbt_parse_file(f);
        nbt_node* widthNode = nbt_find_by_path(schematic, "Schematic.Width");
        nbt_node* heightNode = nbt_find_by_path(schematic, "Schematic.Height");
        nbt_node* lengthNode = nbt_find_by_path(schematic, "Schematic.Length");
        
        nbt_node* pathId = nbt_find_by_path(schematic, "Schematic.Blocks");
        nbt_node* pathMeta = nbt_find_by_path(schematic, "Schematic.Data");
        self.maxX = widthNode->payload.tag_short;
        self.maxY= heightNode->payload.tag_short;
        self.maxZ = lengthNode->payload.tag_short;
        for (int i = 0; i<pathId->payload.tag_byte_array.length; i++) {
            unsigned char blockId = pathId->payload.tag_byte_array.data[i];
            unsigned char blockMeta = pathMeta->payload.tag_byte_array.data[i];
            
            if (blockId) {
                int x = (i%(self.maxY*self.maxX))/self.maxY;
                int y = self.maxY-1-((i%(maxY*maxX))%maxY);
                int z = i/(maxY*maxY);
                NSLog(@"%d %d %d, %d %d", x,y,z, blockId, blockMeta);

            }
        }
//        array = [[TwoDimensionalMutableArray alloc] initWithXCapacity:width andYCapacity:height];
        
        
        int i;
        i=4;
    }
    return self;
}
@end
