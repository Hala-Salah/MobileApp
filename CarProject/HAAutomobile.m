//
//  HAAutomobile.m
//  CarProject
//
//  Created by Student on 4/18/21.
//

#import "HAAutomobile.h"

@implementation HAAutomobile

- (instancetype)initWithManufactureCompany:(NSString *)manufactureCompany manufacture:(NSDate *)manufacture model:(NSString *)model plateNumber:(NSInteger)plateNumber bodySerialNumber:(NSString *)bodySerialNumber engine:(HAEngine*) engine gearType:(HAGearType) gearType{
    self = [super init];
    if (self) {
        self.manufacture= manufacture;
        self.manufactureCompany= manufactureCompany;
        self.model= model;
        self.plateNumber= plateNumber;
        self.bodySerialNumber= bodySerialNumber;
        self.engine=engine;
        self.gearType=gearType;
    }return self;
}

- (instancetype) init{
    return [self initWithManufactureCompany:@" " manufacture:[NSDate date] model:@" " plateNumber:0 bodySerialNumber:@" " engine:[HAEngine new] gearType:Normal];
}

@end

