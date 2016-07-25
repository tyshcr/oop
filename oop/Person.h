//
//  Person.h
//  oop
//
//  Created by Christopher Tysh on 7/21/16.
//  Copyright © 2016 Christopher Tysh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Interest.h"

@interface Person : NSObject <Interest>

@property (nonatomic, strong) NSString *firstname;
@property (nonatomic, strong) NSString *lastname;
@property (nonatomic, strong) NSMutableArray *wallets;

- (NSString*)fullname;

@end
