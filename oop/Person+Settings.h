//
//  Person+Settings.h
//  oop
//
//  Created by Christopher Tysh on 7/25/16.
//  Copyright © 2016 Christopher Tysh. All rights reserved.
//

#import "Person.h"

@interface Person (Settings)

- (void)updateName:(NSString*)newName;
- (void)updatePassword:(NSString*)newPassword;

@end
