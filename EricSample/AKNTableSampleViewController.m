//
//  AKNTableSampleViewController.m
//  EricSample
//
//  Created by Satoshi SUZUKI on 2013/09/27.
//  Copyright (c) 2013年 AknEp. All rights reserved.
//

#import "AKNTableSampleViewController.h"

@interface AKNTableSampleViewController ()

@end

@implementation AKNTableSampleViewController

#pragma mark - View Cycle

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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDelegate & Datasource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if( section == 0 ){
        return @"AknEp";
    }else{
        return @"siritori";
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    
    if( indexPath.section == 0 ){
        cell = [tableView dequeueReusableCellWithIdentifier:@"AknEp" forIndexPath:indexPath];
        UILabel *aknLabel = (UILabel *)[cell viewWithTag:10];
        aknLabel.text = [NSString stringWithFormat:@"aknep: %d", indexPath.row];
    }
    
    if( indexPath.section == 1 ){
        cell = [tableView dequeueReusableCellWithIdentifier:@"siritori" forIndexPath:indexPath];
        UILabel *siritoriLabel = (UILabel *)[cell viewWithTag:10];
        siritoriLabel.text = [NSString stringWithFormat:@"siritori: %d", indexPath.row];
    }
    
    return cell;
}

@end
