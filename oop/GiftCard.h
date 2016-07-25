//
//  GiftCard.h
//  oop
//
//  Created by Christopher Tysh on 7/25/16.
//  Copyright © 2016 Christopher Tysh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Transaction.h"

@interface GiftCard : NSObject <Transaction>

typedef enum {
    TARGET,
    WALMART,
    CRATE_AND_BARREL,
    AMAZON
} Brand;

@property (nonatomic, assign) Brand brand;
@property (nonatomic, assign) float balance;

@end
