//
//  UIColor+Hex.m
//
//  Created by Fabio Caccamo on 21/03/14.
//  Copyright (c) 2014 Fabio Caccamo. All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)


+(UIColor *)colorWithHex:(uint)hex
{
    return [self colorWithHex:hex alpha:1.0];
}


+(UIColor *)colorWithHex:(uint)hex alpha:(float)alpha
{
    float a = alpha;
    float r = (((float)((hex & 0xFF0000) >> 16)) / 255.0);
    float g = (((float)((hex & 0x00FF00) >> 8))  / 255.0);
    float b = (((float)((hex & 0x0000FF)))       / 255.0);
    
    return [UIColor colorWithRed:r green:g blue:b alpha:a];
}


@end
