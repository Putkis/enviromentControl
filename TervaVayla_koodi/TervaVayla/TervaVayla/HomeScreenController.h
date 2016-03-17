//
//  ViewController.h
//  tervavayla_Project
//
//  Created by Projekti on 05/11/15.
//  Copyright © 2015 Projekti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreBluetooth/CoreBluetooth.h>

@interface ViewController : UIViewController <CBCentralManagerDelegate, CBPeripheralDelegate>
{
    CBCentralManager *myCentralManager;
}
@property (strong, nonatomic) IBOutlet UIButton *setupButton;
@property (strong, nonatomic) IBOutlet UIButton *controlButton;
@property (strong, nonatomic) IBOutlet UIButton *internetButton;
@property (strong, nonatomic) IBOutlet UIButton *alertButton;
@property (strong,nonatomic) CBPeripheral *myPeripheral;
@property (strong, nonatomic) CBService *interestingService;
- (IBAction)fecthBluetooth:(id)sender;
- (IBAction)connect:(id)sender;
- (IBAction)Characteristics:(id)sender;

@end

