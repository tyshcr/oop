//
//  oopTests.m
//  oopTests
//
//  Created by Christopher Tysh on 7/21/16.
//  Copyright © 2016 Christopher Tysh. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"
#import "Wallet.h"
#import "CreditCard.h"

@interface oopTests : XCTestCase

@end

@implementation oopTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testPerson {
    Person *person = [[Person alloc] init];
    person.firstname = @"Christopher";
    person.lastname = @"Tysh";
    XCTAssertEqualObjects([person fullname], @"Christopher Tysh", "Names are not equal");
}

- (void)testCardInterestValue {
    CreditCard *card1 = [[CreditCard alloc] init];
    card1.name = @"Visa";
    card1.balance = 100.00;
    card1.interestRate = 1.0;
    
    XCTAssertEqual([card1 interestEarned], 1.00, "Card 1 interest earned is incorrect");
    XCTAssertEqual([card1 balanceAfterInterest], 101.00, "Card 1 new balance is incorrect");
    
    CreditCard *card2 = [[CreditCard alloc] init];
    card2.name = @"MasterCard";
    card2.balance = 500.00;
    card2.interestRate = 2.0;
    
    XCTAssertEqual([card2 interestEarned], 10.00, "Card 2 interest earned is incorrect");
    XCTAssertEqual([card2 balanceAfterInterest], 510.00, "Card 2 new balance is incorrect");
}

- (void)testWalletInterest {
    
    CreditCard *card1 = [[CreditCard alloc] init];
    card1.name = @"Visa";
    card1.balance = 100.00;
    card1.interestRate = 1.0;
    
    CreditCard *card2 = [[CreditCard alloc] init];
    card2.name = @"MasterCard";
    card2.balance = 500.00;
    card2.interestRate = 2.0;
    
    Wallet *wallet = [[Wallet alloc] init];
    wallet.name = @"My Wallet";
    wallet.creditCards = [@[card1,card2] mutableCopy];
    
    XCTAssertEqual([wallet interestEarned], 11.00, "Wallet 1 interest earned is incorrect");
    
    CreditCard *card3 = [[CreditCard alloc] init];
    card3.name = @"Discover";
    card3.balance = 1000.00;
    card3.interestRate = 10.0; // $100 interest
    
    [wallet.creditCards addObject:card3];
    
    card1.interestRate = 4.0; // $4 interest
    card2.interestRate = 5.0; // $25 interest
    
    XCTAssertEqual([wallet interestEarned], 129.00, "Wallet 2 interest earned is incorrect");
}

- (void)testWalletBalance {
    CreditCard *card1 = [[CreditCard alloc] init];
    card1.name = @"Visa";
    card1.balance = 100.00;
    card1.interestRate = 1.0;
    
    CreditCard *card2 = [[CreditCard alloc] init];
    card2.name = @"MasterCard";
    card2.balance = 500.00;
    card2.interestRate = 2.0;
    
    Wallet *wallet = [[Wallet alloc] init];
    wallet.name = @"My Wallet";
    wallet.creditCards = [@[card1,card2] mutableCopy];
    
    XCTAssertEqual([wallet interestEarned], 11.00, "Wallet 1 interest earned is incorrect");
    XCTAssertEqual([wallet balanceAfterInterest], 611.00, "Wallet 1 balance in incorrect");
    
    CreditCard *card3 = [[CreditCard alloc] init];
    card3.name = @"Discover";
    card3.balance = 1000.00;
    card3.interestRate = 10.0; // $100 interest
    
    [wallet.creditCards addObject:card3];
    
    card1.interestRate = 4.0; // $4 interest
    card2.interestRate = 5.0; // $25 interest
    
    XCTAssertEqual([wallet interestEarned], 129.00, "Wallet 2 interest earned is incorrect");
    XCTAssertEqual([wallet balanceAfterInterest], 1729.00, "Wallet 2 balance in incorrect");
}

- (void)testPersonInterestValue {
    CreditCard *card1 = [[CreditCard alloc] init];
    card1.name = @"Visa";
    card1.balance = 100.00;
    card1.interestRate = 1.0;
    
    CreditCard *card2 = [[CreditCard alloc] init];
    card2.name = @"MasterCard";
    card2.balance = 500.00;
    card2.interestRate = 2.0;
    
    Wallet *wallet1 = [[Wallet alloc] init];
    wallet1.name = @"My Wallet 1";
    wallet1.creditCards = [@[card1,card2] mutableCopy]; // $11 interest
    
    CreditCard *card3 = [[CreditCard alloc] init];
    card3.name = @"Discover";
    card3.balance = 1000.00;
    card3.interestRate = 10.0; // $100 interest
    
    CreditCard *card4 = [[CreditCard alloc] init];
    card4.name = @"AmericanExpress";
    card4.balance = 1200.00;
    card4.interestRate = 5.0; // $60 interest
    
    Wallet *wallet2 = [[Wallet alloc] init];
    wallet2.name = @"My Wallet 2";
    wallet2.creditCards = [@[card3,card4] mutableCopy]; // $160 interest
    
    Person *person = [[Person alloc] init];
    person.firstname = @"Christopher";
    person.lastname = @"Tysh";
    person.wallets = [@[wallet1,wallet2] mutableCopy];
    
    XCTAssertEqual([person interestEarned], 171.00, "Person interest earned is incorrect");
}

@end
