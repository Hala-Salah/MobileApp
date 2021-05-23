//
//  HASelectAutomobileTypeViewController.m
//  CarProject
//
//  Created by Hala Salah on 20/05/2021.
//

#import "HASelectAutomobileTypeViewController.h"

@interface HASelectAutomobileTypeViewController (){
    NSArray *typeOfAutomobile ;
    NSString *selectedAutomobileString;
}

@end

@implementation HASelectAutomobileTypeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //item we need
    typeOfAutomobile =[NSArray new] ;
    typeOfAutomobile = @[@" ",@"Car" , @"Truck" ,@"MotorCycle" , @" "];
    self.pickerViewAutomobile.dataSource=self;
    self.pickerViewAutomobile.delegate=self;

}

//return # of clo
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
 return 1;
}

//return #of Row
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
 return typeOfAutomobile.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    selectedAutomobileString = typeOfAutomobile[row];
    return selectedAutomobileString;
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
 self.automobileSelectedLabel.text = typeOfAutomobile[row];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    HAAddMoreViewController *addMoreData = [segue destinationViewController];
    
    // Pass the selected object to the new view controller.
    [addMoreData setAutomobileTypeSelected : selectedAutomobileString];
}
- (IBAction)cancelButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];

}

@end
