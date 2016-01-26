//
//  SAPUserViewController.h
//  UIProject
//
//  Created by S A P on 1/24/16.
//  Copyright © 2016 Andrey Shevtsov. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SAPUser;

@interface SAPUserViewController : UIViewController
@property (nonatomic, strong) SAPUser *user;

- (IBAction)onRotate:(id)sender;

@end
