//
//  HAShowAddedItemViewController.h
//  CarProject
//
//  Created by Hala Salah on 23/05/2021.
//

#import <UIKit/UIKit.h>
#import "HACar.h"
#import "HATruck.h"
#import "HAMotorcycle.h"
NS_ASSUME_NONNULL_BEGIN

@interface HAShowAddedItemViewController : UIViewController
@property id currentAutomobile;
@property (weak, nonatomic) IBOutlet UILabel *trueLabel;

@end

NS_ASSUME_NONNULL_END
