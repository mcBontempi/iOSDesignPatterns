//
//  DDTNumberPickerViewController.h
//  DelegatePatternUsingProtocol
//
//  Created by Daren taylor on 16/08/2013.
//  Copyright (c) 2013 DarenDavidTaylor.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DDTNumberPickerViewControllerDelegate.h"

@interface DDTNumberPickerViewController : UIViewController

@property (nonatomic) NSInteger value;
@property (nonatomic, weak) id<DDTNumberPickerViewControllerDelegate> delegate;

@end
