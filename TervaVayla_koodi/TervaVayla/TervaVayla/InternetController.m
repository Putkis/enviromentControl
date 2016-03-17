//
//  UIViewController+InternetController.m
//  tervavayla_Project
//
//  Created by Projekti on 05/11/15.
//  Copyright © 2015 Projekti. All rights reserved.
//

#import "InternetController.h"

@implementation InternetController: UICollectionViewController

//luodaan taulukko
NSArray *somesImages;

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    //luodaan asetettuun taulukkoon kuvia, joita voidaan käyttää tulevaisuudessa näkymässä.
    somesImages = [NSArray arrayWithObjects:@"televisions2.png",@"gear39.png",@"controller.png",@"school47.png",nil];
}

//metodi, joka palauttaa kuvien lukumäärän taulukossa.
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return somesImages.count;
}

//metodi joka luo näkymän
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //luodaan muuttuja nimelle "someCell", jota voidaan käyttää tunnisteena jatkossa.
    static NSString *identifier = @"someCell";
    
    //luodaan kokonainen solu tunnisteella
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    //luodaan tila solun sisällä, johon kuva voidaan asettaa
    UIImageView *someImageView = (UIImageView *)[cell viewWithTag:200];
    
    //haetaan taulukosta kuva, joka asetetaan aiemmin luotuun tilaan
    someImageView.image = [UIImage imageNamed:[somesImages objectAtIndex:indexPath.row]];
    
    //asetetaan kuvan taustalle kehys, joka on myös kuva muodossa.
    cell.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"photo-frame.png"]];
    
    //palautetaan valmis solu.
    return cell;
}

@end
