//
//  SAPUser.m
//  UIProject
//
//  Created by S A P on 1/25/16.
//  Copyright © 2016 Andrey Shevtsov. All rights reserved.
//

#import "SAPUser.h"
#import "NSString+SAPRandomName.h"

@implementation SAPUser

#pragma mark-
#pragma mark Initializations and Deallocations

- (instancetype)init {
    self = [super init];
    
    if (self) {
        self.name = [NSString randomName];
        self.surname = [NSString randomName];
    }
    
    return self;
}

#pragma mark-
#pragma mark Accessors

- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@", self.name, self.surname];
}

@end
