//
//  ViewController.m
//  Localization
//
//  Created by Евгений Сергеев on 08.12.15.
//  Copyright © 2015 Евгений Сергеев. All rights reserved.
//

#import "ViewController.h"
#import "Book.h"
#import "Formatters.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *bookImage;
@property (weak, nonatomic) IBOutlet UILabel *bookNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *authorNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *editionCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *ratingLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:NSLocalizedString(@"bookImage", nil)];
    NSNumber *editionCount = [NSNumber numberWithInt:9000];
    NSDecimalNumber *rating = [[NSDecimalNumber alloc] initWithDouble:8.1];
    NSDate *date = [NSDate date];
    NSString *dateString = [[Formatters dateFormatter] stringFromDate:date];
    NSString *editionCountString = [[Formatters numberFormatter] stringFromNumber:editionCount];
    NSString *ratingString = [[Formatters decimalNumberFormatter] stringFromNumber:rating];
    
    Book *book = [[Book alloc] initWithTitle:NSLocalizedString(@"bookTitleName", nil) image:image author:NSLocalizedString(@"bookAuthorName", nil) editionCount:editionCount text:@"bookDescription" rate:rating date:date];
    
    self.bookNameLabel.text = [NSString stringWithFormat:@"%@: %@", NSLocalizedString(@"bookTitle", nil), NSLocalizedString(book.title, nil)];
    self.authorNameLabel.text = [NSString stringWithFormat:@"%@: %@", NSLocalizedString(@"bookAuthor", nil),NSLocalizedString(book.author, nil) ];
    self.descriptionLabel.text = [NSString stringWithFormat:@"%@",NSLocalizedString(book.text, nil)];
    self.dateLabel.text = [NSString stringWithFormat:@"%@: %@", NSLocalizedString(@"bookDate", nil), dateString];
    self.editionCountLabel.text = [NSString stringWithFormat:@"%@: %@", NSLocalizedString(@"bookEdition", nil), editionCountString];
    self.ratingLabel.text = [NSString stringWithFormat:@"%@: %@", NSLocalizedString(@"bookRating", nil), ratingString];
    self.bookImage.image = book.image;
    
//    self.bookImage.image = [UIImage imageNamed:NSLocalizedString(@"bookImage", nil)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
