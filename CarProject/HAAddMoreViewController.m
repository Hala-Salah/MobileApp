//
//  HAAddMoreViewController.m
//  CarProject
//
//  Created by Hala Salah on 20/05/2021.
//

#import "HAAddMoreViewController.h"

@interface HAAddMoreViewController ()

@end

@implementation HAAddMoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    _automobileTypeLabel.text = [NSString stringWithFormat:@"%@" , _automobileTypeSelected];
    
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
