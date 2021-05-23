//
//  HAAddMoreViewController.m
//  CarProject
//
//  Created by Hala Salah on 20/05/2021.
//

#import "HAAddMoreViewController.h"

@interface HAAddMoreViewController (){
    id newAutomobile;
    NSString *automobileType;
    NSString *companyString;
    NSString *modelString;
    NSString *bodyNumberString;
    NSMutableArray *mu;
}
    
@end

@implementation HAAddMoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    mu=[NSMutableArray new];
    [mu addObject:_companyTextField];
    
    _automobileTypeLabel.text = [NSString stringWithFormat:@"%@" , _automobileTypeSelected];
    NSString *companyString = self.companyTextField.text;
    NSString *modelString = self.modelTextField.text;
    NSString *bodyNumberString = self.bodyNumberTextField.text;

    

    
    if ([_automobileTypeSelected isEqual:@"Car"]){
        
        newAutomobile = [[HACar alloc]initWithchairnum:909 isfurnitreleather:YES length:99 width:88 color:[UIColor blueColor] manufactureCompany:@"Saleh" manufacture:[NSDate new] model:@"Saleh 99" plateNumber:00 bodySerialNumber:@"Saleh 98" engine:[HAEngine new] gearType:Normal];
        automobileType=@"Car";
        
        
    }
    if ([_automobileTypeSelected isEqual:@"Truck"]){
        
        newAutomobile = [[HATruck alloc] initWithFreeWight:99.9 fullWight:88.3 length:100 width:200 color:[UIColor purpleColor] manufactureCompany:companyString manufacture:[NSDate new] model:modelString plateNumber:99 bodySerialNumber:bodyNumberString engine:[HAEngine new] gearType:Normal];
        
        automobileType=@"truck";
    }
    
    if ([_automobileTypeSelected isEqual:@"MotorCycle"]){
        newAutomobile = [[HAMotorcycle alloc] initWithManufactureCompany:companyString manufacture:[NSDate new] model:modelString plateNumber:00 bodySerialNumber:bodyNumberString engine:[HAEngine new] gearType:Normal];
        automobileType=@"motorcycle";
    }
    
    
    
}
- (IBAction)cancelButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];

}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    HAShowAddedItemViewController *theNewAutomobile = [segue destinationViewController];
    // Pass the selected object to the new view controller.
    [theNewAutomobile setCurrentAutomobile:newAutomobile];
    NSLog(@"%@", [newAutomobile manufactureCompany]);
    NSLog(@"%@" , companyString);
}


- (IBAction)companyTextField:(UITextField *)sender {
}
@end
