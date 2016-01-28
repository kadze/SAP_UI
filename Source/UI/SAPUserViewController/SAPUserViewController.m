//
//  SAPUserViewController.m
//  UIProject
//
//  Created by S A P on 1/24/16.
//  Copyright © 2016 Andrey Shevtsov. All rights reserved.
//

#import "SAPUserViewController.h"
#import "SAPUserView.h"
#import "SAPMacro.h"

SAPViewControllerBaseViewProperty(SAPUserViewController, userView, SAPUserView)

@implementation SAPUserViewController

#pragma mark-
#pragma mark Accessors

- (void)setUser:(SAPUser *)user {
    if (_user != user) {
        _user = user;
    }
    
    self.userView.user = user;
}

#pragma mark -
#pragma mark View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.userView.user = self.user;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark Interface Handling


@end
