//
//  SAPUserView.h
//  UIProject
//
//  Created by S A P on 1/24/16.
//  Copyright © 2016 Andrey Shevtsov. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SAPUser;
@class SAPDraggableView;

@interface SAPUserView : UIView
@property (nonatomic, strong) IBOutlet UILabel          *label;
@property (nonatomic, strong) IBOutlet UIButton         *button;
@property (nonatomic, strong) IBOutlet SAPDraggableView *draggableView;
@property (nonatomic, strong)          SAPUser          *user;

- (void)rotateLabel;
- (void)fillWithUser:(SAPUser *)user;

@end
