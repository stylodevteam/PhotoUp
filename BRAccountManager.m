//
//  PUAccountManager.m
//  PhotoUp
//
//  Created by Can Poyrazoğlu on 21/06/14.
//  Copyright (c) 2014 Peopleapps Limited. All rights reserved.
//

#import "BRAccountManager.h"
#import <FacebookSDK.h>

#define FACEBOOK_READ_PERMISSIONS @[@"user_photos", @"user_friends", @"friends_photos"]

@implementation BRAccountManager

-(void)loginWithFacebookWithCompletion:(Result)completionHandler{
    [FBSession openActiveSessionWithReadPermissions:FACEBOOK_READ_PERMISSIONS allowLoginUI:YES
                                  completionHandler:^(FBSession *session, FBSessionState status, NSError *error){
                                      if(status == FBSessionStateOpen){
                                          completionHandler(YES, session);
                                      }
                                      if(error){
                                          completionHandler(NO, error);
                                      }
                                  }];
}

@end
