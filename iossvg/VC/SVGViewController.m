//
//  SVGViewController.m
//  iossvg
//
//  Created by Emiliano Barbosa on 8/5/15.
//  Copyright (c) 2015 Bocamuchas. All rights reserved.
//

#import "SVGViewController.h"
#import <SVGImage/SVGImage.h>
#import "SVGHelper.h"

@interface SVGViewController ()

@property (nonatomic, weak) IBOutlet UIImageView *imageView;

@end

@implementation SVGViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_imageView setImage:[[SVGHelper sharedSVG]imageWithSVGName:@"RS"]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
