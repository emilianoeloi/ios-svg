//
//  SVGHelper.m
//  iossvg
//
//  Created by Emiliano Barbosa on 8/5/15.
//  Copyright (c) 2015 Bocamuchas. All rights reserved.
//

#import "SVGHelper.h"
#import <SVGImage/SVGImage.h>

@interface SVGHelper()

@property (nonatomic, readwrite) NSMutableDictionary *cachedImages;
@property (nonatomic, strong) NSBundle *bundle;

@end

@implementation SVGHelper

+(instancetype)sharedSVG{
    static SVGHelper *sharedSVG = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedSVG = [[self alloc]init];
    });
    return sharedSVG;
}

-(instancetype)init{
    self = [super init];
    if (self) {
        _bundle = [NSBundle bundleForClass:[self class]];
        self.cachedImages = [[NSMutableDictionary alloc]init];
    }
    return self;
}

-(UIImage *)imageWithSVGName:(NSString *)svgName{
    NSDictionary *cacheKey = @{@"svgName":svgName};
    
    UIImage *uiimage  = [self.cachedImages objectForKey:cacheKey];
    
    if (uiimage == nil) {
        NSString *path = [_bundle pathForResource:svgName ofType:@"svg"];
    
        SIImage *img = [SIImage imageWithContentsOfFile:path];
        uiimage = img.UIImage;
    
        [self.cachedImages setObject:uiimage forKey:cacheKey];
    }
    return uiimage;
}

-(void)cacheImageWithSVGName:(NSString *)svgName{
    [self imageWithSVGName:svgName];
}

@end
