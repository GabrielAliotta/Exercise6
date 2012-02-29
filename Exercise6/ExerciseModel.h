//
//  ExerciseModel.h
//  Exercise6
//
//  Created by Gabriel Aliotta on 2/28/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ExerciseModel : UIViewController <UIPickerViewDelegate,UIPickerViewDataSource> {
}

@property (nonatomic, retain) UIImageView * myImage;
@property (nonatomic, retain) UILabel * myLabel;

- (id)initWithImage:(UIImageView *)image andLabel:(UILabel *)label;

@end
