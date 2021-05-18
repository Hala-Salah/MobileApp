//
//  HAAutoMobileDetailsViewController.h
//  CarProject
//
//  Created by Hala Salah on 01/05/2021.
//

#import <UIKit/UIKit.h>
#import "HACar.h"
#import "HATruck.h"
#import "HAMotorcycle.h"
#import "HAAutomobile.h"
NS_ASSUME_NONNULL_BEGIN

@interface HAAutoMobileDetailsViewController : UIViewController

@property id currentAutomobile;
@property (weak, nonatomic) IBOutlet UILabel *typeLabel;
@property (weak, nonatomic) IBOutlet UILabel *companyLabel;
@property (weak, nonatomic) IBOutlet UILabel *modelLabel;
@property (weak, nonatomic) IBOutlet UILabel *serialLabel;
@property (weak, nonatomic) IBOutlet UILabel *plateNumberLabel;


@property (weak, nonatomic) IBOutlet UILabel *detailOneLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailTwoLabel;



@end

NS_ASSUME_NONNULL_END
