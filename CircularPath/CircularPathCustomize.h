//
//  CircularPathCustomize.h
//  CircularPath
//
//  Created by Kiattisak Anoochitarom on 4/27/55 BE.
//  Copyright (c) 2555 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CircularView.h"

@interface CircularPathCustomize : UIView

@property (nonatomic, assign) CGFloat progress;
@property (nonatomic, assign) UIColor *strokeColor;

- (CircularPathCustomize *)initWithRect:(CGRect)_rect progress:(CGFloat)_progress strokeColor:(UIColor *)_color;
+ (CircularPathCustomize *)initCircularWithRect:(CGRect)_rect progress:(CGFloat)_progress strokeColor:(UIColor *)_color;
- (void)drawingCircular;

@end
