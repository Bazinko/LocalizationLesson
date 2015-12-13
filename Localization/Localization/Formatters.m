//
//  Formatters.m
//  Localization
//
//  Created by Евгений Сергеев on 13.12.15.
//  Copyright © 2015 Евгений Сергеев. All rights reserved.
//

#import "Formatters.h"

@implementation Formatters

+ (NSNumberFormatter *)numberFormatter {
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    numberFormatter.locale = [NSLocale currentLocale];
    numberFormatter.numberStyle = NSNumberFormatterNoStyle;
    return numberFormatter;
}

+ (NSDateFormatter *)dateFormatter {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [NSLocale currentLocale];
    dateFormatter.dateStyle = NSDateFormatterMediumStyle;
    return dateFormatter;
}

+ (NSNumberFormatter *)decimalNumberFormatter {
    NSNumberFormatter *decimalNumberFormatter = [[NSNumberFormatter alloc] init];
    decimalNumberFormatter.locale = [NSLocale currentLocale];
    decimalNumberFormatter.numberStyle = NSNumberFormatterDecimalStyle;
    return decimalNumberFormatter;
}

@end
