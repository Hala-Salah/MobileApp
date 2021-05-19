//
//  HAAddMoreViewController.h
//  CarProject
//
//  Created by Hala Salah on 20/05/2021.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HAAddMoreViewController : UIViewController

@property (copy ,nonatomic) NSString *automobileTypeSelected;
@property (weak, nonatomic) IBOutlet UILabel *automobileTypeLabel;

@end

NS_ASSUME_NONNULL_END
