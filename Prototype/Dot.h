//
//  Dot.h
//  Prototype
//
//  Created by yusheng on 2018/3/8.
//  Copyright © 2018年 yusheng. All rights reserved.
//

#import "Vertex.h"

@interface Dot : Vertex
{
    @private
    UIColor   *color_;
    CGFloat   size_;
}
@property (nonatomic,retain)UIColor *color;
@property (nonatomic,assign)CGFloat   size;
-(instancetype)copyWithZone:(NSZone *)zone;
@end
