//
//  PUNotificationsViewController.h
//  PhotoUp
//
//  Created by Cihan Köseoğlu on 6/21/14.
//  Copyright (c) 2014 Peopleapps Limited. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BRNotificationsViewController : PFQueryTableViewController

// A class method to determine what the activity is and end the string accordingly.

+(NSString *)handleStringEndingForGivenActivity:(NSString *)activity;


@end
