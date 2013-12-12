//
//  XHFeedCell2.h
//  XHFeed
//
//  Created by 曾 宪华 on 13-12-12.
//  Copyright (c) 2013年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, FeedCell2Type) {
    PictureType,
    TextType
};

@interface XHFeedCell2 : UITableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier FeedCellType:(FeedCell2Type)feedCellType;
@property (nonatomic, strong) UIImageView* profileImageView;

@property (nonatomic, strong) UIImageView* picImageView;

@property (nonatomic, strong) UIView* picImageContainer;

@property (nonatomic, strong) UILabel* nameLabel;

@property (nonatomic, strong) UILabel* updateLabel;

@property (nonatomic, strong) UILabel* dateLabel;

@property (nonatomic, strong) UILabel* commentCountLabel;

@property (nonatomic, strong) UILabel* likeCountLabel;

@end
