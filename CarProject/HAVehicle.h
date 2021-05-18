//
//  HAVehicle.h
//  CarProject
//
//  Created by Student on 4/18/21.
//

#import "HAAutomobile.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HAVehicle : HAAutomobile

@property (assign ,nonatomic) NSInteger length;
@property (assign ,nonatomic) NSInteger width;
@property (retain ,nonatomic) UIColor *color;


- (instancetype)initWithLength:(NSInteger)length width:(NSInteger )width color:(UIColor *)color manufactureCompany: (NSString *)manufactureCompany manufacture:(NSDate *)manufacture model:(NSString *)model plateNumber:(NSInteger)plateNumber bodySerialNumber:(NSString *)bodySerialNumber engine:(HAEngine*) engine gearType:(HAGearType) gearType;

@end

NS_ASSUME_NONNULL_END
