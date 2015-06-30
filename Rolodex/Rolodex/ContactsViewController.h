//
//  ContactPickerController.h
//  Rolodex
//
//  Created by Alexandre Perozim de Faveri on 6/29/15.
//  Copyright (c) 2015 Rolodex. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AddressBookUI/AddressBookUI.h>

@interface ContactsViewController : UIViewController <ABPeoplePickerNavigationControllerDelegate,ABNewPersonViewControllerDelegate>

@end
