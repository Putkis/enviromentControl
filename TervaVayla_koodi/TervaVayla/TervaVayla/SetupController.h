//
//  UIViewController+SetupController.h
//  tervavayla_Project
//
//  Created by Projekti on 05/11/15.
//  Copyright © 2015 Projekti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SetupController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>
@property (retain, nonatomic) IBOutlet UICollectionView *someCollectionView;
- (IBAction)someSave:(id)sender;

@end
