//
//  PUAppDelegate.m
//  PhotoUp
//
//  Created by Cihan Köseoğlu on 6/21/14.
//  Copyright (c) 2014 Peopleapps Limited. All rights reserved.
//

//test can

#import "BRAppDelegate.h"

@implementation BRAppDelegate

- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    // Initialize Parse and Facebook
    [Parse setApplicationId:@"3RyXTQuCeC4ynHFImODvYMOe1eiUgcUctu2LUOYl" clientKey:@"WWocTixl1UzuI7Sq4EnHXp8COjCixXnefla6neSA"];
    [PFFacebookUtils initializeFacebook];
    
    //Initialize Parse Analytics
    [PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
    
    
    
    if(application.applicationIconBadgeNumber !=0){
        application.applicationIconBadgeNumber = 0;
        [[PFInstallation currentInstallation] saveInBackground];
    }
    
    
    // Register for push notifications
    [application registerForRemoteNotificationTypes:
     UIRemoteNotificationTypeBadge |
     UIRemoteNotificationTypeAlert |
     UIRemoteNotificationTypeSound];
   
    
    return YES;
}


// Parse Push Methods

- (void)application:(UIApplication *)application
didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)newDeviceToken {
    // Store the deviceToken in the current installation and save it to Parse.
    PFInstallation *currentInstallation = [PFInstallation currentInstallation];
    [currentInstallation setDeviceTokenFromData:newDeviceToken];
    [currentInstallation saveInBackground];
}

- (void)application:(UIApplication *)application
didReceiveRemoteNotification:(NSDictionary *)userInfo {
    [PFPush handlePush:userInfo];
}


@end
