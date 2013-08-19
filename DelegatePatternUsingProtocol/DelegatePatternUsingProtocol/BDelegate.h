//
//  BDelegate.h
//  DelegatePatternUsingProtocol
//
//  Created by Daren taylor on 19/08/2013.
//  Copyright (c) 2013 DarenDavidTaylor.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BDelegate <NSObject>

@required

- (void)requiredMethod;

@optional

- (void)optionalMethod1;
- (void)optionalMethod2;

@end
