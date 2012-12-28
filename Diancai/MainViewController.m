//
//  MainViewController.m
//  Diancai
//
//  Created by s3209_25 on 12-12-14.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"
#import "MainViewCell.h"
#import "CaileiObj.h"
#import "CaidanViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    CaileiObj* c1=[[CaileiObj alloc]init];
    c1.name=@"中餐";
    c1.image=[UIImage imageNamed:@"zhongcan.png"];
    CaileiObj* c2=[[CaileiObj alloc]init];
    c2.name=@"西餐";
    c2.image=[UIImage imageNamed:@"xican.png"];
    CaileiObj* c3=[[CaileiObj alloc]init];
    c3.name=@"甜品";
    c3.image=[UIImage imageNamed:@"tianpin.png"];
    CaileiObj* c4=[[CaileiObj alloc]init];
    c4.name=@"酒水";
    c4.image=[UIImage imageNamed:@"jiushui.png"];
    _ary=[[NSArray alloc]initWithObjects:c1, c2,c3,c4,nil];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [_ary count];
;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"MainViewCell";
    MainViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"MainViewCell" owner:self options:nil] lastObject];
    }
    // Configure the cell...
    CaileiObj* c1=[_ary objectAtIndex:indexPath.row];
    cell.CaileiName.text=c1.name;
    cell.CaileiImage.image=c1.image;
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
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
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
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

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
  
    CaidanViewController *detailViewController = [[CaidanViewController alloc] initWithNibName:@"CaidanViewController" bundle:nil];
    CaileiObj* obj=[_ary objectAtIndex:indexPath.row];
    if ([obj.name isEqualToString:@"中餐"]) {
        detailViewController.position=[NSString stringWithFormat: @"%d", indexPath.row+1];
    }else if ([obj.name isEqualToString:@"西餐"]) {
        detailViewController.position=[NSString stringWithFormat: @"%d", indexPath.row+2];
    }else if ([obj.name isEqualToString:@"甜品"]) {
        detailViewController.position=[NSString stringWithFormat: @"%d", indexPath.row+3];;
    }else {
        detailViewController.position=[NSString stringWithFormat: @"%d", indexPath.row+4];;
    }
    
    [self.navigationController pushViewController:detailViewController animated:YES];
    //
    // ...
    //Pass the selected object to the new view controller.
//   [self presentModalViewController:detailViewController animated:YES];
   

}

@end
