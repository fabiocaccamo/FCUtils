//
//  UIView+Frame.h
//
//  Created by Fabio Caccamo on 24/03/14.
//  Copyright (c) 2014 Fabio Caccamo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)

@property CGFloat frameX;
@property CGFloat frameY;

@property CGFloat frameWidth;
@property CGFloat frameHeight;

@property CGFloat frameTop;
@property CGFloat frameLeft;
@property CGFloat frameBottom;
@property CGFloat frameRight;

@property CGPoint frameTopLeft;
@property CGPoint frameBottomRight;

@property CGPoint frameCenter;
@property CGFloat frameCenterX;
@property CGFloat frameCenterY;

@end