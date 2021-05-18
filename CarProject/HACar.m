//
//  HACar.m
//  CarProject
//
//  Created by Student on 4/18/21.
//

#import "HACar.h"

@implementation HACar


//initializer for child method

- (instancetype)initWithchairnum:(NSInteger)chairnum isfurnitreleather: (BOOL)isfurnitreleather length:(NSInteger)length width:(NSInteger )width color:(UIColor *)color manufactureCompany: (NSString *)manufactureCompany manufacture:(NSDate *)manufacture model:(NSString *)model plateNumber:(NSInteger)plateNumber bodySerialNumber:(NSString *)bodySerialNumber engine:(HAEngine*) engine gearType:(HAGearType) gearType{
    
    self=[super initWithLength:length width:width color:color manufactureCompany: manufactureCompany manufacture:manufacture model:model plateNumber:plateNumber bodySerialNumber:bodySerialNumber engine:engine gearType:gearType];
    
    if(self){
        self.chairnum=chairnum;
        self.isfurnitreleather=isfurnitreleather;
    }return self;
}

// defulte initializer
- (instancetype)init{
    return [self initWithchairnum:0 isfurnitreleather:YES length:0 width:0 color:[UIColor redColor] manufactureCompany:@" " manufacture:[NSDate date] model:@" " plateNumber:0 bodySerialNumber:@" " engine:[HAEngine new] gearType:Normal];
}

//initializer for parent method
- (instancetype)initWithLength:(NSInteger)length width:(NSInteger )width color:(UIColor *)color manufactureCompany: (NSString *)manufactureCompany manufacture:(NSDate *)manufacture model:(NSString *)model plateNumber:(NSInteger)plateNumber bodySerialNumber:(NSString *)bodySerialNumber engine:(HAEngine*) engine{
    
    return [self initWithchairnum:0 isfurnitreleather:YES length:0 width:0 color:[UIColor redColor] manufactureCompany:@" " manufacture:[NSDate date] model:@" " plateNumber:0 bodySerialNumber:@" " engine:[HAEngine new] gearType:Normal];
}

@end
