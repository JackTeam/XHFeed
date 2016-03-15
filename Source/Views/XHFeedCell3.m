//
//  XHFeedCell3.m
//  XHFeed
//
//  Created by 曾 宪华 on 13-12-12.
//  Copyright (c) 2013年 嗨，我是曾宪华(@xhzengAIB)，曾加入YY Inc.担任高级移动开发工程师，拍立秀App联合创始人，热衷于简洁、而富有理性的事物 QQ:543413507 主页:http://zengxianhua.com All rights reserved.
//

#import "XHFeedCell3.h"

@implementation XHFeedCell3

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        UIColor* mainColor = [UIColor colorWithRed:28.0/255 green:158.0/255 blue:121.0/255 alpha:1.0f];
        UIColor* neutralColor = [UIColor colorWithWhite:0.4 alpha:1.0];
        
        UIColor* mainColorLight = [UIColor colorWithRed:28.0/255 green:158.0/255 blue:121.0/255 alpha:0.4f];
        UIColor* lightColor = [UIColor colorWithWhite:0.7 alpha:1.0];
        
        NSString* fontName = @"Avenir-Book";
        NSString* boldItalicFontName = @"Avenir-BlackOblique";
        NSString* boldFontName = @"Avenir-Black";
        
        _profileImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //        _profileImageView.layer.cornerRadius = 10.0f;
        
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
        _dateLabel.textAlignment = NSTextAlignmentRight;
        _dateLabel.textColor = lightColor;
        _dateLabel.font =  dateLabelFont;
        
        UIFont *countLabelFont = [UIFont fontWithName:boldItalicFontName size:(isIpad ? 20.0f : 10.0f)];
        _commentCountLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _commentCountLabel.textColor = mainColorLight;
        _commentCountLabel.font = countLabelFont;
        
        _likeCountLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _likeCountLabel.textColor = mainColorLight;
        _likeCountLabel.font = countLabelFont;
        
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
#define commentCountLabelWidth (isIpad ? 160 : 77)
#define commentCountLabelHeight (isIpad ? 42 : 21)
        
#define likeCountLabelSpeator (isIpad ? 60 : 10)
        
#define dateLabelSpeator (isIpad ? 10 : 5)
        
        _profileImageView.frame = CGRectMake(profileImageViewX, profileImageViewY, profileImageViewSize, profileImageViewSize);
        _nameLabel.frame = CGRectMake(nameLabelX, _profileImageView.frame.origin.y, nameLabelWidth, nameLabelHeight);
        _updateLabel.frame = CGRectMake(_nameLabel.frame.origin.x, updateLabelY, updateLabelWidth, updateLabelHeight);
        _commentCountLabel.frame = CGRectMake(_nameLabel.frame.origin.x, commentCountLabelY, commentCountLabelWidth, commentCountLabelHeight);
        _likeCountLabel.frame = CGRectMake(_commentCountLabel.frame.origin.x + _commentCountLabel.frame.size.width + likeCountLabelSpeator, _commentCountLabel.frame.origin.y, _commentCountLabel.frame.size.width, _commentCountLabel.frame.size.height);
        _dateLabel.frame = CGRectMake(_likeCountLabel.frame.origin.x + _likeCountLabel.frame.size.width + dateLabelSpeator, _commentCountLabel.frame.origin.y, _commentCountLabel.frame.size.width, _commentCountLabel.frame.size.height);
        
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
