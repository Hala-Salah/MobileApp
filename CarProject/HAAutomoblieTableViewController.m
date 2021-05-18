//
//  HAAutomoblieTableViewController.m
//  CarProject
//
//  Created by Hala Salah on 01/05/2021.
//

#import "HAAutomoblieTableViewController.h"

@interface HAAutomoblieTableViewController (){
    NSMutableArray * AutoMobile ;
}

@end

@implementation HAAutomoblieTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //alloc and init for automobile
    AutoMobile =[NSMutableArray new];
    
    //the first cell is Motorcycle
     HAMotorcycle *motorCycle = [[HAMotorcycle alloc] initWithManufactureCompany:@"Harley-Davidson" manufacture:[NSDate new] model:@"2020" plateNumber:9874 bodySerialNumber:@"M89C8" engine:[HAEngine new] gearType:Normal];
    
    [AutoMobile addObject:motorCycle];
    
    //the second cell is Car
    HACar *car = [[HACar alloc] initWithchairnum:510 isfurnitreleather:YES length:898 width:1000 color:[UIColor blackColor] manufactureCompany:@"BMW" manufacture:[NSDate new] model:@"2019" plateNumber:124 bodySerialNumber:@"SA980" engine:[HAEngine new] gearType:Automatic];
    [AutoMobile addObject:car];
    
    //the third cell is Car
    HATruck *truck = [[HATruck alloc] initWithFreeWight:98.9 fullWight:78.9 length:100 width:190 color:[UIColor redColor] manufactureCompany:@"Ram" manufacture:[NSDate new] model:@"2010" plateNumber:327 bodySerialNumber:@"TR987C8k" engine:[HAEngine new] gearType:Normal];
    [AutoMobile addObject:truck];
     
     
     
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //type of autoMobile
    return AutoMobile.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    
    //print the manufacture company "title of cell"
    cell.textLabel.text= [AutoMobile [indexPath.row] manufactureCompany];
    
    //to show the arrow that will take you to next page
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    
    //subtitle for cells based on Kind of class "Car or Truck or Motorcycle"
    if ([AutoMobile[indexPath.row] isKindOfClass : [HACar class]]){
        cell.detailTextLabel.text = @"Car";}
    if ([AutoMobile[indexPath.row] isKindOfClass : [HATruck class]]){
        cell.detailTextLabel.text = @"Truck";}
    if ([AutoMobile[indexPath.row] isKindOfClass : [HAMotorcycle class]]){
        cell.detailTextLabel.text = @"Motorcycle";}
    
    return cell;
}



// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    // Delete from underlying data source first!
        [AutoMobile removeObjectAtIndex:indexPath.row];
        // Then perform the action on the tableView
        if (editingStyle == UITableViewCellEditingStyleDelete)
        {
            [tableView beginUpdates];
            [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath]
                                 withRowAnimation:UITableViewRowAnimationFade];
            [tableView endUpdates];
        }
        
        // Finally, reload data in view
        [self.tableView reloadData];
    
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
