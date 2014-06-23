//
//  PUMasterViewController.m
//  PhotoUp
//
//  Created by Cihan Köseoğlu on 6/21/14.
//  Copyright (c) 2014 Peopleapps Limited. All rights reserved.
//

#import "BRMasterViewController.h"



@interface BRMasterViewController () {
    NSMutableArray *_objects;
    __weak IBOutlet NSLayoutConstraint *pushNotificationTopConstraint;
    __weak IBOutlet UIView *pushNotificationContainerView;
    Action pushTapHandler;
}
@end

@implementation BRMasterViewController


-(void)displayPushNotification:(NSString*)text image:(UIImage*)image tapAction:(Action)action{
    self.pushTextView.text = text;
    self.pushImageView.image = image;
    pushTapHandler = action;
    pushNotificationTopConstraint.constant = 0;
    [UIView animateWithDuration:0.2 animations:^{
        [self.view layoutIfNeeded];
    }];
    [self performSelector:@selector(dismissPushNotification) withObject:nil afterDelay:3];
}
- (IBAction)pushTapped:(id)sender {
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    [UIView animateWithDuration:0.2 animations:^{
        pushNotificationContainerView.alpha = 0;
    } completion:^(BOOL finished) {
        pushNotificationTopConstraint.constant = -73;
        pushNotificationContainerView.alpha = 1;
    }];
    HANDLE(pushTapHandler);
}

-(void)dismissPushNotification{
    pushNotificationTopConstraint.constant = -73;
    [UIView animateWithDuration:0.2 animations:^{
        [self.view layoutIfNeeded];
    }];
}

-(void)viewDidLoad{
    [super viewDidLoad];
    pushNotificationTopConstraint.constant = -73;
}

@end
