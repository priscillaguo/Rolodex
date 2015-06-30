//
//  ContactPickerController.m
//  Rolodex
//
//  Created by Alexandre Perozim de Faveri on 6/29/15.
//  Copyright (c) 2015 Rolodex. All rights reserved.
//

#import "ContactsViewController.h"

@interface ContactsViewController ()

@end

@implementation ContactsViewController

- (IBAction)showContacts:(id)sender
{
    ABPeoplePickerNavigationController *picker = [[ABPeoplePickerNavigationController alloc] init];
    picker.peoplePickerDelegate = self;
    
    
    [self presentViewController:picker
                       animated:YES
                     completion:nil];
}

- (IBAction)createNewContact:(id)sender
{
    ABNewPersonViewController *view = [[ABNewPersonViewController alloc] init];
    view.newPersonViewDelegate = self;
    
    UINavigationController *newNavigationController = [[UINavigationController alloc]
                                                       initWithRootViewController:view];
    [self presentViewController:newNavigationController
                       animated:YES
                     completion:nil];
}

- (void)newPersonViewController:(ABNewPersonViewController *)newPersonViewController
       didCompleteWithNewPerson:(ABRecordRef)person
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
