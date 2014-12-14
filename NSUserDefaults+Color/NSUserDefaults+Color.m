//
//  NSUserDefaults+Color.m
//
//  Created by Fabio Caccamo on 14/12/14.
//  Copyright (c) 2014 Fabio Caccamo. All rights reserved.
//

#import "NSUserDefaults+Color.h"
#import "UIColor+Hex.h"

@implementation NSUserDefaults (Color)


-(UIColor *)colorForKey:(NSString *)key
{
    NSString *hexString = [self stringForKey:key];
    
    if( hexString != nil )
    {
        return [UIColor colorWithHexString:hexString];
    }
    else {
        
        return nil;
    }
}


-(void)setColor:(UIColor *)color forKey:(NSString *)key
{
    NSString *hexString = [color hexStringValue];
    
    [self setObject:hexString forKey:key];
}


@end
