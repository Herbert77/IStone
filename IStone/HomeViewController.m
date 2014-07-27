//
//  HomeViewController.m
//  IStone
//
//  Created by 胡传业 on 14-7-20.
//  Copyright (c) 2014年 NewThread. All rights reserved.
//

#import "HomeViewController.h"

#import "VideoCell.h"

#import "HomeDetail_1ViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    HMSegmentedControl *segmentedControl = [[HMSegmentedControl alloc] initWithSectionTitles:@[@"热门", @"话题"]];
    [segmentedControl setFrame:CGRectMake(110, 76, 100, 30)];
    [segmentedControl setBackgroundColor:[UIColor colorWithRed:42/255.0 green:193/255.0 blue:226/255.0 alpha:1.0]];
    [segmentedControl setTextColor:[UIColor whiteColor]];
    [segmentedControl setSelectionIndicatorColor:[UIColor colorWithRed:80/255.0 green:227/255.0 blue:194/255.0 alpha:1.0]];
    [segmentedControl setSelectionIndicatorMode:HMSelectionIndicatorFillsSegment];

    [segmentedControl addTarget:self action:@selector(segmentedControlChangedValue:) forControlEvents:UIControlEventValueChanged];
    [segmentedControl setTag:1];
    [self.view addSubview:segmentedControl];
    
    
//    _tableView.backgroundColor = [UIColor grayColor];
    
    _tableView.delegate = self;
    
    _tableView.dataSource = self;

    
}

- (void)segmentedControlChangedValue:(HMSegmentedControl *)segmentedControl {
	NSLog(@"Selected index %i (via UIControlEventValueChanged)", segmentedControl.selectedIndex);
}

-(IBAction)showMenu {
    
    [self.frostedViewController presentMenuViewController];
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 140;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
//    static NSString *identifier = @"Cell";
//    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
//    
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
//    }
//    return cell;
    
    VideoCell *cell = (VideoCell *)[tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (!cell) {
        cell = [[VideoCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    cell.praiseLabel.text = @"29";
    cell.videoImageView.image = [UIImage imageNamed:@"water"];
    cell.titleLabel.text = @"水是生命之源";
    cell.iconView.image = [UIImage imageNamed:@"user"];
    
    
    [cell.iconView.layer setCornerRadius:CGRectGetHeight([cell.iconView bounds]) / 2];
    cell.iconView.layer.masksToBounds = YES;
    
//    然后再给图层添加一个有色的边框，类似qq空间头像那样
//    cell.iconView.layer.borderWidth = 5;
//    cell.iconView.layer.borderColor = [[UIColor whiteColor] CGColor];
//    cell.iconView.layer.contents = (id)[[UIImage imageNamed:@"user"] CGImage];
    
    
    
    return cell;
    
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    
    HomeDetail_1ViewController *detail_1ViewController = [[HomeDetail_1ViewController alloc] init];
    
    [[self navigationController] pushViewController:detail_1ViewController animated:YES];

    
    
}

// 删掉头视图
//- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)sectionIndex {
//    
//
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
