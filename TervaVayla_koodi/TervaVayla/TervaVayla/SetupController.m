//
//  UIViewController+SetupController.m
//  tervavayla_Project
//
//  Created by Projekti on 05/11/15.
//  Copyright © 2015 Projekti. All rights reserved.
//

#import "SetupController.h"
#import "SharedVariables.h"

@implementation SetupController: UIViewController


-(void) viewDidLoad
{
    //luodaan tarvittavat viittaukset viewControllerin sisällä käytettävään CollectionViewiin
    _someCollectionView.delegate = self;
    _someCollectionView.dataSource = self;

    //alustetaan taulukko yhdellä testi kuvalla
   
}


//Metodi joka hakee taulukon koon
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    SharedVariables *sharedVariables = (SharedVariables*)[[UIApplication sharedApplication] delegate];
    return sharedVariables.someImages.count;
}

//metodi joka luo collection viewiin tarvittavat solut
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    SharedVariables *sharedVariables = (SharedVariables*)[[UIApplication sharedApplication] delegate];
    //luodaan tunniste solun nimellä "someCell"
    static NSString *identifier = @"someCell";
    
    //luodaan kokonainen solu aiemmin luodulla tunnisteella
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    //luodaan tila solun sisään, johon kuva voidaan asettaa
    UIImageView *somesImageView = (UIImageView *)[cell viewWithTag:150];
    
    //asetetaan kuva aiemmin luotuun tilaan
    somesImageView.image = [UIImage imageNamed:[sharedVariables.someImages objectAtIndex:indexPath.row]];
    
    //asetetaan kuvalle kehys
    cell.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"photo-frame.png"]];
    
    //palautetaan valmis solu
    return cell;
}




- (IBAction)someSave:(id)sender
{
    SharedVariables *sharedVariables = (SharedVariables*)[[UIApplication sharedApplication] delegate];
    UIImage* image = [UIImage imageNamed:[NSString stringWithFormat:@"school47.png"]];
    [sharedVariables.someImages addObject:image];
    
    NSLog(@"size of table is %lu", (unsigned long)sharedVariables.someImages.count);
    
    
}
@end
