//
//  ViewController.m
//  tervavayla_Project
//
//  Created by Projekti on 05/11/15.
//  Copyright © 2015 Projekti. All rights reserved.
//

#import "HomeScreenController.h"
#import <CoreBluetooth/CoreBluetooth.h>

@import UIKit;


@interface ViewController ()

@end

@implementation ViewController

//luodaan taulukko
NSArray *array;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //taulukkooon asetetaan kaikki käyttäjälle näkyvät napit
    array = [[NSArray alloc] initWithObjects:@"setupButton",@"controlButton",@"internetButton",@"alertButton",nil];
    
    myCentralManager = [[CBCentralManager alloc] initWithDelegate:self queue:nil];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//jostain syystä ohjelma kaatuu, jos ottaa nämä kaksi seuraavaa TYHJÄÄ metodia pois
- (IBAction)setupButton:(id)sender {
    
}

- (IBAction)controlButton:(id)sender {
}
// toinen metodeista tämän kommentin yläpuolella

- (void)centralManagerDidUpdateState:(CBCentralManager *)central
{
    
}

- (IBAction)fecthBluetooth:(id)sender {
    [myCentralManager scanForPeripheralsWithServices:nil options:nil];
    
    
}


- (IBAction)connect:(id)sender {
    [myCentralManager connectPeripheral:self.myPeripheral options:nil];
    self.myPeripheral.delegate = self;
    [self.myPeripheral discoverServices:nil];
    
}

- (IBAction)Characteristics:(id)sender {
    NSLog(@"Interesting Service: %@",self.interestingService);
    }
-(void) centralManager:(CBCentralManager *)central didDiscoverPeripheral:(CBPeripheral *)peripheral advertisementData:(NSDictionary<NSString *,id> *)advertisementData RSSI:(NSNumber *)RSSI
{
    NSLog(@"Discovered %@",peripheral.name);
    if([peripheral.name  isEqual: @"BLE-LinkV1.8"])
    {
        
        self.myPeripheral = peripheral;
        
        NSLog(@"tried to connect to %@",peripheral.name);
        [myCentralManager stopScan];
        NSLog(@"Stopped Scanning");
        
    }
    //peripheral.delegate = self;
    
    
}
- (void)peripheral:(CBPeripheral *)peripheral didDiscoverServices:(NSError *)error {
    
    for (CBService *service in peripheral.services) {
        NSLog(@"Discovered service %@", service);
        self.interestingService = service;
        [self.myPeripheral discoverCharacteristics:nil forService:self.interestingService];

        NSLog(@"Interesting Service: %@",self.interestingService);
        
    }
    
}
-(void) centralManager:(CBCentralManager *)central didConnectPeripheral:(CBPeripheral *)peripheral
{
    NSLog(@"Connected %@",peripheral.name);
}

- (void)peripheral:(CBPeripheral *)peripheral didDiscoverCharacteristicsForService:(CBService *)service error:(NSError *)error {
    
    for (CBCharacteristic *characteristic in service.characteristics) {
        NSLog(@"Discovered characteristic %@", characteristic);
        
    }

}
@end
