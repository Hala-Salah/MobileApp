//
//  HAAutoMobileDetailsViewController.m
//  CarProject
//
//  Created by Hala Salah on 01/05/2021.
//

#import "HAAutoMobileDetailsViewController.h"

@interface HAAutoMobileDetailsViewController ()

@end

@implementation HAAutoMobileDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //print type in typeLabel "Car"
    if ([_currentAutomobile isKindOfClass : [HACar class]]){
        _typeLabel.text = [NSString stringWithFormat:@"Car"];
        
        //print more details especially by Car
        _detailOneLabel.text=[NSString stringWithFormat:@"Car Chairnum : %ld " , (long)[_currentAutomobile chairnum]];
        
        NSString *isfurnitreleather = [_currentAutomobile isfurnitreleather] ? @"YES" : @"NO";
        _detailTwoLabel.text = [NSString stringWithFormat:@"Furniture Leather : %@ ",isfurnitreleather];
        }
    
    //print type in typeLabel "Truck"
    if ([_currentAutomobile isKindOfClass : [HATruck class]]){
        _typeLabel.text = [NSString stringWithFormat:@"Truck"];
        
        _detailOneLabel.text=[NSString stringWithFormat:@"Free Wight : %f " , (double)[_currentAutomobile freeWight]];
        
        _detailTwoLabel.text=[NSString stringWithFormat:@"Full Wight : %f " , (double)[_currentAutomobile fullWight]];
        
        }
    
    //print type in typeLabel "Motorcycle"
    if ([_currentAutomobile isKindOfClass : [HAMotorcycle class]]){
        _typeLabel.text = [NSString stringWithFormat:@"Motorcycle"];
        
        _detailOneLabel.text=[NSString stringWithFormat:@"Tierdian Meter : %f " , (double)[_currentAutomobile tierdianmeter]];
        
        _detailTwoLabel.text=[NSString stringWithFormat:@"Length : %f " , (double)[_currentAutomobile lengthh]];
        }
    
    //now we wont to print other details 1_ Company
    _companyLabel.text = [NSString stringWithFormat:@" %@ " , [_currentAutomobile manufactureCompany]];
    //now we wont to print other details 2_ model
    _modelLabel.text = [NSString stringWithFormat:@" %@ " , [_currentAutomobile model]];
    
    //now we wont to print other details 3_body serial number
    _serialLabel.text = [NSString stringWithFormat:@" %@ " , [_currentAutomobile bodySerialNumber]];
    //now we wont to print other details palte
    _plateNumberLabel.text = [NSString stringWithFormat:@" %@ " , [_currentAutomobile plateNumber] ];
    
    
}
- (IBAction)cancelButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
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
