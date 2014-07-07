//
//  ViewController.m
//  FilmsApplication
//
//  Created by itisioslab on 01.07.14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.label.text = _value;
    self.image.image = _img;
    
    self.auth.text = _author;
    self.numb.text = _number;
    self.desc.text = _description;
    self.labeldate.text = _dateText ;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
 - (IBAction)switch:(UISwitch *)sender forEvent:(UIEvent *)event {
 
 }
 */
- (IBAction)switch:(id)sender {
    if (switchOutlet.on) {
        self.view.backgroundColor = [UIColor redColor];
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
    }
}
@end
