//
//  Interest.h
//  oop
//
//  Created by Christopher Tysh on 7/25/16.
//  Copyright © 2016 Christopher Tysh. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Interest <NSObject>

- (float)interestEarned;
- (float)balanceAfterInterest;

@end
