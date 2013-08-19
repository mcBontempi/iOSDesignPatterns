//
//  DDTViewController.m
//  DelegatePatternUsingProtocol
//
//  Created by Daren David Taylor on 15/08/2013.
//  Copyright (c) 2013 DarenDavidTaylor.com. All rights reserved.
//

#import "DDTViewController.h"
#import "DDTNumberPickerViewController.h"
#import "DDTNumberPickerViewControllerDelegate.h"

@interface DDTViewController () <DDTNumberPickerViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation DDTViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
  if ([segue.identifier isEqualToString:@"DDTNumberPickerSegue"]) {
    DDTNumberPickerViewController *numberPickerViewController = segue.destinationViewController;
    
    numberPickerViewController.value = 21;
    numberPickerViewController.delegate = self;
  }
}

- (void)didChangeValue:(NSInteger)value
{
  NSLog(@"didChangeValue:%d", value);
}

- (BOOL)shouldChangeValue:(NSInteger)value
{
  return value >= 18 && value <= 30;
}

@end
