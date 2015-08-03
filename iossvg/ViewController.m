//
//  ViewController.m
//  iossvg
//
//  Created by Emiliano Barbosa on 8/3/15.
//  Copyright (c) 2015 Bocamuchas. All rights reserved.
//

#import "ViewController.h"
#import <SVGImage/SVGImage.h>


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSString *path = [bundle pathForResource:@"sample" ofType:@"svg"];
    
    SIImage *img = [SIImage imageWithContentsOfFile:path];
    [_imageView setImage:img.UIImage];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
