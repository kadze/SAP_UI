//
//  SAPUserView.m
//  UIProject
//
//  Created by S A P on 1/24/16.
//  Copyright © 2016 Andrey Shevtsov. All rights reserved.
//

#import "SAPUserView.h"
#import "SAPUser.h"
#import <math.h>

@implementation SAPUserView

#pragma mark -
#pragma mark Accessors

- (void)setUser:(SAPUser *)user {
    if (_user != user) {
        _user = user;
        
        [self fillWithUser:user];
    }
}

#pragma mark -
#pragma mark Public

- (void)rotateLabel {
    self.label.transform = CGAffineTransformMakeRotation((float)arc4random() / UINT32_MAX * 2 * M_PI);
}

- (void)fillWithUser:(SAPUser *)user {
    self.label.text = user.fullName;
}



@end
