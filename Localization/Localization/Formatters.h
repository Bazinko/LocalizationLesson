//
//  Formatters.h
//  Localization
//
//  Created by Евгений Сергеев on 13.12.15.
//  Copyright © 2015 Евгений Сергеев. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Formatters : NSObject

+ (NSNumberFormatter *)numberFormatter;
+ (NSDateFormatter *)dateFormatter;
+ (NSNumberFormatter *)decimalNumberFormatter;

@end
