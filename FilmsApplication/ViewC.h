//
//  ViewC.h
//  FilmsApplication
//
//  Created by itisioslab on 07.07.14.
//  Copyright (c) 2014 itisioslab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewC : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *desc1;
@property (weak, nonatomic) IBOutlet UITextField *title1;
@property (weak, nonatomic) IBOutlet UITextField *number1;
@property (weak, nonatomic) IBOutlet UITextField *name1;



- (IBAction)SendButton:(id)sender;

@end
