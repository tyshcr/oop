//
//  Person.m
//  oop
//
//  Created by Christopher Tysh on 7/21/16.
//  Copyright © 2016 Christopher Tysh. All rights reserved.
//

#import "Person.h"

@implementation Person

- (NSString*)fullname {
    return [NSString stringWithFormat:@"%@ %@", _firstname, _lastname];
}

@end
