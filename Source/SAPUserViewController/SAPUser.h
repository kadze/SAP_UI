//
//  SAPUser.h
//  UIProject
//
//  Created by S A P on 1/25/16.
//  Copyright © 2016 Andrey Shevtsov. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface SAPUser : NSObject
@property (nonatomic, copy)     NSString *name;
@property (nonatomic, copy)     NSString *surname;
@property (nonatomic, readonly) NSString *fullName;

@end
