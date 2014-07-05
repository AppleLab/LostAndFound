//
//  Vi.h
//  FilmsApplication
//
//  Created by itisioslab on 05.07.14.
//  Copyright (c) 2014 itisioslab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Vi : UIViewController <UITableViewDelegate,UITableViewDataSource >
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UITextField *title1;

- (IBAction)Button:(id)sender;


@end
