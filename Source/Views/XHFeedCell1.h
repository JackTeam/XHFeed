//
//  XHFeedCell1.h
//  XHFeed
//
//  Created by 曾 宪华 on 13-12-12.
//  Copyright (c) 2013年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XHFeedCell1 : UITableViewCell

@property (nonatomic, strong) UIImageView* picImageView;

@property (nonatomic, strong) UIView* feedContainer;

@property (nonatomic, strong) UILabel* nameLabel;

@property (nonatomic, strong) UILabel* updateLabel;

@property (nonatomic, strong) UILabel* dateLabel;

@property (nonatomic, strong) UILabel* commentCountLabel;

@property (nonatomic, strong) UILabel* likeCountLabel;

@property (nonatomic, strong) UIImageView* commentIconImageView;

@property (nonatomic, strong) UIImageView* likeIconImageView;

@property (nonatomic, strong) UIColor *contentColor;

@end
