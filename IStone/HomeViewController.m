//
//  HomeViewController.m
//  IStone
//
//  Created by 胡传业 on 14-7-20.
//  Copyright (c) 2014年 NewThread. All rights reserved.
//

#import "HomeViewController.h"

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

    
}

- (void)segmentedControlChangedValue:(HMSegmentedControl *)segmentedControl {
	NSLog(@"Selected index %i (via UIControlEventValueChanged)", segmentedControl.selectedIndex);
}

-(IBAction)showMenu {
    
    [self.frostedViewController presentMenuViewController];
}

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
