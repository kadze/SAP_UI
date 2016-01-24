//
//  SAPLabelViewController.m
//  UIProject
//
//  Created by S A P on 1/24/16.
//  Copyright © 2016 Andrey Shevtsov. All rights reserved.
//

#import "SAPLabelViewController.h"

@interface SAPLabelViewController ()

@end

@implementation SAPLabelViewController

#pragma mark -
#pragma mark View Lifecycle

- (void)viewDidLoad {
//    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    label.text = @"tralalala";
    label.backgroundColor = [UIColor redColor];
    
    self.view.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.5];
    self.view.opaque = NO;
    
    [self.view addSubview:label];
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
