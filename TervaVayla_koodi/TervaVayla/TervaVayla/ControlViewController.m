//
//  UIViewController+ControlViewController.m
//  tervavayla_Project
//
//  Created by Projekti on 05/11/15.
//  Copyright © 2015 Projekti. All rights reserved.
//

#import "ControlViewController.h"
#import "ControlButton.h"


@implementation ControlViewController

//luodaan taulukko, jonne voidaan laittaa kuvia
NSArray *furnitureImages;
NSArray *furnitureNames;


-(void)viewDidLoad
{
    [super viewDidLoad];
    
    //alustetaan taulukko kuvilla, joita käytetään soluissa
    furnitureImages = [NSArray arrayWithObjects:@"tv.png",@"radio.png",@"lamppu1_1.png",@"ovi1_1.png",nil];
    furnitureNames = [NSArray arrayWithObjects:@"teevee",@"hammasratas",@"ohjain",@"koulu",nil];
}


//metodi, joka kertoo kuinka monta alkiota taulukossa on
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return furnitureImages.count;
}

//metodi, joka luo tarvittavan määrän "cell" nimisiä soluja ja asettaa ne näkymään halutulla tavalla
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    //tallennetaan muuttujaan kyseisen näkymän solun nimi
    static NSString *identifier = @"cell";
    
    //luodaan referenssi soluun, minkä nimi on "cell"
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    //haettuun tilaan, johon kuva tulee niin tässä siihen asetetaan kuva taulukosta
    //[self.controlButton setImage:[furnitureImages objectAtIndex:indexPath.row] forState:UIControlStateNormal];
    //luodaan kuvalle taustalle kehys, joka on erillinen kuva
    cell.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"photo-frame.png"]];
   /* UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 10, cell.bounds.size.width, 40)];
    label.tag = 200;
    [cell.contentView addSubview:label];
    [label setText:[furnitureNames objectAtIndex:indexPath.row]];*/
    //palautetaan täysin valmis solu, että se voidaan asettaa näkymään
    return cell;
}

- (IBAction)controlButton:(id)sender {
}

@end
