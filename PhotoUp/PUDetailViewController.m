//
//  PUDetailViewController.m
//  PhotoUp
//
//  Created by Cihan Köseoğlu on 6/21/14.
//  Copyright (c) 2014 Peopleapps Limited. All rights reserved.
//

#import "PUDetailViewController.h"

@interface PUDetailViewController ()
- (void)configureView;
@end

@implementation PUDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    // ben cihan 
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
