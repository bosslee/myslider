//
//  ViewController.m
//  MySlider
//
//  Created by KONG on 4/17/13.
//  Copyright (c) 2013 Cong Vo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize myAwesomeSlider;
@synthesize myLabel;
@synthesize myHeightSlider;
@synthesize heightLabel;
@synthesize myBMI;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)heightSlider:(UISlider *)sender {
    NSLog(@"%f", self.myHeightSlider.value);
    self.heightLabel.text = [NSString stringWithFormat:@"%.2f", self.myHeightSlider.value];
    NSLog(@"this is height %@", self.heightLabel.text);
    [self getBMI];
}

- (IBAction)sliderChanged:(id)sender {
    NSLog(@"%f", self.myAwesomeSlider.value);
    self.myLabel.text = [NSString stringWithFormat:@"%.2f", self.myAwesomeSlider.value];
    NSLog(@"this is weight %@", self.myLabel.text);
}


//- (NSInteger *)addBMIWeight:(NSInteger *)w addBMIHeight:(NSInteger *)h
//{
//    NSInteger *total = NSInteger *w + NSInteger *h;
//    
//    return total;
//}

- (void)getBMI
{
    float height = [heightLabel.text floatValue];
    float weight = [myLabel.text floatValue];
    float bmiVal = weight / ((height/100)*(height/100));
    NSString *bmiResult = [[NSString alloc] initWithFormat:@"%.1f", bmiVal];
    self.myBMI.text = bmiResult;
    //NSLog(@" This is BMI %.1f", bmiVal);
    
}



@end
