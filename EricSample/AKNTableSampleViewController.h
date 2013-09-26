//
//  AKNTableSampleViewController.h
//  EricSample
//
//  Created by Satoshi SUZUKI on 2013/09/27.
//  Copyright (c) 2013年 AknEp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AKNTableSampleViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
