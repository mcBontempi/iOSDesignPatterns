//
//  DelegatePatternUsingProtocolTests.m
//  DelegatePatternUsingProtocolTests
//
//  Created by Daren David Taylor on 15/08/2013.
//  Copyright (c) 2013 DarenDavidTaylor.com. All rights reserved.
//

#import "DelegatePatternUsingProtocolTests.h"
#import "A.h"
#import "B.h"

@implementation DelegatePatternUsingProtocolTests

- (void)testDelegate
{
  A *a = [[A alloc] init];
  B *b = [[B alloc] init];
  
  b.delegate = a;

  [b action1];
  [b action2];
  [b action3];
}

@end
