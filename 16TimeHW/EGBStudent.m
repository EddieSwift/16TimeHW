//
//  EGBStudent.m
//  16TimeHW
//
//  Created by Eduard Galchenko on 9/1/18.
//  Copyright © 2018 Eduard Galchenko. All rights reserved.
//

#import "EGBStudent.h"

@implementation EGBStudent

+ (EGBStudent*) studentName:(NSString*) name lastName:(NSString*) surname {
    
    EGBStudent* stundent = [[EGBStudent alloc] init];
    
    stundent.firstName = name;
    stundent.lastName = surname;
    
    return stundent;
    
}

- (NSString*) description {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd.MM.yyy"];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    NSDate *date = [NSDate date];

    NSDateComponents* components =
    [calendar components:NSCalendarUnitYear fromDate:_dateOfBirth toDate:date options:0];
    
    return [NSString stringWithFormat:(@"%@ %@, date of birth: %@, %ld years old"), _firstName, _lastName, [dateFormatter stringFromDate:_dateOfBirth], [components year]];
    
}


@end
