//
//  UIViewController+AlertController.h
//  tervavayla_Project
//
//  Created by Projekti on 05/11/15.
//  Copyright © 2015 Projekti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AlertConfig.h"
#import "SharedVariables.h"


@interface AlertController : UIViewController

    @property NSString *name;
    @property (strong, nonatomic) IBOutlet UIButton *nurseButton;
    @property (strong, nonatomic) IBOutlet UIButton *momButton;
    @property (strong, nonatomic) IBOutlet UILabel *nurseLbl;
    @property (strong, nonatomic) IBOutlet UILabel *momLbl;



@end

