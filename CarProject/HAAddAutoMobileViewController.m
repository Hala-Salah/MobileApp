//
//  HAAddAutoMobileViewController.m
//  CarProject
//
//  Created by Hala Salah on 01/05/2021.
//

#import "HAAddAutoMobileViewController.h"

@interface HAAddAutoMobileViewController (){
    NSArray* selectAutomobileType;
}

@end

@implementation HAAddAutoMobileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //item we need
    selectAutomobileType = @[@"Car" , @"Truck" ,@"MotorCycle" ];
    // Do any additional setup after loading the view.
}


//return # of clo
- (NSInteger) numberOfComponentsInPickerView : (UIPickerView *)AddAutomobile{
    return 3;
    
}

//return #of Row
- (NSInteger) pickerView :(UIPickerView *) pickerView numberOfRowsInComponent:(NSInteger)component{
    return selectAutomobileType.count;
}

- (NSString *) pickerView :(UIPickerView *) pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return selectAutomobileType[row];
}



@end
