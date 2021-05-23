//
//  HAShowAddedItemViewController.m
//  CarProject
//
//  Created by Hala Salah on 23/05/2021.
//

#import "HAShowAddedItemViewController.h"

@interface HAShowAddedItemViewController ()

@end

@implementation HAShowAddedItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if([_currentAutomobile isKindOfClass:[HACar class]]){
        _trueLabel.text= [NSString stringWithFormat:@"Car"];
    }
    if([_currentAutomobile isKindOfClass:[HATruck class]]){
        _trueLabel.text= [NSString stringWithFormat:@"Truck"];
    }
    if([_currentAutomobile isKindOfClass:[HAMotorcycle class]]){
        _trueLabel.text= [NSString stringWithFormat:@"Motorcycle"];
    }

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
