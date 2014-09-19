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
    return [self colorWithHex:hex alpha:1.0];
}


+(UIColor *)colorWithHex:(uint)hex alpha:(float)alpha
{
    float a = alpha; //(((float)((hex & 0xFF000000) >> 24)) / 255.0);
    float r = (((float)((hex & 0xFF0000) >> 16)) / 255.0);
    float g = (((float)((hex & 0x00FF00) >> 8))  / 255.0);
    float b = (((float)((hex & 0x0000FF)))       / 255.0);
    
    return [UIColor colorWithRed:r green:g blue:b alpha:a];
}


+(UIColor *)colorWithHexString:(NSString *)hexString
{
    return [self colorWithHexString:hexString alpha:1.0];
}


+(UIColor *)colorWithHexString:(NSString *)hexStringInput alpha:(float)alpha
{
    NSString *hexString = [hexStringInput stringByReplacingOccurrencesOfString:@"0x" withString:@"#"];
    
    uint hex = 0;
    NSScanner *hexScanner = [NSScanner scannerWithString:hexString];
    
    if( [hexString rangeOfString:@"#"].location > -1 ){
        [hexScanner setScanLocation:1];
    }
    
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
    
    int redDec = (int)(red * 255);
    int greenDec = (int)(green * 255);
    int blueDec = (int)(blue * 255);
    //int alphaDec = (int)(alpha * 255);
    
    //return ((alphaDec << 24) + (redDec << 16) + (greenDec << 8) + blueDec);
    return ((redDec << 16) + (greenDec << 8) + blueDec);
}


-(NSString *)hexStringValue
{
    return [self hexStringValueWithPrefix:@"#"];
}


-(NSString *)hexStringValueWithPrefix:(NSString *)prefix
{
    CGFloat red;
    CGFloat green;
    CGFloat blue;
    CGFloat alpha;
    
    [self getRed:&red green:&green blue:&blue alpha:&alpha];
    
    //int alphaDec = (int)(alpha * 255);
    int redDec = (int)(red * 255);
    int greenDec = (int)(green * 255);
    int blueDec = (int)(blue * 255);
    
    //return [NSString stringWithFormat:@"%@%02x%02x%02x%02x", prefix, (unsigned int)alphaDec, (unsigned int)redDec, (unsigned int)greenDec, (unsigned int)blueDec];
    return [NSString stringWithFormat:@"%@%02x%02x%02x", prefix, (unsigned int)redDec, (unsigned int)greenDec, (unsigned int)blueDec];
}


@end
