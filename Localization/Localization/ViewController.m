//
//  ViewController.m
//  Localization
//
//  Created by Евгений Сергеев on 08.12.15.
//  Copyright © 2015 Евгений Сергеев. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *bookImage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.bookImage.image = [UIImage imageNamed:NSLocalizedString(@"Image", nil)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
