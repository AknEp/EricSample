//
//  AKNViewController.m
//  EricSample
//
//  Created by Satoshi SUZUKI on 2013/09/27.
//  Copyright (c) 2013年 AknEp. All rights reserved.
//

#import "AKNViewController.h"

#import "AKNDSTViewController.h"

@interface AKNViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textfield;

@end

@implementation AKNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    AKNDSTViewController *dstViewController = (AKNDSTViewController *)segue.destinationViewController;
    
    dstViewController.hoge = self.textfield.text;
}

@end
