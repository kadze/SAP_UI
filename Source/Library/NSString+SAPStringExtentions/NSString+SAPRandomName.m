//
//  NSString+SAPRandomName.m
//  UIProject
//
//  Created by S A P on 1/25/16.
//  Copyright © 2016 Andrey Shevtsov. All rights reserved.
//

#import "NSString+SAPRandomName.h"
#import "NSString+SAPStringExtentions.h"

static const NSUInteger kSAPRandomNameLength = 10;

@implementation NSString (SAPRandomName)

+ (instancetype) randomName {
    return [[NSString generateRandomStringWithAlphabetString:[NSString lowerCaseLetterAlphabet] ofSize:kSAPRandomNameLength] capitalizedString];
}

@end
