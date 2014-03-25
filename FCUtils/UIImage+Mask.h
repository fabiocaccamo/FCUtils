//
//  UIImage+Mask.h
//
//  Created by Fabio Caccamo on 21/03/14.
//  Copyright (c) 2014 Fabio Caccamo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Mask)

+(UIImage *)imageNamed:(NSString *)name withMask:(UIImage *)mask;
+(UIImage *)imageNamed:(NSString *)name withMaskNamed:(NSString *)maskName;
-(UIImage *)imageWithMask:(UIImage *)mask;
-(UIImage *)imageWithMaskNamed:(NSString *)maskName;

@end
