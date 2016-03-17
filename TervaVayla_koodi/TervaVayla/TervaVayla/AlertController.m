//
//  UIViewController+AlertController.m
//  tervavayla_Project
//
//  Created by Projekti on 05/11/15.
//  Copyright © 2015 Projekti. All rights reserved.
//

#import "AlertController.h"
#import "SharedVariables.h"
#import "AppDelegate.h"
@import UIKit;

@implementation AlertController :UIViewController

-(void) viewDidLoad{
    SharedVariables *sharedVariables = (SharedVariables*)[[UIApplication sharedApplication] delegate];
    [self.nurseButton setImage:sharedVariables.nurseImage forState:UIControlStateNormal];
    [self.momButton setImage:sharedVariables.motherImage forState:UIControlStateNormal];
    self.nurseLbl.text = sharedVariables.nurseName;
    self.momLbl.text = sharedVariables.motherName;
   // NSLog(@"kuvia on %lu",(unsigned long)sharedVariables.helpImages.count);
}

- (IBAction)nurseButton:(id)sender {
    
}

@end

