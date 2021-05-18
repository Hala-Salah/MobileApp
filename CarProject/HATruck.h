//
//  HATruck.h
//  CarProject
//
//  Created by Student on 4/18/21.
//

#import "HAVehicle.h"

NS_ASSUME_NONNULL_BEGIN

@interface HATruck : HAVehicle
@property (assign ,nonatomic)double freeWight;
@property (assign ,nonatomic)double fullWight;


- (instancetype)initWithFreeWight:(double)freeWight fullWight :(double)fullWight length:(NSInteger)length width:(NSInteger )width color:(UIColor *)color manufactureCompany: (NSString *)manufactureCompany manufacture:(NSDate *)manufacture model:(NSString *)model plateNumber:(NSInteger)plateNumber bodySerialNumber:(NSString *)bodySerialNumber engine:(HAEngine*) engine gearType:(HAGearType) gearType;

@end

NS_ASSUME_NONNULL_END
