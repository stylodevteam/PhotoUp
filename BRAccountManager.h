//
//  PUAccountManager.h
//  PhotoUp
//
//  Created by Can Poyrazoğlu on 21/06/14.
//  Copyright (c) 2014 Peopleapps Limited. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^Result)(BOOL success, id result);

@interface BRAccountManager : NSObject

-(void)loginWithFacebookWithCompletion:(Result)completionHandler;

@end
