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
    NSString *palteNumberString;
    NSString *dataOneString;
    NSString *dataTwoString;

    
}
    
@end

@implementation HAAddMoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _automobileTypeLabel.text = [NSString stringWithFormat:@"%@" , _automobileTypeSelected];
    
    if ([_automobileTypeSelected isEqual:@"Car"]){
        _data1Label.text = [NSString stringWithFormat:@"Chairnum"];
        _data2Label.text = [NSString stringWithFormat:@"Is Furnitre Leather"];
    }
    
    if ([_automobileTypeSelected isEqual:@"Truck"]){
        _data1Label.text = [NSString stringWithFormat:@"Free Wight"];
        _data2Label.text = [NSString stringWithFormat:@"Full Wight"];
    }
    
    if ([_automobileTypeSelected isEqual:@"MotorCycle"]){

        _data1Label.text = [NSString stringWithFormat:@"Tierdianmeter"];
        _data2Label.text = [NSString stringWithFormat:@"Length"];
        
    }
    companyString = [[NSUserDefaults standardUserDefaults] stringForKey:@"string"];
    [_companyTextField setText:companyString];
        
    modelString = [[NSUserDefaults standardUserDefaults] stringForKey:@"string"];
    [_modelTextField setText:modelString];
        
    bodyNumberString = [[NSUserDefaults standardUserDefaults] stringForKey:@"string"];
    [_bodyNumberTextField setText:bodyNumberString];
    
    
    palteNumberString = [[NSUserDefaults standardUserDefaults] stringForKey:@"string"];
    [_plateNumberTextField setText:palteNumberString];
    
    
    dataOneString = [[NSUserDefaults standardUserDefaults] stringForKey:@"string"];
    [_dataOneTextField setText:dataOneString];
    
    
    dataTwoString = [[NSUserDefaults standardUserDefaults] stringForKey:@"string"];
    [_dataTwoTextField setText:dataTwoString];
    
}


- (IBAction)cancelButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];

}

-(IBAction)saveAction{
    
    companyString = [_companyTextField text];
    [[NSUserDefaults standardUserDefaults] setObject : companyString forKey:@"string"];
        
    modelString = [_modelTextField text];
    [[NSUserDefaults standardUserDefaults] setObject : modelString forKey:@"string"];
        
    bodyNumberString = [_bodyNumberTextField text];
    [[NSUserDefaults standardUserDefaults] setObject : bodyNumberString forKey:@"string"];
    
    
    palteNumberString = [_plateNumberTextField text];
    [[NSUserDefaults standardUserDefaults] setObject : palteNumberString forKey:@"string"];
    
    dataOneString = [_dataOneTextField text];
    [[NSUserDefaults standardUserDefaults] setObject : dataOneString forKey:@"string"];
    
    dataTwoString = [_dataTwoTextField text];
    [[NSUserDefaults standardUserDefaults] setObject : dataTwoString forKey:@"string"];
   
    
    
    if ([_automobileTypeSelected isEqual:@"Car"]){
        NSInteger chairnumInt =  0;
        chairnumInt = chairnumInt + [dataOneString integerValue];
         NSLog(@" %ld",(long)chairnumInt);
        
        newAutomobile = [[HACar alloc]initWithchairnum:chairnumInt isfurnitreleather:YES length:99 width:88 color:[UIColor blueColor] manufactureCompany:companyString manufacture:[NSDate new] model:modelString plateNumber:palteNumberString bodySerialNumber:bodyNumberString engine:[HAEngine new] gearType:Normal];
        automobileType=@"Car";
        
        
    }
    if ([_automobileTypeSelected isEqual:@"Truck"]){
        double freeWight =  0.0;
        freeWight = freeWight + [dataOneString doubleValue];
        NSLog(@" %f",(double)freeWight);
        
        double fullWight =  0.0;
        fullWight = fullWight + [dataTwoString doubleValue];
        NSLog(@" %f",(double)fullWight);
        
    
        newAutomobile = [[HATruck alloc] initWithFreeWight:freeWight fullWight:fullWight length:100 width:200 color:[UIColor purpleColor] manufactureCompany:companyString manufacture:[NSDate new] model:modelString plateNumber:palteNumberString bodySerialNumber:bodyNumberString engine:[HAEngine new] gearType:Normal];
        
        automobileType=@"truck";
    }
    
    if ([_automobileTypeSelected isEqual:@"MotorCycle"]){
        double tierdianmeter =  0.0;
        tierdianmeter = tierdianmeter + [dataOneString doubleValue];
        NSLog(@" %f",(double)tierdianmeter);
        
        double lenght =  0.0;
        lenght = lenght + [dataTwoString doubleValue];
        NSLog(@" %f",(double)lenght);

        newAutomobile = [[HAMotorcycle alloc] initWithtierdianmeter:tierdianmeter length:lenght manufactureCompany:companyString manufacture:[NSDate new] model:modelString plateNumber:palteNumberString bodySerialNumber:bodyNumberString engine:[HAEngine new] gearType:normal];
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
