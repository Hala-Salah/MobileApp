//
//  HAAutomoblieTableViewController.m
//  CarProject
//
//  Created by Hala Salah on 01/05/2021.
//

#import "HAAutomoblieTableViewController.h"
#import "HAMotorcycle.h"
#import "HACar.h"
#import "HATruck.h"

#import "HAAddAutoMobileViewController.h"

@interface HAAutomoblieTableViewController (){
    NSMutableArray * AutoMobile ;
}

@end

@implementation HAAutomoblieTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
  //  AutoMobile = [NSMutableArray arrayWithObjects:@"Car",@"Truck" , @"MotorCycle", nil];
    /*
     HAMotorcycle *motorCycle = [HAMotorcycle new];
         [AutoMobile addObject:motorCycle];

         HACar *car = [HACar new];
         [AutoMobile addObject:car];

         HATruck *truck = [HATruck new];
         [AutoMobile addObject:truck];
     /*
     
     */
    
    
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
    
    
    //to print in the screen the item we have "car , motor , truck" tmam?
    //cell.textLabel.text= [AutoMobile [indexPath.row] ];
    
    //to show the arrow that will take you to next page
    //cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
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
