//
//  TableViewControllerAll.m
//  FilmsApplication
//
//  Created by itisioslab on 01.07.14.
//  Copyright (c) 2014 itisioslab. All rights reserved.
//

#import "TableViewControllerAll.h"
#import "ViewController.h"
#import "MySingleton.h"

@interface TableViewControllerAll () {
    NSArray *listOfAllFilms;
    NSMutableArray *Title;
    NSMutableArray *Author;
    NSMutableArray *Number;
    NSMutableArray *Description;
    NSMutableArray *Image;
    NSMutableArray *date;
    NSDate *currentDate ;
    NSDateFormatter *dateFormatter;
    
}

@end

@implementation TableViewControllerAll

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void) viewDidAppear:(BOOL)animated {
    [self.tableView reloadData ] ;
    Author = [MySingleton sharedInstance].nameS;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    Title = [NSMutableArray arrayWithObjects:@"Monsters University",@"Men in Black",@"Brave",@"Seven pounds",@"Matrix", @"Monsters University",@"Men in Black",@"Brave",@"Seven pounds",@"Matrix",  nil];
    Number= [NSMutableArray arrayWithObjects: @"896666665643",@"8955356356",@"897656666",@"896666665643",@"8955356356",@"897656666",@"896666665643",@"8955356356",@"897656666",@"896666665643",nil];
    Author = [NSMutableArray arrayWithObjects:@"author1",@"author2",@"author3",@"author3",@"author1",@"author2",@"author3",@"author3",@"author1",@"author2",  nil];
    Description = [NSMutableArray arrayWithObjects:@"Mongrereggrehhrgrhegerertdgstrhhedhs rhr", @"Men ireghresgehrgergnBlack",@"Bragreehrgertgsetrdhghrtydjnthxdgdrtjhve",@"Seven prtshdyrjsthgrtdyjhtgrhtdjyyjhgfxdounds",@"Matrihtrrtyjhtfgyfgx", @"Mongrereggrehhrgrhegerertdgstrhhedhs rhr", @"Men ireghresgehrgergnBlack",@"Bragreehrgertgsetrdhghrtydjnthxdgdrtjhve",@"Seven prtshdyrjsthgrtdyjhtgrhtdjyyjhgfxdounds",@"Matrihtrrtyjhtfgyfgx", nil];
    date = [[NSMutableArray alloc]init] ;
    currentDate  = [NSDate date] ;
    [date addObject : currentDate] ;
    dateFormatter  = [[NSDateFormatter alloc] init] ;
    [dateFormatter setDateFormat: @ "dd MMM yyyy HH:mm"] ;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

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
    return Title.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    
    // Configure the cell...
    
    
    cell.textLabel.text = [Title objectAtIndex:indexPath.row];
    
    return cell;
}


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([[segue identifier] isEqualToString:@"ViewControllerSegue"]){
    ViewController *VC = [[ViewController alloc] init];
    VC = [segue destinationViewController];
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    VC.author = [Author objectAtIndex:indexPath.row];
    VC.number = [Number objectAtIndex:indexPath.row];
    VC.description = [Description objectAtIndex:indexPath.row];
    VC.value = [Title objectAtIndex:indexPath.row];
    VC.img = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",indexPath.row]];
    VC.dateText  = [dateFormatter  stringFromDate: [NSDate date]] ;
    }
}


@end
