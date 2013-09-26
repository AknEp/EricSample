//
//  AKNDateSelectViewController.m
//  EricSample
//
//  Created by Satoshi SUZUKI on 2013/09/27.
//  Copyright (c) 2013年 AknEp. All rights reserved.
//

#import "AKNDateSelectViewController.h"

#import <ActionSheetPicker2/ActionSheetDatePicker.h>

@interface AKNDateSelectViewController ()

@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property NSDate *date;

@end


@implementation AKNDateSelectViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.date = [NSDate date];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBAction

- (IBAction)pickDate:(id)sender
{
    ActionSheetDatePicker *actionSheetPicker = [[ActionSheetDatePicker alloc] initWithTitle:@"" datePickerMode:UIDatePickerModeDate selectedDate:self.date target:self action:@selector(dateSelected:element:) origin:sender];
    [actionSheetPicker addCustomButtonWithTitle:@"今日" value:[NSDate date]];
    // self.actionSheetPicker.hideCancel = YES;
    [actionSheetPicker showActionSheetPicker];
}

#pragma mark - ActionSheetDatePicker

- (void)dateSelected:(NSDate *)date element:(id)element {
    self.date = date;
    
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    [dateFormatter setDateFormat:@"yy年MM月dd日"];
    
    self.dateLabel.text = [dateFormatter stringFromDate:date];
}


@end
