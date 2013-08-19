//
//  DDTNumberPickerViewController.m
//  DelegatePatternUsingProtocol
//
//  Created by Daren taylor on 16/08/2013.
//  Copyright (c) 2013 DarenDavidTaylor.com. All rights reserved.
//

#import "DDTNumberPickerViewController.h"

@interface DDTNumberPickerViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation DDTNumberPickerViewController

- (void)setValue:(NSInteger)value
{
  _value = value;
  self.label.text = [NSString stringWithFormat:@"%d", _value];
}

#pragma mark - Actions

- (IBAction)subtractPressed:(id)sender
{
  [self changeValueTo:--_value];
}

- (IBAction)addPressed:(id)sender
{
  [self changeValueTo:++_value];
}

- (void)changeValueTo:(NSInteger)proposedValue
{
  if ([self.delegate respondsToSelector:@selector(shouldChangeValue:)]) {
    if ([self.delegate shouldChangeValue:proposedValue]) {
      self.value = proposedValue;
    }
  }
  else {
    self.value = proposedValue;
  }
  
}

@end
