//
//  SAPLabelViewController.m
//  UIProject
//
//  Created by S A P on 1/24/16.
//  Copyright © 2016 Andrey Shevtsov. All rights reserved.
//

#import "SAPLabelViewController.h"
#import "SAPLabelView.h"

@interface SAPLabelViewController ()
@property (nonatomic, readonly) SAPLabelView *labelView;

@end

@implementation SAPLabelViewController

#pragma mark-
#pragma mark Accessors

- (void)setData:(NSString *)data {
    if (_data != data) {
        _data = data;
    }
    
    self.labelView.label.text = data;
}

- (SAPLabelView *)labelView {
    if ([self isViewLoaded] && [self.view isKindOfClass:[SAPLabelView class]]) {
        return (SAPLabelView *)self.view;
    }
    
    return nil;
}

#pragma mark -
#pragma mark View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.data = self.data;
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
