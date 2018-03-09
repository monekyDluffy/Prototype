//
//  Vertex.m
//  Prototype
//
//  Created by yusheng on 2018/3/8.
//  Copyright © 2018年 yusheng. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex
@synthesize location = location_;
@dynamic color,size;

-(id)initWithLocation:(CGPoint)location
{
    if (self = [super init]) {
        [self setLocation:location];
    }
    return self;
}

// default properties do nothing
- (void) setColor:(UIColor *)color {}
- (UIColor *) color { return nil;}
- (void) setSize:(CGFloat)size {}
- (CGFloat) size { return 0.0;}

// Mark operations do nothing
- (void) addMark:(id <Mark>) mark {}
- (void) removeMark:(id <Mark>) mark {}
-( id<Mark>)childMarkAtindex:(NSUInteger)index { return nil; }
- (id <Mark>) lastChild { return nil; }
- (NSUInteger) count { return 0;}
- (NSEnumerator *) enumerator{return nil;}

#pragma mark -
#pragma mark NSCopying method
-(instancetype)copyWithZone:(NSZone *)zone
{
    Vertex  *vertexCopy = [[[self class]allocWithZone:zone]initWithLocation:location_];
    return vertexCopy;
}

@end
