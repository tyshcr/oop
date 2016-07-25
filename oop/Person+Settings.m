//
//  Person+Settings.m
//  oop
//
//  Created by Christopher Tysh on 7/25/16.
//  Copyright © 2016 Christopher Tysh. All rights reserved.
//

#import "Person+Settings.h"

@implementation Person (Settings)

- (void)updateFirstname:(NSString*)newFirstname {
    self.firstname = newFirstname;
}

- (void)updateLastname:(NSString*)newLastname {
    self.lastname = newLastname;
}

- (void)updatePassword:(NSString*)newPassword {
    
}

@end
