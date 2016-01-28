//
//  SAPUsersViewController.m
//  UIProject
//
//  Created by S A P on 1/28/16.
//  Copyright © 2016 Andrey Shevtsov. All rights reserved.
//

#import "SAPUsersViewController.h"
#import "SAPUsersView.h"
#import "SAPMacro.h"

SAPViewControllerBaseViewProperty(SAPUsersViewController, usersView, SAPUsersView)

@implementation SAPUsersViewController

#pragma mark -
#pragma mark View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.usersView.user = self.user;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
