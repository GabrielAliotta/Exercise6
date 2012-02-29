//
//  ExerciseViewController.m
//  Exercise6
//
//  Created by Gabriel Aliotta on 2/14/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "ExerciseViewController.h"
#import "ExerciseModel.h"


@implementation ExerciseViewController
@synthesize myLabel = _myLabel;
@synthesize myImage = _myImage;
@synthesize myPickerView = _myPickerView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [_myLabel release];
    [_myImage release];
    [_myPickerView release];
    [super dealloc];
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
    ExerciseModel *myExerciseModel = [[ExerciseModel alloc] initWithImage: _myImage andLabel: _myLabel];
    _myPickerView.delegate = myExerciseModel;
    _myPickerView.dataSource = myExerciseModel;    
    _myImage.image = [UIImage imageNamed:@"BeerIcon001.png"];
    _myLabel.text = @"Porter";
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


@end
