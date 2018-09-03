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

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
#pragma mark - Level "Pupil"
    
    NSMutableArray *allStudents = [NSMutableArray array];
    NSDate *date = [NSDate date];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [[NSDateComponents alloc] init];
    
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
    
    return YES;
}


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
