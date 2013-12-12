//
//  XHFeedController2.m
//  XHFeed
//
//  Created by 曾 宪华 on 13-12-12.
//  Copyright (c) 2013年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507. All rights reserved.
//

#import "XHFeedController2.h"
#import "XHFeedCell2.h"

@interface XHFeedController2 ()

@end

@implementation XHFeedController2

#pragma mark - Left cycle init

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	   
    self.title = @"Feed2";
    self.feedTableView.separatorColor = [UIColor colorWithWhite:0.9 alpha:0.6];
    
    self.profileImages = [NSArray arrayWithObjects:@"profile.jpg", @"profile-1.jpg", @"profile-2.jpg", @"profile-3.jpg", nil];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if(indexPath.row % 2){
        static NSString *cellIdentifier = @"FeedCell2";
        XHFeedCell2* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        
        if (!cell) {
            cell = [[XHFeedCell2 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier FeedCellType:TextType];
        }
        
        cell.nameLabel.text = @"Laura Leamington";
        cell.updateLabel.text = @"This is a pic I took while on holiday on Wales. The weather played along nicely which doesn't happen often";
        
        cell.dateLabel.text = @"10 小时前";
        cell.likeCountLabel.text = @"293 likes";
        cell.commentCountLabel.text = @"55 comments";
        
        NSString* profileImageName = self.profileImages[indexPath.row%self.profileImages.count];
        cell.profileImageView.image = [UIImage imageNamed:profileImageName];
        
        return cell;
    }
    else{
        static NSString *cellIdentifier = @"FeedCell2-Pic";
        XHFeedCell2* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (!cell) {
            cell = [[XHFeedCell2 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier FeedCellType:PictureType];
        }
        cell.nameLabel.text = @"John Keynetown";
        cell.updateLabel.text = @"On the trip to San Fransisco, the Golden gate bridge looked really magnificent. This is a city I would love to visit very often.";
        
        cell.dateLabel.text = @"10 小时前";
        cell.likeCountLabel.text = @"134 likes";
        cell.commentCountLabel.text = @"21 comments";
        
        NSString* profileImageName = self.profileImages[indexPath.row%self.profileImages.count];
        cell.profileImageView.image = [UIImage imageNamed:profileImageName];
        
        cell.picImageView.image = [UIImage imageNamed:@"feed-armchair.jpg"];
        
        return cell;
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return (indexPath.row % 2) ? (isIpad ? 250 : 125) : (isIpad ? 502 : 251);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
