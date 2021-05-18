//
//  HATruck.m
//  CarProject
//
//  Created by Student on 4/18/21.
//

#import "HATruck.h"

@implementation HATruck

//initializer for child method
- (instancetype)initWithFreeWight:(double)freeWight fullWight :(double)fullWight length:(NSInteger)length width:(NSInteger )width color:(UIColor *)color manufactureCompany: (NSString *)manufactureCompany manufacture:(NSDate *)manufacture model:(NSString *)model plateNumber:(NSInteger)plateNumber bodySerialNumber:(NSString *)bodySerialNumber engine:(HAEngine*) engine gearType:(HAGearType) gearType{
    
    self = [super initWithLength:length width:width color:color manufactureCompany: manufactureCompany manufacture:manufacture model:model plateNumber:plateNumber bodySerialNumber:bodySerialNumber engine:engine gearType:gearType];
    
    if(self){
        self.freeWight=freeWight;
        self.fullWight=fullWight;
    }return self;
}


// defulte initializer
- (instancetype)init{
    return[self initWithFreeWight:0.0 fullWight:0.0 length:0 width:0 color:[UIColor redColor] manufactureCompany:@" " manufacture:[NSDate date] model:@" " plateNumber:0 bodySerialNumber:@" " engine:[HAEngine new]gearType:Normal];
}

//initializer for parent method
- (instancetype)initWithLength:(NSInteger)length width:(NSInteger )width color:(UIColor *)color manufacturCompany: (NSString *)manufactureCompany manufacture:(NSDate *)manufacture model:(NSString *)model plateNumber:(NSInteger)plateNumber bodySerialNumber:(NSString *)bodySerialNumber engine:(HAEngine*) engine{
    return[self initWithFreeWight:0.0 fullWight:0.0 length:0 width:0 color:[UIColor redColor] manufactureCompany:@" " manufacture:[NSDate date] model:@" " plateNumber:0 bodySerialNumber:@" " engine:[HAEngine new] gearType:Normal];
}
@end
