//
//  HomeViewController.m
//  Rolodex
//
//  Created by Alexandre Perozim de Faveri on 6/30/15.
//  Copyright (c) 2015 Rolodex. All rights reserved.
//

#import "HomeViewController.h"


@interface HomeViewController ()
@property (nonatomic) ABRecordID *myRecord;
@end

@implementation HomeViewController

- (IBAction)viewProfile:(id)sender
{
    ABPersonViewController *myProfile = [[ABPersonViewController alloc] init];
    
    myProfile.personViewDelegate = self;
    myProfile.displayedPerson = self.myRecord;
    myProfile.allowsEditing = YES;
    myProfile.allowsActions = YES;
    
    [self.navigationController pushViewController:myProfile animated:YES];
}

- (BOOL)personViewController:(ABPersonViewController *)personViewController
shouldPerformDefaultActionForPerson:(ABRecordRef)person
                    property:(ABPropertyID)property
                  identifier:(ABMultiValueIdentifier)identifier
{
    return YES;
}



@end
