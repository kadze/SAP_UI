//
//  SAPDraggableView.h
//  UIProject
//
//  Created by S A P on 1/27/16.
//  Copyright © 2016 Andrey Shevtsov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SAPDraggableView : UIView
@property (nonatomic, strong) IBOutlet UIGestureRecognizer *recognizer;

- (IBAction)onPan:(UIPanGestureRecognizer *)sender;

@end
