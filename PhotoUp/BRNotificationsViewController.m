//
//  PUNotificationsViewController.m
//  PhotoUp
//
//  Created by Cihan Köseoğlu on 6/21/14.
//  Copyright (c) 2014 Peopleapps Limited. All rights reserved.
//

#import "BRNotificationsViewController.h"

@interface BRNotificationsViewController ()

@end

@implementation BRNotificationsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // setting the class name 
    self.parseClassName = kBRClassKeyActivity;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



#pragma mark - UITableViewDelegate

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row < self.objects.count){
        
        PFObject *object = [self.objects objectAtIndex:indexPath.row];
       
        
    }
    
    return 0;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

#pragma mark - PFQueryTableViewController

-(PFQuery *)queryForTable
{
    if(![PFUser currentUser]){
        PFQuery *query = [PFQuery queryWithClassName:self.parseClassName];
        [query setLimit:0];
        return query;
    }
    
    PFQuery *query = [PFQuery queryWithClassName:self.parseClassName];
    
    
    
    
    return query;
}








#pragma mark - BRNotificationViewController


/* 
 * Given an activity on the notifications feed, it will put the correct ending.
 */
+(NSString *)handleStringEndingForGivenActivity:(NSString *)activity
{
    
    if([activity isEqualToString:kBRNotificationActivityLike]){
        return @"liked your photo";
    }else if([activity isEqualToString:kBRNotificationActivityFollow]){
        return @"started following you";
    }else if([activity isEqualToString:kBRNotificationActivityUnfollow]){
        return @"stopped following you";
    }else if([activity isEqualToString:kBRNotificationActivityComment]){
        return @"commented on your photo";
    }else if([activity isEqualToString:kBRNotificationActivityJoin]){
        return @"joined Blackroom";
    }else
        return @" ";
    

}







@end
