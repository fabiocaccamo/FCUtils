//
//  UIColor+Hex.h
//
//  Created by Fabio Caccamo on 21/03/14.
//  Copyright (c) 2014 Fabio Caccamo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)

+(UIColor *) colorWithHex:(uint)hex;
+(UIColor *) colorWithHex:(uint)hex alpha:(float)alpha;

@end
