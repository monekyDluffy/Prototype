//
//  Mark.h
//  Prototype
//
//  Created by yusheng on 2018/3/8.
//  Copyright © 2018年 yusheng. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol  Mark<NSObject>
@property (nonatomic,retain) UIColor   *color;
@property (nonatomic,assign) CGFloat   size;
@property (nonatomic,assign) CGPoint   location;
@property (nonatomic, readonly) NSUInteger count;
@property (nonatomic, readonly) id <Mark> lastChild;
-(instancetype)copy;
-(void)addMark:(id<Mark>) mark;
-(void)removeMark:(id <Mark>) mark;
-(id<Mark>)childMarkAtindex:(NSUInteger) index;
@end



