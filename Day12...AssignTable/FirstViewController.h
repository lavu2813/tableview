//
//  FirstViewController.h
//  Day12...AssignTable
//
//  Created by Student 6 on 28/06/17.
//  Copyright © 2017 Mandar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *firstLabel;
@property (weak, nonatomic) IBOutlet UIImageView *firstImage;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UITextView *detailInfo;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@property NSString *getReceipeTitle;
@property UIImage *getImage;
@property NSString *time;



@end
