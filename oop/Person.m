//
//  Person.m
//  oop
//
//  Created by Christopher Tysh on 7/21/16.
//  Copyright © 2016 Christopher Tysh. All rights reserved.
//

#import "Person.h"
#import "Wallet.h"

@implementation Person

- (NSString*)fullname {
    return [NSString stringWithFormat:@"%@ %@", _firstname, _lastname];
}

- (float)interestEarned {
    float totalInterestEarned = 0.0;
    for (Wallet *wallet in _wallets) {
        totalInterestEarned = totalInterestEarned + [wallet interestEarned];
    }
    return totalInterestEarned;
}

- (float)balanceAfterInterest {
    return 1.0; // _balance + [self interestEarned];
}

@end
