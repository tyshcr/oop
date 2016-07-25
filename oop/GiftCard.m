//
//  GiftCard.m
//  oop
//
//  Created by Christopher Tysh on 7/25/16.
//  Copyright © 2016 Christopher Tysh. All rights reserved.
//

#import "GiftCard.h"

@implementation GiftCard

- (void)increaseBalance:(float)amount {
    _balance = _balance + amount;
}

- (void)decreaseBalance:(float)amount {
    _balance = _balance - amount;
    // TODO: account for fact that gift card balance cannot be less than $0.00
}

@end
