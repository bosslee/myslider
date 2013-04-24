//
//  ViewController.h
//  MySlider
//
//  Created by KONG on 4/17/13.
//  Copyright (c) 2013 Cong Vo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (nonatomic, strong) IBOutlet UISlider *myAwesomeSlider;

@property (nonatomic, strong) IBOutlet UILabel *myLabel;

@property (strong, nonatomic) IBOutlet UISlider *myHeightSlider;

@property (strong, nonatomic) IBOutlet UILabel *heightLabel;

@property (strong, nonatomic) IBOutlet UILabel *myBMI;

- (IBAction)heightSlider:(UISlider *)sender;

- (IBAction)sliderChanged:(id)sender;
@end
