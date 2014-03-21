//
//  UIImageView+Image.m
//
//  Created by Fabio Caccamo on 19/03/14.
//  Copyright (c) 2014 Fabio Caccamo. All rights reserved.
//

#import "UIImageView+Image.h"

@implementation UIImageView (Image)


+(UIImageView *)imageViewWithImageNamed:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    UIImageView *view = [[UIImageView alloc] initWithImage:image];
    [view sizeToFit];
    return view;
}


+(UIImageView *)imageViewWithImageNamed:(NSString *)imageName highlightedImageNamed:(NSString *)highlightedImageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    UIImage * highlightedImage = [UIImage imageNamed:highlightedImageName];
    UIImageView *view = [[UIImageView alloc] initWithImage:image highlightedImage:highlightedImage];
    [view sizeToFit];
    return view;
}


@end
