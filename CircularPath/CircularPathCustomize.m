    //
//  CircularPathCustomize.m
//  CircularPath
//
//  Created by Kiattisak Anoochitarom on 4/27/55 BE.
//  Copyright (c) 2555 __MyCompanyName__. All rights reserved.
//

#import "CircularPathCustomize.h"

@interface CircularPathCustomize()

@property (nonatomic, strong) CircularView *fullCircularView;
@property (nonatomic, strong) CircularView *circularView;

@end

@implementation CircularPathCustomize

@synthesize fullCircularView, circularView;
@synthesize strokeColor;
@synthesize progress;

#pragma mark - Helper Method

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.transform = CGAffineTransformMakeRotation(-M_PI_2);
        self.progress = 0.00;
    }
    
    return self;
}

- (CircularPathCustomize *)initWithRect:(CGRect)_rect progress:(CGFloat)_progress strokeColor:(UIColor *)_color{
    
    if (!(self = [self initWithFrame:_rect])) {
        return nil;
    }
    self.progress = _progress;
    self.strokeColor = _color;
    
    return self;
}

+ (CircularPathCustomize *)initCircularWithRect:(CGRect)_rect progress:(CGFloat)_progress strokeColor:(UIColor *)_color{
    
    return [[CircularPathCustomize alloc] initWithRect:_rect progress:_progress strokeColor:_color];
}     


- (void)circularViewAnimated{
    if (self.progress < 0.75) {
        self.progress += 0.01;
        NSLog(@"%.2f",self.progress);
    }
    [self setNeedsDisplay];
}

- (void)drawingCircular{
    self.fullCircularView = [[CircularView alloc] initWithFrame:self.bounds];
    [self.fullCircularView drawingCircularBackgroundWithStrokeColor:[UIColor colorWithWhite:1.0 alpha:0.5]];
    
    self.circularView = [[CircularView alloc] initWithFrame:self.bounds];
    [self.circularView drawingCircularPathWithEndPoint:self.progress andStrokeColor:self.strokeColor];
    
    [NSTimer scheduledTimerWithTimeInterval:1/20 target:self selector:@selector(circularViewAnimated) userInfo:nil repeats:YES];
    
    [self addSubview:self.fullCircularView];
    [self addSubview:self.circularView];
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    [self drawingCircular];
}


@end
