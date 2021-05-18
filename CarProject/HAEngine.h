//
//  HAEngine.h
//  CarProject
//
//  Created by Student on 4/18/21.
//

#import <Foundation/Foundation.h>
#import "HAFuelType.h"

NS_ASSUME_NONNULL_BEGIN

@interface HAEngine : NSObject

@property (copy ,nonatomic)NSString *manufacture;
@property (copy ,nonatomic) NSString *model;
@property (assign ,nonatomic ) NSInteger capacity;
@property (assign ,nonatomic ) NSInteger cylinders;
@property (assign ,nonatomic )HAFuelType fueltype;
@property (retain ,nonatomic ) NSDate *manufactureDate;

- (instancetype)initWithManufacture:(NSString *)manufacture manufactureDate:(NSDate *)manufactureDate model:(NSString * )model capacity:(NSInteger)capacity cylinders:(NSInteger)cylinders fueltype :(HAFuelType) fueltype;


 @end

NS_ASSUME_NONNULL_END
