//
//  UIImage+Color.m
//
//  Created by Fabio Caccamo on 25/03/14.
//  Copyright (c) 2014 Fabio Caccamo. All rights reserved.
//

#import "UIImage+Color.h"

@implementation UIImage (Color)


+(UIImage *)imageNamed:(NSString *)name withColor:(UIColor *)color
{
    return [[UIImage imageNamed:name] imageWithColor:color];
}


-(UIImage *)imageWithColor:(UIColor *)color
{
    //http://robots.thoughtbot.com/designing-for-ios-blending-modes
    
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);
    
    [color setFill];
    
    CGRect bounds = CGRectMake(0.0, 0.0, self.size.width, self.size.height);
    UIRectFill(bounds);
    
    //[self drawInRect:bounds blendMode:kCGBlendModeNormal alpha:1.0];
    
    //if (blendMode != kCGBlendModeDestinationIn){
    [self drawInRect:bounds blendMode:kCGBlendModeDestinationIn alpha:1.0];
    //}
    
    UIImage *imageColored = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return imageColored;
}


@end
