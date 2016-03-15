//
//  XHFeedCell4.m
//  XHFeed
//
//  Created by 曾 宪华 on 13-12-12.
//  Copyright (c) 2013年 嗨，我是曾宪华(@xhzengAIB)，曾加入YY Inc.担任高级移动开发工程师，拍立秀App联合创始人，热衷于简洁、而富有理性的事物 QQ:543413507 主页:http://zengxianhua.com All rights reserved.
//

#import "XHFeedCell4.h"

@implementation XHFeedCell4

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        _feedContainer = [[UIView alloc] initWithFrame:CGRectZero];
        _feedContainer.backgroundColor = [UIColor whiteColor];
        _feedContainer.layer.cornerRadius = 3.0f;
        _feedContainer.clipsToBounds = YES;
        _feedContainer.layer.shadowPath = [UIBezierPath bezierPathWithRect:_feedContainer.bounds].CGPath;
        
        UIColor* mainColor = [UIColor colorWithRed:100.0/255 green:35.0/255 blue:87.0/255 alpha:1.0f];
        UIColor* countColor = [UIColor colorWithRed:116.0/255 green:99.0/255 blue:113.0/255 alpha:1.0f];
        UIColor* neutralColor = [UIColor colorWithWhite:0.5 alpha:1.0];
        
        NSString* fontName = @"Avenir-Book";
        NSString* boldFontName = @"Avenir-Black";
        
        _profileImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        
        UIFont *nameLabelFont = [UIFont fontWithName:boldFontName size:(isIpad ? 35.0f : 17.0f)];
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel.textColor =  mainColor;
        _nameLabel.font = nameLabelFont;
        
        UIFont *updateLabelFont = [UIFont fontWithName:fontName size:(isIpad ? 26.0f : 13.0f)];
        _updateLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _updateLabel.numberOfLines = 0;
        _updateLabel.lineBreakMode = NSLineBreakByCharWrapping;
        
        _updateLabel.textColor =  neutralColor;
        _updateLabel.font = updateLabelFont;
        
        UIFont *dateLabelFont = [UIFont fontWithName:fontName size:(isIpad ? 24.0f : 12.0f)];
        _dateLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _dateLabel.textColor = neutralColor;
        _dateLabel.font = dateLabelFont;
        
        UIFont *countLabelFont = [UIFont fontWithName:fontName size:(isIpad ? 28.0f : 14.0f)];
        _commentCountLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _commentCountLabel.textColor = countColor;
        _commentCountLabel.backgroundColor = [UIColor clearColor];
        _commentCountLabel.font = countLabelFont;
        
        _likeCountLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _likeCountLabel.textAlignment = NSTextAlignmentRight;
        
        _likeCountLabel.textColor = countColor;
        _likeCountLabel.backgroundColor = [UIColor clearColor];
        _likeCountLabel.font = countLabelFont;
        
        _picImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _picImageView.contentMode = UIViewContentModeScaleAspectFill;
        _picImageView.clipsToBounds = YES;
        
        _socialContainer = [[UIView alloc] initWithFrame:CGRectZero];
        _socialContainer.backgroundColor = [UIColor colorWithRed:220.0/255 green:214.0/255 blue:219.0/255 alpha:1.0f];
        
        
#define feedContainerX (isIpad ? 40 : 20)
#define feedContainerWidth (isIpad ? 688 : 280)
#define feedContainerHieght (isIpad ? 608 : 304)
        
#define profileImageViewX (isIpad ? 22 : 11)
#define profileImageViewSize (isIpad ? 70 : 35)
        
#define nameLabelX (isIpad ? 102 : 51)
#define nameLabelWidth (isIpad ? 380 : 190)
#define nameLabelHeight (isIpad ? 42 : 21)
        
#define dateLabelSpeatorY (isIpad ? 32 : 16)
#define dateLabelWidth (isIpad ? 448 : 224)
        
#define updateLabelX (isIpad ? 22 : 11)
#define updateLabelY (isIpad ? 362 : 181)
#define updateLabelWidth (isIpad ? 661 : 263)
#define updateLabelHeight (isIpad ? 160 : 80)
        
        
#define commentCountLabelX (isIpad ? 38 : 17)
#define commentCountLabelY (isIpad ? 16 : 8)
#define commentCountLabelWidth (isIpad ? 260 : 130)
        
#define likeCountLabelSpeator (isIpad ? 40 : 20)
#define likeCountLabelWidth (isIpad ? 192 : 96)
        
#define picImageViewSpeatorY (isIpad ? 64 : 32)
#define picImageViewHeight (isIpad ? 226 : 113)
        
#define socialContainerSepatorY (isIpad ? 12 : 6)
#define socialContainerHeight (isIpad ? 74 : 37)
        
        _feedContainer.frame = CGRectMake(feedContainerX, feedContainerX, feedContainerWidth, feedContainerHieght);
        _profileImageView.frame = CGRectMake(profileImageViewX, profileImageViewX, profileImageViewSize, profileImageViewSize);
        _nameLabel.frame = CGRectMake(nameLabelX, _profileImageView.frame.origin.y, nameLabelWidth, nameLabelHeight);
        _dateLabel.frame = CGRectMake(_nameLabel.frame.origin.x, _nameLabel.frame.origin.y + dateLabelSpeatorY, dateLabelWidth, _nameLabel.frame.size.height);
        _updateLabel.frame = CGRectMake(updateLabelX, updateLabelY, updateLabelWidth, updateLabelHeight);
        _commentCountLabel.frame = CGRectMake(commentCountLabelX, commentCountLabelY, commentCountLabelWidth, _nameLabel.frame.size.height);
        _likeCountLabel.frame = CGRectMake(_commentCountLabel.frame.origin.x + _commentCountLabel.frame.size.width + likeCountLabelSpeator, _commentCountLabel.frame.origin.y, likeCountLabelWidth, _nameLabel.frame.size.height);
        _picImageView.frame = CGRectMake(0, _dateLabel.frame.origin.y + picImageViewSpeatorY, _feedContainer.frame.size.width, picImageViewHeight);
        _socialContainer.frame = CGRectMake(0, _updateLabel.frame.origin.y + _updateLabel.frame.size.height + socialContainerSepatorY, _feedContainer.frame.size.width, socialContainerHeight);
        
        [_feedContainer addSubview:self.picImageView];
        [_feedContainer addSubview:self.profileImageView];
        [_feedContainer addSubview:self.nameLabel];
        [_feedContainer addSubview:self.dateLabel];
        [_feedContainer addSubview:self.updateLabel];
        
        [_socialContainer addSubview:self.likeCountLabel];
        [_socialContainer addSubview:self.commentCountLabel];
        [_feedContainer addSubview:self.socialContainer];
        
        [self addSubview:self.feedContainer];
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
