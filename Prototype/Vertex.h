//
//  Vertex.h
//  Prototype
//
//  Created by yusheng on 2018/3/8.
//  Copyright © 2018年 yusheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"
@interface Vertex : NSObject<Mark,NSCopying>
{
    @protected
    CGPoint  location_;
}
@property (nonatomic, retain) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, readonly) NSUInteger count;
@property (nonatomic, readonly) id <Mark> lastChild;

-(id)initWithLocation:(CGPoint) location;
-(void)addMark:(id<Mark>)mark;
-(void)removeMark:(id<Mark>)mark;
-(id<Mark>)childMarkAtindex:(NSUInteger)index;
-(id)copyWithZone:(NSZone *)zone;
@end
