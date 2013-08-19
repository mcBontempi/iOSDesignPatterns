//
//  A.m
//  DelegatePatternUsingProtocol
//
//  Created by Daren taylor on 19/08/2013.
//  Copyright (c) 2013 DarenDavidTaylor.com. All rights reserved.
//

#import "A.h"

@implementation A

- (id)init
{
  if (self = [super init]) {
  }
  return self;
}

#pragma mark BDelegate Methods

- (void) requiredMethod
{
  NSLog (@"requiredMethod called");
}

- (void) optionalMethod1
{
  NSLog (@"optionalMethod1 called");
}

@end
