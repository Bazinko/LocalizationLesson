//
//  Book.m
//  Localization
//
//  Created by Евгений Сергеев on 13.12.15.
//  Copyright © 2015 Евгений Сергеев. All rights reserved.
//

#import "Book.h"

@implementation Book

- (instancetype)initWithTitle:(NSString *)title
                        image:(UIImage *)image
                       author:(NSString *)author
                 editionCount:(NSNumber *)editionCount
                         text:(NSString *)text
                         rate:(NSDecimalNumber *)rating
                         date:(NSDate *)date {
    self = [super init];
    if (self) {
        _title = title;
        _image = image;
        _author = author;
        _editionCount = editionCount;
        _text = text;
        _rating = rating;
        _date = date;
    }
    return self;
}

@end
