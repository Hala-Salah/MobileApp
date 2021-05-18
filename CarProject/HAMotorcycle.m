//
//  HAMotorcycle.m
//  CarProject
//
//  Created by Student on 4/18/21.
//

#import "HAMotorcycle.h"

@implementation HAMotorcycle


//initializer for child method
- (instancetype) initWithtierdianmeter :(double)tierdianmeter length:(double)length manufactureCompany: (NSString *)manufactureCompany manufacture:(NSDate *)manufacture model:(NSString *)model plateNumber:(NSInteger)plateNumber bodySerialNumber:(NSString *)bodySerialNumber engine:(HAEngine*) engine gearType:(HAGearType) gearType;{
    
    self=[super initWithManufactureCompany:manufactureCompany manufacture:manufacture model:model plateNumber:plateNumber bodySerialNumber:bodySerialNumber engine:engine gearType:gearType];
    
    if(self){
        self.tierdianmeter=tierdianmeter;
        self.length=length;
    }return self;
}


//initializer for defult method
- (instancetype) init{
    return [self initWithtierdianmeter:10.7 length:20.8 manufactureCompany:@"Bridgestone" manufacture:[NSDate date] model:@" " plateNumber:0 bodySerialNumber:@"2019" engine:[HAEngine new] gearType:Normal];
}

//initializer for parent method
- (instancetype)initWithManufactureCompany:(NSString *)manufactureCompany manufacture:(NSDate *)manufacture model:(NSString *)model plateNumber:(NSInteger)plateNumber bodySerialNumber:(NSString *)bodySerialNumber engine:(HAEngine*) engine{
    
    return [self initWithtierdianmeter:0.0 length:0.0 manufactureCompany:@" " manufacture:[NSDate date] model:@" " plateNumber:0 bodySerialNumber:@" " engine:[HAEngine new] gearType:Normal];
}
@end
