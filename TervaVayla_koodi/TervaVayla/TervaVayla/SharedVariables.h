//
//  NSObject+SharedVariables.h
//  tervavayla_Project
//
//  Created by Projekti on 25/11/15.
//  Copyright © 2015 Projekti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SharedVariables : NSObject
{
    NSString *nurseName;
    NSString *motherName;
    UIImage *nurseImage;
    UIImage *motherImage;
    NSMutableArray *someImages;

}
@property (strong,retain) NSString *nurseName;
@property (strong,retain) NSString *motherName;
@property (strong,retain) UIImage *nurseImage;
@property (strong,retain) UIImage *motherImage;
@property (strong,retain) NSMutableArray  *someImages;


@end
