//
//  MenuViewController.m
//  IStone
//
//  Created by 胡传业 on 14-7-20.
//  Copyright (c) 2014年 NewThread. All rights reserved.
//

#import "MenuViewController.h"

#import "HomeViewController.h"
#import "SameCityViewController.h"
#import "FriendsViewController.h"
#import "MyVideoViewController.h"
#import "PersonalInfoViewController.h"
#import "SystemInfoViewController.h"

#import "UIViewController+REFrostedViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.tableView.separatorColor = [UIColor colorWithRed:150/255.0f green:161/255.0f blue:177/255.0f alpha:1.0f];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.opaque = NO;
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.tableHeaderView = ({
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 184.0f)];
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 40, 100, 100)];
        imageView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        imageView.image = [UIImage imageNamed:@"avatar.jpg"];
        imageView.layer.masksToBounds = YES;
        imageView.layer.cornerRadius = 50.0;
        imageView.layer.borderColor = [UIColor whiteColor].CGColor;
        imageView.layer.borderWidth = 3.0f;
        imageView.layer.rasterizationScale = [UIScreen mainScreen].scale;
        imageView.layer.shouldRasterize = YES;
        imageView.clipsToBounds = YES;
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 150, 0, 24)];
        label.text = @"Roman Efimov";
        label.font = [UIFont fontWithName:@"HelveticaNeue" size:21];
        label.backgroundColor = [UIColor clearColor];
        label.textColor = [UIColor colorWithRed:62/255.0f green:68/255.0f blue:75/255.0f alpha:1.0f];
        [label sizeToFit];
        label.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        
        [view addSubview:imageView];
        [view addSubview:label];
        view;
    });
    

}

#pragma mark -
#pragma mark UITableView Delegate

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
//    UIColor *color = [UIColor colorWithRed:42/255.0 green:193/255.0 blue:226/255.0 alpha:1.0];
    cell.backgroundColor = [UIColor clearColor];

    cell.textLabel.textColor = [UIColor colorWithRed:62/255.0f green:68/255.0f blue:75/255.0f alpha:1.0f];
    cell.textLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:17];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)sectionIndex
{
    if (sectionIndex == 0)
    {
        return nil;
    }
    else if (sectionIndex == 1)
    {
        
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 34)];
        view.backgroundColor = [UIColor colorWithRed:167/255.0f green:167/255.0f blue:167/255.0f alpha:0.6f];
//        UIColor *color = [UIColor colorWithRed:57.0/255 green:204.0/255 blue:230.0/255 alpha:1.0f];
//        view.backgroundColor = color;
    
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 8, 0, 0)];
        label.text = @"广场";
        label.font = [UIFont systemFontOfSize:15];
        label.textColor = [UIColor whiteColor];
        label.backgroundColor = [UIColor clearColor];
        [label sizeToFit];
        [view addSubview:label];
    
        return view;
    }
    else if (sectionIndex == 2)
    {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 34)];
        view.backgroundColor = [UIColor colorWithRed:167/255.0f green:167/255.0f blue:167/255.0f alpha:0.6f];
//        UIColor *color = [UIColor colorWithRed:57.0/255 green:204.0/255 blue:230.0/255 alpha:1.0f];
//        view.backgroundColor = color;
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 8, 0, 0)];
        label.text = @"视频制作";
        label.font = [UIFont systemFontOfSize:15];
        label.textColor = [UIColor whiteColor];
        label.backgroundColor = [UIColor clearColor];
        [label sizeToFit];
        [view addSubview:label];
        
        return view;
    }
    else
    {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 34)];
        view.backgroundColor = [UIColor colorWithRed:167/255.0f green:167/255.0f blue:167/255.0f alpha:0.6f];
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 8, 0, 0)];
        label.text = @"信息";
        label.font = [UIFont systemFontOfSize:15];
        label.textColor = [UIColor whiteColor];
        label.backgroundColor = [UIColor clearColor];
        [label sizeToFit];
        [view addSubview:label];
        
        return view;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)sectionIndex
{
    if (sectionIndex == 0)
        return 0;
    
    return 34;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UINavigationController *navigationController = (UINavigationController *)self.frostedViewController.contentViewController;
    
    // 登陆/注册模块
    if (indexPath.section == 0)
    {
        
        
    }
    // 广场模块
    else if (indexPath.section == 1)
    {
        
            if (indexPath.row == 0)
            {
                HomeViewController *homeViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"homeViewController"];
                navigationController.viewControllers = @[homeViewController];
            }
            else if (indexPath.row == 1)
            {
                SameCityViewController *sameCityViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"sameCityViewController"];
                navigationController.viewControllers = @[sameCityViewController];
            }
            else
            {
                FriendsViewController *friendsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"friendsViewController"];
                navigationController.viewControllers = @[friendsViewController];
            }

    }
    // 视频制作模块
    else if (indexPath.section == 2)
    {
        
            if (indexPath.row == 0)
            {
           
            }
            else if (indexPath.row == 1)
            {
           
            }
            else
            {
                MyVideoViewController *myVideoViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"myVideoViewController"];
                navigationController.viewControllers = @[myVideoViewController];
            }

    }
    // 信息模块
    else
    {
        
            if (indexPath.row == 0)
            {
                PersonalInfoViewController *personalInfoViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"personalInfoViewController"];
                navigationController.viewControllers = @[personalInfoViewController];

            }
            else if (indexPath.row == 1)
            {
                SystemInfoViewController *systemInfoViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"systemInfoViewController"];
                navigationController.viewControllers = @[systemInfoViewController];

            }
            else
            {
                
            }

        
    }
    
    
    [self.frostedViewController hideMenuViewController];
}

#pragma mark -
#pragma mark UITableView Datasource

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectionIndex
{
    
    if (sectionIndex == 0) {
        return 1;
    } else {
        return 3;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    if (indexPath.section == 0) {
//        NSArray *titles = @[@""];
        cell.textLabel.text = @"    登录/注册";
    }
     else if (indexPath.section == 1) {
        NSArray *titles = @[@"    热门视频", @"    同城", @"    好友"];
        cell.textLabel.text = titles[indexPath.row];
    } else if (indexPath.section == 2){
        NSArray *titles = @[@"    录制",@"    编辑", @"    我的视频"];
        cell.textLabel.text = titles[indexPath.row];
    
    } else if (indexPath.section == 3){
        NSArray *titles = @[@"    个人信息", @"    系统消息",@"    其他"];
        cell.textLabel.text = titles[indexPath.row];
    }

    
    return cell;
}



@end
