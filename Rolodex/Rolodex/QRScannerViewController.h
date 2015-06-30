//
//  QRScannerViewController.h
//  Rolodex
//
//  Created by Amanda Glazer on 6/29/15.
//  Copyright (c) 2015 Rolodex. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface QRScannerViewController : UIViewController <AVCaptureMetadataOutputObjectsDelegate>

//Properties to be connected to the view:
@property (weak, nonatomic) IBOutlet UIView *viewPreview;
@property (weak, nonatomic) IBOutlet UILabel *lblStatus;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *bbitemStart;

//Starts and stops video capturing (to read QRCode):
- (IBAction)startStopReading:(id)sender;

@end
