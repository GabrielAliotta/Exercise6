//
//  ExerciseModel.m
//  Exercise6
//
//  Created by Gabriel Aliotta on 2/28/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "ExerciseModel.h"


@implementation ExerciseModel

@synthesize myImage = _myImage;
@synthesize myLabel = _myLabel;

- (id)initWithImage:(UIImageView *)image andLabel:(UILabel *)label
{
    self = [super init];
    if (self) {        
        _myImage = image;
        _myLabel = label;
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
    [_myImage release];
    [_myLabel release];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];   

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component{
    return 3;
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    UIImage *i;
    switch (row) {
        case 0:
            i = [UIImage imageNamed:@"BeerIcon001.png"];
            break;
        case 1:
            i = [UIImage imageNamed:@"BeerIcon002.png"];
            break;
        case 2:
            i = [UIImage imageNamed:@"BeerIcon003.png"];
            break;
        default:
            i = [UIImage imageNamed:@"BeerIcon001.png"];
            break;
    }
    UIImageView *iv = [[UIImageView alloc] initWithImage:i];
    [iv autorelease];
    return iv;
}

-(CGFloat)pickerView:(UIPickerView *)pickerView
rowHeightForComponent:(NSInteger)component{
    return 110;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component{
    switch (row) {
        case 0:
            _myImage.image = [UIImage imageNamed:@"BeerIcon001.png"];
            _myLabel.text = @"Porter";
            break;
        case 1:
            _myImage.image = [UIImage imageNamed:@"BeerIcon002.png"];
            _myLabel.text = @"Lager";
            break;
        case 2:
            _myImage.image = [UIImage imageNamed:@"BeerIcon003.png"];
            _myLabel.text = @"Pilsner";
            break;
        default:
            _myImage.image = [UIImage imageNamed:@"BeerIcon001.png"];
            _myLabel.text = @"Porter";
            break;
    }
}

@end
