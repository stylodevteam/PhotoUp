//
//  PUMasterViewController.h
//  PhotoUp
//
//  Created by Cihan Köseoğlu on 6/21/14.
//  Copyright (c) 2014 Peopleapps Limited. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BRMasterViewController : UIViewController

@property (weak, nonatomic) IBOutlet CPImageView *pushImageView;
@property (weak, nonatomic) IBOutlet UITextView *pushTextView;

-(void)displayPushNotification:(NSString*)text image:(UIImage*)image tapAction:(Action)action;


@end
