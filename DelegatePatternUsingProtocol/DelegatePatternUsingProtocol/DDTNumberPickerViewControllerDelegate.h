//
//  DDTNumberPickerViewControllerDelegate.h
//  DelegatePatternUsingProtocol
//
//  Created by Daren taylor on 16/08/2013.
//  Copyright (c) 2013 DarenDavidTaylor.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DDTNumberPickerViewControllerDelegate <NSObject>

@required
- (void)didChangeValue:(NSInteger)value;

@optional
- (BOOL)shouldChangeValue:(NSInteger)value;

@end
