//
//  CircularView.m
//  CircularPath
//
//  Created by Kiattisak Anoochitarom on 4/26/55 BE.
//  Copyright (c) 2555 __MyCompanyName__. All rights reserved.
//

#import "CircularView.h"

#define pi 3.14159265359
#define   DEGREES_TO_RADIANS(degrees)  ((pi * degrees)/ 180)

@implementation CircularView

@synthesize progress, circularPath;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
        self.progress = 0.0;
    }
    return self;
}

- (UIBezierPath *)createCircularPathEndPoint:(CGFloat)endPoint{
    CGFloat radius = MIN(self.bounds.size.width, self.bounds.size.height)/2;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:self.center
                                                        radius:radius 
                                                   startAngle:0 
                                                     endAngle:DEGREES_TO_RADIANS(endPoint) 
                                                    clockwise:YES];
    
    return path;
}

- (void)drawingCircularPathWithEndPoint:(CGFloat)endPoint andStrokeColor:(UIColor *)strokeColor{
    NSNumber *end = [NSNumber numberWithFloat:endPoint];
    self.circularPath = [self createCircularPathEndPoint:[end floatValue]*360];

    [strokeColor setStroke];
    
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(contextRef, 0, 0);
    
    self.circularPath.lineWidth = 5;
    [self.circularPath stroke];
}

- (void)drawingCircularBackgroundWithStrokeColor:(UIColor *)strokeColor{
    UIBezierPath *backgroundPath = [self createCircularPathEndPoint:360];
    
    [strokeColor setStroke];
    
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(contextRef, 0, 0);
    
    backgroundPath.lineWidth = 5;
    [backgroundPath stroke];
}



// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}


@end
