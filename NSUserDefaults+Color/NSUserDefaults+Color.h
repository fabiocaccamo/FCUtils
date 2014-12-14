//
//  NSUserDefaults+Color.h
//
//  Created by Fabio Caccamo on 14/12/14.
//  Copyright (c) 2014 Fabio Caccamo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (Color)

-(UIColor *)colorForKey:(NSString *)key;
-(void)setColor:(UIColor *)color forKey:(NSString *)key;

@end
