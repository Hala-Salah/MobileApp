//
//  HAEngine.m
//  CarProject
//
//  Created by Student on 4/18/21.
//

#import "HAEngine.h"
#import "HAFuelType.h"

@implementation HAEngine

//initializer with value
- (instancetype)initWithManufacture:(NSString *)manufacture manufactureDate:(NSDate *)manufactureDate model:(NSString * )model capacity:(NSInteger)capacity cylinders:(NSInteger)cylinders fueltype :(HAFuelType) fueltype{
    self=[super init];
    if(self){
        self.manufacture= manufacture;
        self.manufactureDate= manufactureDate;
        self.model= model;
        self.capacity= capacity;
        self.cylinders= cylinders;
        self.fueltype = fueltype;
    }return self;
}

//defult initializer 
- (instancetype) init{
    return [self initWithManufacture:@" " manufactureDate:[NSDate date] model:@" " capacity: 0 cylinders:0 fueltype:Diesel];
}
@end
