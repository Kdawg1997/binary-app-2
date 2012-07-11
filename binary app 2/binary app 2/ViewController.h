//
//  ViewController.h
//  binary app 2
//
//  Created by Kalani Cecaci on 7/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController 
<UIPickerViewDataSource, UIPickerViewDelegate>

{
    
     IBOutlet UIPickerView *singlePicker;
    NSArray *pickerData;
    
    UITextField *inputText;
    UITextField *outputText;
    
    
}


@property (nonatomic, retain) IBOutlet UITextField *inputText;
@property (nonatomic, retain) IBOutlet UITextField *outputText;

@property(nonatomic , retain) UIPickerView *singlePicker;
@property(nonatomic , retain) NSArray *pickerData;



-(IBAction)converter:(id)sender;
-(IBAction)removeKeyboard;





@end
