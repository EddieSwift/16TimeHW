//
//  EGBStudent.h
//  16TimeHW
//
//  Created by Eduard Galchenko on 9/1/18.
//  Copyright © 2018 Eduard Galchenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EGBStudent : NSObject

@property (strong, nonatomic) NSDate *dateOfBirth;
@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;

+ (EGBStudent*) studentName:(NSString*) name lastName:(NSString*) surname;


@end
