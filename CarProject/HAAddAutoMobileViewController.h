//
//  HAAddAutoMobileViewController.h
//  CarProject
//
//  Created by Hala Salah on 01/05/2021.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HAAddAutoMobileViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

@end

NS_ASSUME_NONNULL_END
