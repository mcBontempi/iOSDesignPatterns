//
//  B.h
//  DelegatePatternUsingProtocol
//
//  Created by Daren taylor on 19/08/2013.
//  Copyright (c) 2013 DarenDavidTaylor.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BDelegate.h"

@interface B : NSObject

@property (nonatomic, weak) id<BDelegate> delegate;

- (void)action1;
- (void)action2;
- (void)action3;

@end
