//
//  UIImageView+Image.h
//
//  Created by Fabio Caccamo on 19/03/14.
//  Copyright (c) 2014 Fabio Caccamo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (Image)

+(UIImageView *)imageViewWithImageNamed:(NSString *)imageName;
+(UIImageView *)imageViewWithImageNamed:(NSString *)imageName highlightedImageNamed:(NSString *)highlightedImageName;

@end
