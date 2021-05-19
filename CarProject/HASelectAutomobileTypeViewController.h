//
//  HASelectAutomobileTypeViewController.h
//  CarProject
//
//  Created by Hala Salah on 20/05/2021.
//

#import <UIKit/UIKit.h>
#import "HAAddMoreViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface HASelectAutomobileTypeViewController : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *pickerViewAutomobile;

@property (weak, nonatomic) IBOutlet UILabel *automobileSelectedLabel;
@end

NS_ASSUME_NONNULL_END
