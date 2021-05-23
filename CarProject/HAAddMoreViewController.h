//
//  HAAddMoreViewController.h
//  CarProject
//
//  Created by Hala Salah on 20/05/2021.
//

#import <UIKit/UIKit.h>
#import "HACar.h"
#import "HATruck.h"
#import "HAMotorcycle.h"
#import "HAAutomobile.h"
#import "HAEngine.h"
#import "HAAutomoblieTableViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface HAAddMoreViewController : UIViewController <UITextFieldDelegate>

@property (copy ,nonatomic) NSString *automobileTypeSelected;
@property (weak, nonatomic) IBOutlet UILabel *automobileTypeLabel;
@property (weak, nonatomic) IBOutlet UITextField *companyTextField;
@property (weak, nonatomic) IBOutlet UITextField *modelTextField;
@property (weak, nonatomic) IBOutlet UITextField *bodyNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *plateNumberTextField;
@property (weak, nonatomic) IBOutlet UILabel *data1Label;
@property (weak, nonatomic) IBOutlet UILabel *data2Label;
@property (weak, nonatomic) IBOutlet UITextField *dataOneTextField;

@property (weak, nonatomic) IBOutlet UITextField *dataTwoTextField;

@end

NS_ASSUME_NONNULL_END
