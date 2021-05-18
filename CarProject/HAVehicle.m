//
//  HAVehicle.m
//  CarProject
//
//  Created by Student on 4/18/21.
//

#import "HAVehicle.h"
#import "HAAutomobile.h"

@implementation HAVehicle


//initializer for child method
- (instancetype)initWithLength:(NSInteger)length width:(NSInteger )width color:(UIColor *)color manufactureCompany: (NSString *)manufactureCompany manufacture:(NSDate *)manufacture model:(NSString *)model plateNumber:(NSInteger)plateNumber bodySerialNumber:(NSString *)bodySerialNumber engine:(HAEngine*) engine gearType:(HAGearType) gearType{
    
    self=[super initWithManufactureCompany:manufactureCompany manufacture:manufacture model:model plateNumber:plateNumber bodySerialNumber:bodySerialNumber engine:engine gearType:gearType];
    
    if (self) {
        self.length = length;
        self.width = width;
        self.color = color;
    }return self;
}

//initializer for defult method
- (instancetype)init {
    return [self initWithLength:0 width:0 color:[UIColor redColor] manufactureCompany:@" " manufacture:[NSDate date] model:@" " plateNumber:0 bodySerialNumber:@" " engine:[HAEngine new] gearType:Normal];
}
//initializer for parent method
- (instancetype)initWithManufactureCompany:(NSString *)manufactureCompany manufacture:(NSDate *)manufacture model:(NSString *)model plateNumber:(NSInteger)plateNumber bodySerialNumber:(NSString *)bodySerialNumber engine:(HAEngine*) engine{
    return [self initWithLength:0 width:0 color:[UIColor redColor] manufactureCompany:@" " manufacture:[NSDate date] model:@" " plateNumber:0 bodySerialNumber:@" " engine:[HAEngine new] gearType:Normal];
}

@end
