//
//  HAAutomobile.h
//  CarProject
//
//  Created by Student on 4/18/21.
//

#import <Foundation/Foundation.h>
#import "HAEngine.h"
#import "HAGearType.h"
NS_ASSUME_NONNULL_BEGIN

@interface HAAutomobile : NSObject
@property (copy ,nonatomic) NSString *manufactureCompany;
@property (copy ,nonatomic) NSString *model;
@property (copy ,nonatomic) NSString *bodySerialNumber;
@property (retain ,nonatomic) NSDate *manufacture;
@property (retain ,nonatomic) HAEngine *engine;
@property (assign ,nonatomic) HAGearType gearType;
@property (assign ,nonatomic) NSInteger plateNumber;

- (instancetype)initWithManufactureCompany:(NSString *)manufactureCompany manufacture:(NSDate *)manufacture model:(NSString *)model plateNumber:(NSInteger)plateNumber bodySerialNumber:(NSString *)bodySerialNumber engine:(HAEngine*) engine gearType:(HAGearType) gearType;

@end

NS_ASSUME_NONNULL_END
