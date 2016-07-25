//
//  Wallet.h
//  oop
//
//  Created by Christopher Tysh on 7/21/16.
//  Copyright © 2016 Christopher Tysh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Interest.h"

@interface Wallet : NSObject <Interest>

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSMutableArray *creditCards;

@end
