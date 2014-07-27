//
//  VideoCell.m
//  IStone
//
//  Created by 胡传业 on 14-7-22.
//  Copyright (c) 2014年 NewThread. All rights reserved.
//

#import "VideoCell.h"

@interface VideoCell()



@end



@implementation VideoCell

// 覆写构造方法， 让自定义的 cell 上创建其他控件

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.backgroundColor = [UIColor colorWithRed:208/255.0 green:208/255.0 blue:208/255.0 alpha:1.0];
        
        // 添加视频截图
        UIImageView *image = [[UIImageView alloc] initWithFrame:CGRectMake(30, 30, 140, 100)];
        [self.contentView addSubview:image];
        self.videoImageView = image;
        
        UIImageView *image_2 = [[UIImageView alloc] initWithFrame:CGRectMake(195, 30, 40, 40)];
        [self.contentView addSubview:image_2];
        self.iconView = image_2;
        
        UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, 110, 170, 20)];
        [self.contentView addSubview:titleLabel];
        self.titleLabel = titleLabel;
        
        UILabel *praiseLabel = [[UILabel alloc] initWithFrame:CGRectMake(230, 99, 55, 20)];
        [self.contentView addSubview:praiseLabel];
        self.praiseLabel = praiseLabel;
        
        
        UIImageView *praiseImageView = [[UIImageView alloc] initWithFrame:CGRectMake(205, 100, 20, 20)];
        praiseImageView.image = [UIImage imageNamed:@"heart"];
        [self.contentView addSubview:praiseImageView];
        
    }
    return self;
}


// 重写 set 方法
-(void) setVideoModel:(VideoModel *)videoModel
{
    _videoModel = videoModel;
    
    [self settingData];
}

// 对控件的数据进行设置
-(void) settingData
{
    self.videoImageView.image = [UIImage imageNamed:@""];
    
    self.iconView.image = [UIImage imageNamed:@""];
    
    self.titleLabel.text = @"";
    
    self.praiseLabel.text = @"37";
}


- (void)awakeFromNib
{
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
