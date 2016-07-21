//
//  CreditCard.m
//  oop
//
//  Created by Christopher Tysh on 7/21/16.
//  Copyright © 2016 Christopher Tysh. All rights reserved.
//

#import "CreditCard.h"

@implementation CreditCard

- (float)interestEarned {
    return _balance * (_interestRate / 100);
}

- (float)balanceAfterInterest {
    return _balance + [self interestEarned];
}

@end
