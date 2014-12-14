//
//  UIColor+Hex.m
//
//  Created by Fabio Caccamo on 21/03/14.
//  Copyright (c) 2014 Fabio Caccamo. All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)


+(UIColor *)colorWithHex:(uint)hex
{
    return [self colorWithHex:hex alpha:NAN];
}


+(UIColor *)colorWithHex:(uint)hex alpha:(float)alpha
{
    float a = (((float)((hex & 0xFF000000) >> 24)) / 255.0);
    float r = (((float)((hex & 0x00FF0000) >> 16)) / 255.0);
    float g = (((float)((hex & 0x0000FF00) >>  8)) / 255.0);
    float b = (((float)((hex & 0x000000FF) >>  0)) / 255.0);
    
    if( isnan(alpha) )
    {
        NSString *hexString = [NSString stringWithFormat:@"%x", hex];
        //NSLog(@"%@", hexString);
        
        if( hexString.length == 6 )
        {
            a = 1.0;
        }
    }
    else {
        
        a = alpha;
    }
    
    return [UIColor colorWithRed:r green:g blue:b alpha:a];
}


+(UIColor *)colorWithHexString:(NSString *)hexString
{
    return [self colorWithHexString:hexString alpha:NAN];
}


+(UIColor *)colorWithHexString:(NSString *)hexStringInput alpha:(float)alpha
{
    NSString *hexString = hexStringInput;
    hexString = [hexString stringByReplacingOccurrencesOfString:@"0x" withString:@""];
    hexString = [hexString stringByReplacingOccurrencesOfString:@"#"  withString:@""];
    
    uint hex = 0;
    
    NSScanner *hexScanner = [NSScanner scannerWithString:hexString];
    [hexScanner scanHexInt:&hex];
    
    return [self colorWithHex:hex alpha:alpha];
}


-(uint)hexValue
{
    CGFloat red;
    CGFloat green;
    CGFloat blue;
    CGFloat alpha;
    
    [self getRed:&red green:&green blue:&blue alpha:&alpha];
    
    int r = (int)(red   * 255);
    int g = (int)(green * 255);
    int b = (int)(blue  * 255);
    int a = (int)(alpha * 255);
    
    if( a != 1.0 )
    {
        return ((a << 24) + (r << 16) + (g << 8) + b);
    }
    else {
        
        return (            (r << 16) + (g << 8) + b);
    }
}


-(NSString *)hexStringValue
{
    return [self hexStringValueWithPrefix:@"#"];
}


-(NSString *)hexStringValueWithPrefix:(NSString *)prefix
{
    return [NSString stringWithFormat:@"%@%x", prefix, [self hexValue]];
}


@end
