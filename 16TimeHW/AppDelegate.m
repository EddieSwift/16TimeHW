//
//  AppDelegate.m
//  16TimeHW
//
//  Created by Eduard Galchenko on 9/1/18.
//  Copyright © 2018 Eduard Galchenko. All rights reserved.
//

#import "AppDelegate.h"
#import "EGBStudent.h"

@interface AppDelegate ()

@property (strong, nonatomic) NSArray *sortedByDateOfBirth;
@property (strong, nonatomic) NSDate *someDate;

//@property (assign, nonatomic) NSInteger amountOfWeekDays;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /*
    NSMutableArray *allStudents = [NSMutableArray array];
    NSDate *date = [NSDate date];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [[NSDateComponents alloc] init];
    NSArray *firstNames = [NSArray arrayWithObjects:@"Steve", @"John", @"Richard", @"Paul", @"Gary", @"Zakk", @"Floyd", @"Roger", @"Robert", @"Nancy", nil];
    NSArray *lastNames = [NSArray arrayWithObjects:@"Gilbert", @"Vai", @"Maywather", @"Satriani", @"Moor", @"Waild", @"Bronson", @"Born", @"Osborn", @"Parker", nil];
    //NSInteger dayInSeconds = 24 * 60 * 60;
     */
    
#pragma mark - Level "Pupil"
    
    /*
     
    for (int i = 0; i < 30; i++) {
        
        EGBStudent *student = [EGBStudent studentName:[NSString stringWithFormat:@"Student #%d", i+1]];
        
        NSInteger ageOfStud = arc4random() % 35 + 16;
        NSInteger monthOfBirth = arc4random() % 12 + 1;
        NSInteger dayOfBirth = arc4random() % 30 + 1;
        
        [components setYear: - ageOfStud];
        [components setMonth:monthOfBirth];
        [components setDay:dayOfBirth];
        
        student.dateOfBirth = [calendar dateByAddingComponents:components toDate:date options:0];
        
        [allStudents addObject:student];
    }
    
    for (EGBStudent *stud in allStudents) {
        NSLog(@"%@", stud);
    }
     */
    
    
#pragma mark - Level "Student"
    
    /*
    for (int i = 0; i < 30; i++) {
        
        NSInteger randomNames = arc4random_uniform(10);
        NSInteger ramdomLastNames = arc4random_uniform(10);
        
        EGBStudent *student = [EGBStudent studentName:firstNames[randomNames] lastName:lastNames[ramdomLastNames]];
        
        NSInteger ageOfStud = arc4random() % 35 + 16;
        NSInteger monthOfBirth = arc4random() % 12 + 1;
        NSInteger dayOfBirth = arc4random() % 30 + 1;
        
        [components setYear: - ageOfStud];
        [components setMonth:monthOfBirth];
        [components setDay:dayOfBirth];
        
        student.dateOfBirth = [calendar dateByAddingComponents:components toDate:date options:0];
        
        [allStudents addObject:student];
    }
    
    for (EGBStudent *stud in allStudents) {
        NSLog(@"%@", stud);
    }
    NSLog(@" ");
    
    
    NSArray *sortedByDateOfBirth = [allStudents sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [[obj2 dateOfBirth] compare:[obj1 dateOfBirth]];
    }];
    
    NSLog(@"Sorted students by dates of birth:");
    NSLog(@" ");
    for (EGBStudent *stud in sortedByDateOfBirth) {
        NSLog(@"%@", stud);
    } */
    
#pragma mark - Level "Master"
    
    /*
     for (int i = 0; i < 30; i++) {
     
     NSInteger randomNames = arc4random_uniform(10);
     NSInteger ramdomLastNames = arc4random_uniform(10);
     
     EGBStudent *student = [EGBStudent studentName:firstNames[randomNames] lastName:lastNames[ramdomLastNames]];
     
     NSInteger ageOfStud = arc4random() % 35 + 17;
     NSInteger monthOfBirth = arc4random() % 13 + 1;
     NSInteger dayOfBirth = arc4random() % 30 + 1;
     
     [components setYear: - ageOfStud];
     [components setMonth:monthOfBirth];
     [components setDay:dayOfBirth];
     
     student.dateOfBirth = [calendar dateByAddingComponents:components toDate:date options:0];
     
     [allStudents addObject:student];
     }
    
    _sortedByDateOfBirth = [allStudents sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [[obj2 dateOfBirth] compare:[obj1 dateOfBirth]];
    }];
    
    NSDate *youngestDate;
    NSDate *oldestDate;
    EGBStudent *youngestStudent = [EGBStudent new];
    EGBStudent *oldestStudent = [EGBStudent new];
    
    NSLog(@"Sorted students by dates of birth:");
    NSLog(@" ");
    for (EGBStudent *stud in _sortedByDateOfBirth) {
        NSLog(@"%@", stud);
        
        oldestDate = [[_sortedByDateOfBirth objectAtIndex:0] dateOfBirth];
        youngestDate = [[_sortedByDateOfBirth objectAtIndex:[_sortedByDateOfBirth count] -1] dateOfBirth];
        
        youngestStudent = [_sortedByDateOfBirth objectAtIndex:0];
        oldestStudent = [_sortedByDateOfBirth objectAtIndex:[_sortedByDateOfBirth count]-1];
        

    }
    
    //Difference in age between the youngest and oldest students

    NSLog(@" ");
    NSLog(@"The youngest student is: %@ \nand the oldest student is: %@", youngestStudent, oldestStudent);
    
    NSDateComponents* componentsDifference =
    [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitWeekOfYear | NSCalendarUnitDay fromDate:youngestDate toDate:oldestDate options:0];
    
    NSLog(@"Difference in age between the youngest and oldest students");
    NSLog(@"%@", componentsDifference);
    

    // Timer for Birthdays
    _someDate = [NSDate date];
    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(birthdayTimer:) userInfo:nil repeats:YES];
    */
    
    
#pragma mark - "SuperMan"
    
    // 13. Output weekday for every first day of the month of current month
    NSLog(@"Output weekday for every first day of the month of current month:");
    NSLog(@"\n");
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setCalendar:calendar];
    [components setYear:2018];
    [components setDay:1];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterFullStyle];
    
    for (int i = 1; i <= 12; i++) {
        
        [components setMonth:i];
        NSDate *date = [calendar dateFromComponents:components];
        
        NSLog(@"%@", [dateFormatter stringFromDate:date]);
    }
    
    // 14. Output date for each Sunday for current year
    NSLog(@"\n");
    NSLog(@"Output date for each Sunday for current year:");
    NSLog(@"\n");
    
    NSCalendar *calendarSunday = [NSCalendar currentCalendar];
    NSDateComponents *componentsSunday = [[NSDateComponents alloc] init];
    [componentsSunday setCalendar:calendarSunday];
    [componentsSunday setYear:2018];
    [componentsSunday setWeekdayOrdinal:1]; // First Sundays of the month
    
    NSDateFormatter *dateFormatterSunday = [[NSDateFormatter alloc] init];
    [dateFormatterSunday setDateStyle:NSDateFormatterFullStyle];
    
    for (int i = 1; i <= 12; i++) {
        
        [componentsSunday setMonth:i];
        [componentsSunday setWeekday:1]; // Sundays
        NSDate *date = [calendarSunday dateFromComponents:componentsSunday];
        
        NSLog(@"%@", [dateFormatterSunday stringFromDate:date]);
    }
    
    // 15. Output working days for each month in current year
    
    NSLog(@"\n");
    NSLog(@"Output working days for each month in current year:");
    NSLog(@"\n");
    
    NSCalendar *calendarWorkingDays = [NSCalendar currentCalendar];
    NSDateComponents *componentsWorkingDays = [[NSDateComponents alloc] init];
    [componentsWorkingDays setCalendar:calendarWorkingDays];
    NSInteger year = 2018;
    
    [componentsWorkingDays setYear:year];
    NSDateFormatter *dateFormatterWorkingDays = [[NSDateFormatter alloc] init];
    [dateFormatterWorkingDays setDateFormat:@"MMMM"];
    
    for (int i = 1; i <= 12; i++) {
        
        [componentsWorkingDays setMonth:i];
        [componentsWorkingDays setDay:1];
        
        NSDate *date = [calendarWorkingDays dateFromComponents:componentsWorkingDays];
        
        NSRange rangeOfDaysInMonth = [calendarWorkingDays rangeOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:date];
        
        NSInteger amountDaysInMonth = rangeOfDaysInMonth.length;
        NSInteger amountOfSundaysInMonth = [self amountOfWeekDays:1 inMonth:i ofYear:year];
        NSInteger amountOfSaturdaysInMonth = [self amountOfWeekDays:1 inMonth:i ofYear:year];

        NSLog(@"%@: %ld working days", [dateFormatterWorkingDays stringFromDate:date], (amountDaysInMonth - amountOfSundaysInMonth - amountOfSaturdaysInMonth));
        
    }
    return YES;
}

- (NSInteger) amountOfWeekDays:(NSInteger)weekday inMonth:(NSInteger)month ofYear:(NSInteger)year {
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setCalendar:calendar];
    [components setYear:year];
    [components setMonth:month];
    [components setDay:weekday];
    
    // First weekday of the current month
    
    [components setWeekday:weekday];
    [components setWeekdayOrdinal:1];
    
    NSDate *firstWeekDayOfCurrentMonth = [calendar dateFromComponents:components];
    
    if (month + 1 > 12) {
        
        [components setYear:year + 1];
        [components setMonth:1];
        
    } else {
        
        [components setMonth:month + 1];
    }
    
    NSDate *firstWeekDayOfNextMonth = [calendar dateFromComponents:components];
    
    NSDateComponents *differenceComponents = [calendar components:NSCalendarUnitDay fromDate:firstWeekDayOfCurrentMonth toDate:firstWeekDayOfNextMonth options:0];
    
    return [differenceComponents day]/7;
}

/*
- (void) birthdayTimer:(NSDate*) timer {
    
    NSDateComponents* dayComponents = [[NSDateComponents alloc] init];
    dayComponents.day = 1;
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    _someDate = [calendar dateByAddingComponents:dayComponents toDate:_someDate options:0];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd.MM"];
    
    NSDateFormatter *dateFormatterForCurrentDay = [[NSDateFormatter alloc] init];
    [dateFormatterForCurrentDay setDateFormat:@"dd.MM.yyyy"];
    
    NSLog(@"----------------------------");
    NSLog(@"Today: %@", [dateFormatterForCurrentDay stringFromDate:_someDate]);
    
    //Checking for happy birthdays
    for (EGBStudent *stud in _sortedByDateOfBirth) {
        
        if ([[dateFormatter stringFromDate:stud.dateOfBirth] isEqualToString:[dateFormatter stringFromDate:_someDate]]) {
            NSLog(@"Today Happy Birthday celebrates %@", stud);
        }
    }
}
 */


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
