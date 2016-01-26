//
//  SAPUserViewController.m
//  UIProject
//
//  Created by S A P on 1/24/16.
//  Copyright © 2016 Andrey Shevtsov. All rights reserved.
//

#import "SAPUserViewController.h"
#import "SAPUserView.h"

@interface SAPUserViewController ()
@property (nonatomic, readonly) SAPUserView *userView;

@end

@implementation SAPUserViewController

#pragma mark-
#pragma mark Accessors

- (void)setUser:(SAPUser *)user {
    if (_user != user) {
        _user = user;
    }
    
    self.userView.user = user;
}

- (SAPUserView *)userView {
    if ([self isViewLoaded] && [self.view isKindOfClass:[SAPUserView class]]) {
        return (SAPUserView *)self.view;
    }
    
    return nil;
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
