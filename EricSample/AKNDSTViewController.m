//
//  AKNDSTViewController.m
//  EricSample
//
//  Created by Satoshi SUZUKI on 2013/09/27.
//  Copyright (c) 2013年 AknEp. All rights reserved.
//

#import "AKNDSTViewController.h"

@interface AKNDSTViewController ()

@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation AKNDSTViewController

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
	// Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    self.textLabel.text = self.hoge;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
