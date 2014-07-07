//
//  Vi.m
//  FilmsApplication
//
//  Created by itisioslab on 05.07.14.
//  Copyright (c) 2014 itisioslab. All rights reserved.
//

#import "Vi.h"

@interface Vi () {
 NSMutableArray *listOfAll;}

@end

@implementation Vi

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
    
    listOfAll = [NSArray arrayWithObjects:@"Brave",@"Seven pounds",@"Matrix",  nil];}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return listOfAll.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    
    // Configure the cell...
    
    
    cell.textLabel.text = [listOfAll objectAtIndex:indexPath.row];
    
    return cell;
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

// - (IBAction)Button:(id)sender {
    
 //   NSString *string = self.title1.text;
//    NSLog(@"%@",string);
 //   NSString *string = self.label1.text;
   // NSLog(@"%@",string);
    
  //  [listOfAll addObject:@"Martin7"];
//NSLog(@"%@", listOfAll);
//
// }
    
@end
