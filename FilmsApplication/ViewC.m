//
//  ViewC.m
//  FilmsApplication
//
//  Created by itisioslab on 07.07.14.
//  Copyright (c) 2014 itisioslab. All rights reserved.
//

#import "ViewC.h"
#import "MySingleton.h"

@interface ViewC ()

@end

@implementation ViewC

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)SendButton:(id)sender {
    NSString *name2 = self.name1.text;
    [[MySingleton sharedInstance].nameS addObject:[NSString stringWithFormat:@"%@",name2]];
    
    NSString *number2 = self.number1.text;
    [[MySingleton sharedInstance].numberS addObject:[NSString stringWithFormat:@"%@",number2]];
    
   NSString *title2 = self.title1.text;
   [[MySingleton sharedInstance].titleS addObject:[NSString stringWithFormat:@"%@",title2]];
    
    
    NSString *desc2 = self.desc1.text;
    [[MySingleton sharedInstance].descS addObject:[NSString stringWithFormat:@"%@",desc2]];
    
    
    NSLog(@"%@",[MySingleton sharedInstance].nameS[0]);
}
@end
