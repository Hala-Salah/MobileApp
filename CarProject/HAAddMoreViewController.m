//
//  HAAddMoreViewController.m
//  CarProject
//
//  Created by Hala Salah on 20/05/2021.
//

#import "HAAddMoreViewController.h"

@interface HAAddMoreViewController (){
    id newAutomobile;
    //This is a variable that we took from the previous page
    NSString *automobileType;
    //These are the variables that we have stored in the inputs "manu_com ,, model ,, body number string etc
    NSString *companyString;
    NSString *modelString;
    NSString *bodyNumberString;
    NSString *stringValue;
}
    
@end

@implementation HAAddMoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    _automobileTypeLabel.text = [NSString stringWithFormat:@"%@" , _automobileTypeSelected];
    
    companyString = [[NSUserDefaults standardUserDefaults] stringForKey:@"string"];
        [_companyTextField setText:companyString];
        
        modelString = [[NSUserDefaults standardUserDefaults] stringForKey:@"string"];
        [_modelTextField setText:modelString];
        
        bodyNumberString = [[NSUserDefaults standardUserDefaults] stringForKey:@"string"];
        [_bodyNumberTextField setText:bodyNumberString];
    
}


- (IBAction)cancelButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];

}

-(IBAction)saveAction
{
    companyString = [_companyTextField text];
        [[NSUserDefaults standardUserDefaults] setObject:companyString forKey:@"string"];
        
        modelString = [_modelTextField text];
        [[NSUserDefaults standardUserDefaults] setObject:modelString forKey:@"string"];
        
        bodyNumberString = [_bodyNumberTextField text];
        [[NSUserDefaults standardUserDefaults] setObject:bodyNumberString forKey:@"string"];
    
    
    if ([_automobileTypeSelected isEqual:@"Car"]){
        
        newAutomobile = [[HACar alloc]initWithchairnum:909 isfurnitreleather:YES length:99 width:88 color:[UIColor blueColor] manufactureCompany:companyString manufacture:[NSDate new] model:modelString plateNumber:00 bodySerialNumber:bodyNumberString engine:[HAEngine new] gearType:Normal];
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




#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    HAAutomoblieTableViewController *theNewAutomobile = [segue destinationViewController];
    // Pass the selected object to the new view controller.
    [theNewAutomobile setTheNewAutomobile:newAutomobile];
}



@end
