//
//  XHFeedCell2.m
//  XHFeed
//
//  Created by 曾 宪华 on 13-12-12.
//  Copyright (c) 2013年 嗨，我是曾宪华(@xhzengAIB)，曾加入YY Inc.担任高级移动开发工程师，拍立秀App联合创始人，热衷于简洁、而富有理性的事物 QQ:543413507 主页:http://zengxianhua.com All rights reserved.
//

#import "XHFeedCell2.h"

@implementation XHFeedCell2

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier FeedCellType:(FeedCell2Type)feedCellType
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        UIColor* mainColor = [UIColor colorWithRed:50.0/255 green:102.0/255 blue:147.0/255 alpha:1.0f];
        UIColor* neutralColor = [UIColor colorWithWhite:0.4 alpha:1.0];
        
        UIColor* mainColorLight = [UIColor colorWithRed:50.0/255 green:102.0/255 blue:147.0/255 alpha:0.7f];
        UIColor* lightColor = [UIColor colorWithWhite:0.7 alpha:1.0];
        
        NSString* fontName = @"Optima-Regular";
        NSString* boldFontName = @"Optima-ExtraBlack";
        
        _profileImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileImageView.layer.cornerRadius = 10.0f;
        
        UIFont *nameLabelFont = [UIFont fontWithName:boldFontName size:(isIpad ? 35.0f : 17.0f)];
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel.textColor =  mainColor;
        _nameLabel.font = nameLabelFont;
        
        UIFont *updateLabelFont = [UIFont fontWithName:fontName size:(isIpad ? 26.0f : 13.0f)];
        _updateLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _updateLabel.textColor =  neutralColor;
        _updateLabel.numberOfLines = 0;
        _updateLabel.lineBreakMode = NSLineBreakByCharWrapping;
        _updateLabel.font = updateLabelFont;
        
        UIFont *dateLabelFont = [UIFont fontWithName:fontName size:(isIpad ? 24.0f : 12.0f)];
        _dateLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _dateLabel.textAlignment = NSTextAlignmentRight;
        _dateLabel.textColor = lightColor;
        _dateLabel.font = dateLabelFont;
        
        _commentCountLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _commentCountLabel.textColor = mainColorLight;
        _commentCountLabel.font = dateLabelFont;
        
        _likeCountLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _likeCountLabel.textColor = mainColorLight;
        _likeCountLabel.font = dateLabelFont;
        
#define profileImageViewX (isIpad ? 40 :20)
#define profileImageViewY (isIpad ? 22 :11)
#define profileImageViewSize (isIpad ? 80 :40)
        
#define nameLabelX (isIpad ? 170 : 68)
#define nameLabelWidth (isIpad ? 432 : 216)
#define nameLabelHeight (isIpad ? 42 : 21)
        
        // 内容的
#define updateLabelY (isIpad ? 64 : 32)
#define updateLabelWidth (isIpad ? 550 : 238)
#define updateLabelHeight (isIpad ? 120 : 60)
        
#define commentCountLabelY (isIpad ? 186 : 93)
#define commentCountLabelWidth (isIpad ? 180 : 75)
#define commentCountLabelHeight (isIpad ? 42 : 21)
        
#define likeCountLabelSpeator (isIpad ? 4 : 2)
        
#define dateLabelSpeator (isIpad ? 10 : 5)
        
        if (feedCellType == TextType) {
            
            
            _profileImageView.frame = CGRectMake(profileImageViewX, profileImageViewY, profileImageViewSize, profileImageViewSize);
            
            
            _nameLabel.frame = CGRectMake(nameLabelX, _profileImageView.frame.origin.y, nameLabelWidth, nameLabelHeight);
            
            
            _updateLabel.frame = CGRectMake(_nameLabel.frame.origin.x, updateLabelY, updateLabelWidth, updateLabelHeight);
            
            _commentCountLabel.frame = CGRectMake(_nameLabel.frame.origin.x, commentCountLabelY, commentCountLabelWidth, commentCountLabelHeight);
            
            _likeCountLabel.frame = CGRectMake(_commentCountLabel.frame.origin.x + _commentCountLabel.frame.size.width + likeCountLabelSpeator, _commentCountLabel.frame.origin.y, _commentCountLabel.frame.size.width, _commentCountLabel.frame.size.height);
            
            
            _dateLabel.frame = CGRectMake(_likeCountLabel.frame.origin.x + _likeCountLabel.frame.size.width + dateLabelSpeator, _commentCountLabel.frame.origin.y, _commentCountLabel.frame.size.width, _commentCountLabel.frame.size.height);
            
        } else if (feedCellType == PictureType) {
            _profileImageView.frame = CGRectMake(profileImageViewX, profileImageViewY, profileImageViewSize, profileImageViewSize);
            _nameLabel.frame = CGRectMake(nameLabelX, _profileImageView.frame.origin.y, nameLabelWidth, nameLabelHeight);
            _updateLabel.frame = CGRectMake(_nameLabel.frame.origin.x, updateLabelY, updateLabelWidth, updateLabelHeight);
            
#define PicCommentCountLabelY (isIpad ? 430 : 215)
            _commentCountLabel.frame = CGRectMake(_nameLabel.frame.origin.x, PicCommentCountLabelY, commentCountLabelWidth, commentCountLabelHeight);
            
            _likeCountLabel.frame = CGRectMake(_commentCountLabel.frame.origin.x + _commentCountLabel.frame.size.width + likeCountLabelSpeator, _commentCountLabel.frame.origin.y, _commentCountLabel.frame.size.width, _commentCountLabel.frame.size.height);
            
            _dateLabel.frame = CGRectMake(_likeCountLabel.frame.origin.x + _likeCountLabel.frame.size.width + dateLabelSpeator, _commentCountLabel.frame.origin.y, _commentCountLabel.frame.size.width, _commentCountLabel.frame.size.height);
            
#define picImageViewX (isIpad ? 8 : 4)
#define picImageViewWidth (isIpad ? 532 : 229)
#define picImageViewHeight (isIpad ? 196 : 98)
            _picImageView = [[UIImageView alloc] initWithFrame:CGRectMake(picImageViewX, picImageViewX, picImageViewWidth, picImageViewHeight)];
            _picImageView.contentMode = UIViewContentModeScaleAspectFill;
            _picImageView.clipsToBounds = YES;
            _picImageView.layer.cornerRadius = 2.0f;
            
#define picImageContainerY (isIpad ? 192 : 96)
#define picImageContainerWidth (isIpad ? 550 : 237)
#define picImageContainerHeight (isIpad ? 212 : 106)
            _picImageContainer = [[UIView alloc] initWithFrame:CGRectMake(_nameLabel.frame.origin.x, picImageContainerY, picImageContainerWidth, picImageContainerHeight)];
            _picImageContainer.backgroundColor = [UIColor whiteColor];
            _picImageContainer.layer.borderColor = [UIColor colorWithWhite:0.8f alpha:0.6f].CGColor;
            _picImageContainer.layer.borderWidth = 1.0f;
            _picImageContainer.layer.cornerRadius = 2.0f;
            _picImageContainer.layer.shadowPath = [UIBezierPath bezierPathWithRect:_picImageContainer.bounds].CGPath;
            
            [_picImageContainer addSubview:self.picImageView];
            [self addSubview:self.picImageContainer];
        }
        
        [self addSubview:self.profileImageView];
        [self addSubview:self.nameLabel];
        [self addSubview:self.updateLabel];
        [self addSubview:self.commentCountLabel];
        [self addSubview:self.likeCountLabel];
        [self addSubview:self.dateLabel];
        
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
