//
//  B.m
//  DelegatePatternUsingProtocol
//
//  Created by Daren taylor on 19/08/2013.
//  Copyright (c) 2013 DarenDavidTaylor.com. All rights reserved.
//

#import "B.h"

@implementation B

- (void)action1
{
  [self.delegate requiredMethod];
}

- (void)action2
{
  if([self.delegate respondsToSelector:@selector(optionalMethod1)]) {
    [self.delegate optionalMethod1];
  }
}

- (void)action3
{
  if([self.delegate respondsToSelector:@selector(optionalMethod2)]) {
    [self.delegate optionalMethod2];
  }
}

@end
