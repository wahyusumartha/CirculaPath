//
//  CircularView.h
//  CircularPath
//
//  Created by Kiattisak Anoochitarom on 4/26/55 BE.
//  Copyright (c) 2555 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircularView : UIView

@property (nonatomic, assign) CGFloat progress;
@property (nonatomic, retain) UIBezierPath *circularPath;

- (void)drawingCircularPathWithEndPoint:(CGFloat)endPoint andStrokeColor:(UIColor *)strokeColor;
- (void)drawingCircularBackgroundWithStrokeColor:(UIColor *)strokeColor;

@end
