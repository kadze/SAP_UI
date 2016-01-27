//
//  SAPDraggableView.m
//  UIProject
//
//  Created by S A P on 1/27/16.
//  Copyright © 2016 Andrey Shevtsov. All rights reserved.
//

#import "SAPDraggableView.h"

static NSUInteger SAPDraggableViewTouchCount = 1;
static NSTimeInterval SAPDuration = 1.5;

@interface SAPDraggableView ()
@property (nonatomic, retain) UITouch *leadingTouch;

- (void)processTouches:(NSSet *)touches;

@end

@implementation SAPDraggableView

#pragma mark-
#pragma makr Touch Handling

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.leadingTouch = [touches anyObject];
    [self processTouches:touches];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    [self processTouches:touches];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self processTouches:touches];
    self.leadingTouch = nil;
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    [self processTouches:touches];
    self.leadingTouch = nil;
}

#pragma mark -
#pragma mark Private

- (void)processTouches:(NSSet *)touches {
    if ([touches count] != SAPDraggableViewTouchCount) {
        return;
    }
    
    UITouch *touch = self.leadingTouch;
    CGPoint location = [touch locationInView:self.superview];
    
    CGFloat random = arc4random() / UINT32_MAX;
    CGFloat scale = random * 2 - 1;
    
    CGAffineTransform transform = CGAffineTransformMakeScale(scale, scale);
    transform = CGAffineTransformConcat(transform, CGAffineTransformMakeRotation(random * 2 * M_PI));
    
    CGRect frame = self.frame;
    frame.origin = location;
    [UIView animateWithDuration:SAPDuration animations: ^{
        self.frame = frame;
        self.transform = transform;
    }];
}

@end
