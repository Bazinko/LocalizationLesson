//
//  Book.h
//  Localization
//
//  Created by Евгений Сергеев on 13.12.15.
//  Copyright © 2015 Евгений Сергеев. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UIImage;

@interface Book : NSObject

@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *author;
@property (nonatomic, strong) NSNumber *editionCount;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) NSDecimalNumber *rating;
@property (nonatomic, strong) NSString *text;

- (instancetype)initWithTitle:(NSString *)title
                        image:(UIImage *)image
                       author:(NSString *)author
                 editionCount:(NSNumber *)editionCount
                         text:(NSString *)text
                         rate:(NSDecimalNumber *)rating
                         date:(NSDate *)date;

@end
