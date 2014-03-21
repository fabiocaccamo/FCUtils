//
//  UIImage+Mask.m
//  FCUtilsDemo
//
//  Created by Fabio Caccamo on 21/03/14.
//  Copyright (c) 2014 Fabio Caccamo. All rights reserved.
//

#import "UIImage+Mask.h"

@implementation UIImage (Mask)


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
    
    UIImage *imageWithMask = [UIImage imageWithCGImage:imageMasked];
    CGImageRelease(imageMasked);
    
    return imageWithMask;
}


@end
