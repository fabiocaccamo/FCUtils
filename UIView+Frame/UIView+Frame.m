//
//  UIView+Frame.m
//
//  Created by Fabio Caccamo on 24/03/14.
//  Copyright (c) 2014 Fabio Caccamo. All rights reserved.
//

#import "UIView+Frame.h"


@implementation UIView(Frame)


-(CGFloat)frameX
{
    return self.frame.origin.x;
}


-(void)setFrameX:(CGFloat)frameX
{
    CGRect f = self.frame;
    CGSize s = f.size;
    
    self.frame = CGRectMake(frameX, f.origin.y, s.width, s.height);
}


-(CGFloat)frameY
{
    return self.frame.origin.y;
}


-(void)setFrameY:(CGFloat)frameY
{
    CGRect f = self.frame;
    CGSize s = f.size;
    
    self.frame = CGRectMake(f.origin.x, frameY, s.width, s.height);
}


-(CGFloat)frameWidth
{
    return self.frame.size.width;
}


-(void)setFrameWidth:(CGFloat)frameWidth
{
    CGRect f = self.frame;
    CGPoint o = f.origin;
    
    self.frame = CGRectMake(o.x, o.y, frameWidth, f.size.height);
}


-(CGFloat)frameHeight
{
    return self.frame.size.height;
}


-(void)setFrameHeight:(CGFloat)frameHeight
{
    CGRect f = self.frame;
    CGPoint o = f.origin;
    
    self.frame = CGRectMake(o.x, o.y, f.size.width, frameHeight);
}


-(CGFloat)frameTop
{
    return self.frameY;
}


-(void)setFrameTop:(CGFloat)frameTop
{
    self.frameY = frameTop;
}


-(CGFloat)frameLeft
{
    return self.frameX;
}


-(void)setFrameLeft:(CGFloat)frameLeft
{
    self.frameX = frameLeft;
}


-(CGFloat)frameBottom
{
    return (self.frameY + self.frameHeight);
}


-(void)setFrameBottom:(CGFloat)frameBottom
{
    self.frameY = ((self.superview ? self.superview.frameHeight : 0.0) - (self.frameHeight + frameBottom));
}


-(CGFloat)frameRight
{
    return (self.frameX + self.frameWidth);
}


-(void)setFrameRight:(CGFloat)frameRight
{
    self.frameX = ((self.superview ? self.superview.frameWidth : 0.0) - (self.frameWidth + frameRight));
}


-(CGPoint)frameTopLeft
{
    return CGPointMake( self.frameX, self.frameY );
}


-(void)setFrameTopLeft:(CGPoint)frameTopLeft
{
    self.frameX = frameTopLeft.x;
    self.frameY = frameTopLeft.y;
}


-(CGPoint)frameBottomRight
{
    return CGPointMake( self.frameRight, self.frameBottom );
}


-(void)setFrameBottomRight:(CGPoint)frameBottomRight
{
    self.frameRight = frameBottomRight.x;
    self.frameBottom = frameBottomRight.y;
}


-(CGPoint)frameCenter
{
    return CGPointMake( self.frameCenterX, self.frameCenterY );
}


-(void)setFrameCenter:(CGPoint)frameCenter
{
    self.frameCenterX = frameCenter.x;
    self.frameCenterY = frameCenter.y;
}


-(CGFloat)frameCenterX
{
    return (self.frameX + (self.frameWidth / 2.0));
}


-(void)setFrameCenterX:(CGFloat)frameCenterX
{
    self.frameX = (frameCenterX - (self.frameWidth / 2.0));
}


-(CGFloat)frameCenterY
{
    return (self.frameY + (self.frameHeight / 2.0));
}


-(void)setFrameCenterY:(CGFloat)frameCenterY
{
    self.frameY = (frameCenterY - (self.frameHeight / 2.0));
}


@end