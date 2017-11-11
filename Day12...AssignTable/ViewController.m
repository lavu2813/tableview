//
//  ViewController.m
//  Day12...AssignTable
//
//  Created by Student 6 on 28/06/17.
//  Copyright © 2017 Mandar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.arrayOfNames=@[@"Roti",@"Rice",@"Dal",@"Paneer Masala",@"Khichdi"];

    self.arrayOfImages=@[@"images.jpeg",@"2.png",@"3.png",@"download-1.jpg",@"download.jpg"];
    
    self.arrayOfTimes=@[@"5 min",@"20 min",@"15 min",@"25 min",@"35 min"];
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.arrayOfNames.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    
    cell.textLabel.text=[self.arrayOfNames objectAtIndex:indexPath.row];
    cell.detailTextLabel.text=[self.arrayOfTimes objectAtIndex:indexPath.row];
    
    UIImage *image=[UIImage imageNamed:[self.arrayOfImages objectAtIndex:indexPath.row]];
    cell.imageView.image=image;

    
    cell.backgroundColor=[UIColor yellowColor];
    cell.textLabel.font=[UIFont boldSystemFontOfSize:20];
    cell.detailTextLabel.font=[UIFont boldSystemFontOfSize:10];
    [cell.textLabel setTextColor:[UIColor redColor]];
    
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[tableView cellForRowAtIndexPath:indexPath];
    
    NSString *SelectedReceipeName=cell.textLabel.text;
    UIImage *selectedImage=cell.imageView.image;
    NSString *mytime=cell.detailTextLabel.text;
    
    FirstViewController *fvc=[self.storyboard instantiateViewControllerWithIdentifier:@"FirstViewController"];
    
    fvc.getReceipeTitle=SelectedReceipeName;
    fvc.getImage=selectedImage;
    fvc.time=mytime;
    [self.navigationController pushViewController:fvc animated:YES];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
