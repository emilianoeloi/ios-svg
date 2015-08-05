//
//  SVGHelper.h
//  iossvg
//
//  Created by Emiliano Barbosa on 8/5/15.
//  Copyright (c) 2015 Bocamuchas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SVGHelper : NSObject

+(instancetype)sharedSVG;
-(UIImage *)imageWithSVGName:(NSString *)svgName;
-(void)cacheImageWithSVGName:(NSString *)svgName;

@end
