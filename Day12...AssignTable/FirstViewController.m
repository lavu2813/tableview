//
//  FirstViewController.m
//  Day12...AssignTable
//
//  Created by Student 6 on 28/06/17.
//  Copyright © 2017 Mandar. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.firstLabel.text=self.getReceipeTitle;
    self.firstImage.image=self.getImage;
    self.timeLabel.text=self.time;
    if([self.firstLabel.text isEqual:@"Roti"])
    {
        self.detailInfo.text=@"1. Choose your oil. ...\n2. Sift the flour and the salt. ...\n3. Add the ghee (or oil) to the flour. ...\n4. Add the water to the flour. ...\n5. Knead the dough. ...\n6. Let the dough rest.";
    }
    else if([self.firstLabel.text isEqual:@"Rice"])
    {
        self.detailInfo.text=@"1.Recipe by chef Aditya Bal. \n2.Garlic and Egg Fried Rice. ...\n3. Kashmiri Chicken Pulao. ...\n4.Zaffarani Pulao. ...\n5.Recipe by chef Vicky Ratnani. ...\n6.Mutton Biryani. ...";
    }
    else if([self.firstLabel.text isEqual:@"Dal"])
    {
        self.detailInfo.text=@"1. Choose your oil. ...\n2. Sift the flour and the salt. ...\n3. Add the ghee (or oil) to the flour. ...\n4. Add the water to the flour. ...\n5. Knead the dough. ...\n6. Let the dough rest.";
        
    }
    else if([self.firstLabel.text isEqual:@"Paneer Masala"])
    {
        self.detailInfo.text=@"1.Recipe by chef Aditya Bal. \n2.Garlic and Egg Fried Rice. ...\n3. Kashmiri Chicken Pulao. ...\n4.Zaffarani Pulao. ...\n5.Recipe by chef Vicky Ratnani. ...\n6.Mutton Biryani. ...";
    }
    else if([self.firstLabel.text isEqual:@"Khichdi"])
    {
        self.detailInfo.text=@"1. Choose your oil. ...\n2. Sift the flour and the salt. ...\n3. Add the ghee (or oil) to the flour. ...\n4. Add the water to the flour. ...\n5. Knead the dough. ...\n6. Let the dough rest.";
    }
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
