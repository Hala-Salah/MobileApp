//
//  HAMotorcycle.h
//  CarProject
//
//  Created by Student on 4/18/21.
//

#import "HAAutomobile.h"

NS_ASSUME_NONNULL_BEGIN

@interface HAMotorcycle : HAAutomobile
@property (assign ,nonatomic) double tierdianmeter;
@property (assign ,nonatomic) double length;

- (instancetype) initWithtierdianmeter :(double)tierdianmeter length:(double)length manufactureCompany: (NSString *)manufactureCompany manufacture:(NSDate *)manufacture model:(NSString *)model plateNumber:(NSInteger)plateNumber bodySerialNumber:(NSString *)bodySerialNumber engine:(HAEngine*) engine gearType:(HAGearType) gearType;;
@end

NS_ASSUME_NONNULL_END
