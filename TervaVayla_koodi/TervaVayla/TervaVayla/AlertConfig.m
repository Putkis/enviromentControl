//
//  UIViewController+AlertConfig.m
//  tervavayla_Project
//
//  Created by Projekti on 18/11/15.
//  Copyright © 2015 Projekti. All rights reserved.
//

#import "AlertConfig.h"
#import "AlertController.h"
#import "AppDelegate.h"
#import "SharedVariables.h"
#import <UIKit/UIKit.h>

@implementation AlertConfig :UIViewController

@synthesize ipc;

-(void) viewDidLoad
{
    
}


- (IBAction)changeName:(id)sender
{
    SharedVariables *sharedVariables = (SharedVariables*)[[UIApplication sharedApplication] delegate];
    sharedVariables.nurseName = self.helpName.text;
    sharedVariables.nurseImage = [UIImage imageNamed:@"hoitaja.png"];


}

- (IBAction)changeMom:(id)sender
{
    self.thatName = self.momName.text;
    SharedVariables *sharedVariables = (SharedVariables*)[[UIApplication sharedApplication] delegate];
    sharedVariables.motherName = self.thatName;
    sharedVariables.motherImage = [UIImage imageNamed:@"sydan.png"];


}

- (IBAction)changeNurseImage:(id)sender
{

        
    

}

- (IBAction)changeMomImage:(id)sender {

    UIImagePickerController * picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    
    if((UIButton *) sender == self.changeMomImage) {
        picker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    } else {
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    }
    
    [self presentModalViewController:picker animated:YES];

}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    [picker dismissModalViewControllerAnimated:YES];
    SharedVariables *sharedVariables = (SharedVariables*)[[UIApplication sharedApplication] delegate];
    sharedVariables.motherImage = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
}
-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}

@end
