//
//  UIView+Snapshot.m
//
//  Created by Fabio Caccamo on 21/03/14.
//  Copyright (c) 2014 Fabio Caccamo. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "UIView+Snapshot.h"

@implementation UIView (Snapshot)


-(UIImage *)snapshot
{
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.opaque, 0.0);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage * img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}


-(UIImageView *)snapshotView
{
    UIImageView *view = [[UIImageView alloc] initWithImage:[self snapshot]];
    [view sizeToFit];
    return view;
}


@end
