//
//  CreditCard.h
//  oop
//
//  Created by Christopher Tysh on 7/21/16.
//  Copyright © 2016 Christopher Tysh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CreditCard : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) float balance;
@property (nonatomic, assign) float interestRate;

- (float)interestEarned;
- (float)balanceAfterInterest;

@end
