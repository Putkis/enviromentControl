//
//  UIViewController+AlertConfig.h
//  tervavayla_Project
//
//  Created by Projekti on 18/11/15.
//  Copyright © 2015 Projekti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AlertController.h"


@interface AlertConfig :UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    UIImagePickerController *ipc;
    UIPopoverController *popover;
}

@property (strong, nonatomic) IBOutlet UITextField *helpName;
@property (strong, nonatomic) IBOutlet UITextField *momName;
@property (strong,nonatomic) NSString* thisName;
@property (strong,nonatomic) NSString* thatName;
@property (nonatomic, retain) UIImagePickerController *ipc;
@property (strong, nonatomic) IBOutlet UIButton *changeNurseImage;
@property (strong, nonatomic) IBOutlet UIButton *changeMomImage;

- (IBAction)changeName:(id)sender;
- (IBAction)changeMom:(id)sender;




@end
