//
//  ViewController.m
//  binary app 2
//
//  Created by Kalani Cecaci on 7/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController;

@synthesize inputText, outputText;

@synthesize singlePicker;

@synthesize pickerData;




- (void)viewDidLoad
{
    
    NSArray *array = [[NSArray alloc]        initWithObjects:@"1",@"2",@"3",@"4",@"5", @"6", @"7", @"8", @"9",nil];
    self.pickerData = array;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
     return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component
{
      return [pickerData count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView
titleForRow:(NSInteger)row
 forComponent:(NSInteger)component
{
    return[pickerData objectAtIndex:row];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
   }
}

/* converter puts all bases into one equation*/ 
-(IBAction)converter:(id)sender
{
    NSString *output;
    int base;
    int I;
    int input =  [inputText.text intValue];
    int remainder;
    int B[20];
    
    
    NSInteger row = [singlePicker selectedRowInComponent:0];
    NSString *pickerValue = [pickerData objectAtIndex:row];
    
    base = [pickerValue intValue];
    
    NSLog (@"Input Base = %d", base);
    
    NSLog (@"Input pickerValue = %@", pickerValue);
    
    NSLog (@"Input Text = %@", inputText.text);
    
    NSLog(@"Input Number = %d", input);
    
    
    for (I = 0; I < 20; I = I + 1) {
        B[I] = 0;
    }
    
    
    
    I = 0;
    
    while (input > 0) {
        remainder = input % base; 
        B[I] = remainder ;
        input = input / base; 
        I = I + 1; 
    }
    output = [NSString stringWithFormat:@"%d%d%d%d %d%d%d%d %d%d%d%d %d%d%d%d %d%d%d%d", B[19], B[18], B[17], B[16], B[15], B[14], B[13], B[12], B[11], B[10], B[9], B[8], B[7], B[6], B[5], B[4], B[3], B[2], B[1], B[0]];
    NSLog(@"Binary Number =  %d%d%d%d %d%d%d%d %d%d%d%d", B[11], B[10], B[9], B[8], B[7], B[6], B[5], B[4], B[3], B[2], B[1], B[0]);
    
    outputText.text = output;

    
    
}

-(IBAction)removeKeyboard
{

    [inputText resignFirstResponder];
    
}








@end
