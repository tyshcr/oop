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

#pragma mark - Interest Protocol Methods
- (float)interestEarned {
    float totalInterestEarned = 0.0;
    for (CreditCard *card in _creditCards) {
        totalInterestEarned = totalInterestEarned + [card interestEarned];
    }
    return totalInterestEarned;
}

- (float)balanceAfterInterest {
    float totalBalance = 0.0;
    for (CreditCard *card in _creditCards) {
        totalBalance = totalBalance + [card balanceAfterInterest];
    }
    return totalBalance;
}

@end
