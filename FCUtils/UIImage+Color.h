//
//  UIImage+Color.h
//
//  Created by Fabio Caccamo on 25/03/14.
//  Copyright (c) 2014 Fabio Caccamo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Color)

+(UIImage *)imageNamed:(NSString *)name withColor:(UIColor *)color;
-(UIImage *)imageWithColor:(UIColor *)color;

@end
