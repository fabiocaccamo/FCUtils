//
//  UIImage+Mask.m
//
//  Created by Fabio Caccamo on 21/03/14.
//  Copyright (c) 2014 Fabio Caccamo. All rights reserved.
//

#import "UIImage+Mask.h"

@implementation UIImage (Mask)


+(UIImage *)imageNamed:(NSString *)name withMask:(UIImage *)mask
{
    return [[UIImage imageNamed:name] imageWithMask:mask];
}


+(UIImage *)imageNamed:(NSString *)name withMaskNamed:(NSString *)maskName
{
    return [UIImage imageNamed:name withMask:[UIImage imageNamed:maskName]];
}


-(UIImage *)imageWithMask:(UIImage *)mask
{
    CGImageRef imageToMask = self.CGImage;
    CGImageRef imageAsMask = mask.CGImage;
    CGImageRef imageMask = CGImageMaskCreate(CGImageGetWidth(imageAsMask),
                                             CGImageGetHeight(imageAsMask),
                                             CGImageGetBitsPerComponent(imageAsMask),
                                             CGImageGetBitsPerPixel(imageAsMask),
                                             CGImageGetBytesPerRow(imageAsMask),
                                             CGImageGetDataProvider(imageAsMask),
                                             NULL,
                                             YES 
                                             );
    
    CGImageRef imageMasked = CGImageCreateWithMask(imageToMask, imageMask);
    CGImageRelease(imageMask);
    
    UIImage *imageMaskedResult = [UIImage imageWithCGImage:imageMasked];
    CGImageRelease(imageMasked);
    
    return imageMaskedResult;
}


-(UIImage *)imageWithMaskNamed:(NSString *)maskName
{
    return [self imageWithMask:[UIImage imageNamed:maskName]];
}


@end
