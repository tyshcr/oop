//
//  Wallet.m
//  oop
//
//  Created by Christopher Tysh on 7/21/16.
//  Copyright © 2016 Christopher Tysh. All rights reserved.
//

#import "Wallet.h"
#import "CreditCard.h"

@implementation Wallet

- (float)interestEarned {
    float totalInterestEarned = 0.0;
    for (CreditCard *card in _creditCards) {
        totalInterestEarned = totalInterestEarned + [card interestEarned];
    }
    return totalInterestEarned;
}

- (float)balanceAfterInterest {
    return 1.0; // _balance + [self interestEarned];
}

@end
