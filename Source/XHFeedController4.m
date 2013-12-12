//
//  XHFeedController4.m
//  XHFeed
//
//  Created by 曾 宪华 on 13-12-12.
//  Copyright (c) 2013年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507. All rights reserved.
//

#import "XHFeedController4.h"
#import "XHFeedCell4.h"

@interface XHFeedController4 ()

@end

@implementation XHFeedController4

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
	
    NSString* boldFontName = @"Avenir-Black";
    
    [self styleNavigationBarWithFontName:boldFontName];
    
    self.title = @"Feed4";
    self.feedTableView.backgroundColor = [UIColor colorWithRed:242.0/255 green:235.0/255 blue:241.0/255 alpha:1.0];
    
    self.profileImages = [NSArray arrayWithObjects:@"profile.jpg", @"profile-1.jpg", @"profile-2.jpg", @"profile-3.jpg", nil];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return isIpad ? 674 : 337;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"FeedCell4";
    XHFeedCell4* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[XHFeedCell4 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    if(indexPath.row % 2){
        cell.nameLabel.text = @"Laura Leamington";
        cell.updateLabel.text = @"This is a pic I took while on holiday on Wales. The weather played along nicely which doesn't happen often";
        
        cell.dateLabel.text = @"Yesterday at 12.34pm";
        cell.likeCountLabel.text = @"LIKES 235";
        cell.commentCountLabel.text = @"COMMENTS 33";
        cell.picImageView.image = [UIImage imageNamed:@"feed-armchair.jpg"];
        
        NSString* profileImageName = self.profileImages[indexPath.row%self.profileImages.count];
        cell.profileImageView.image = [UIImage imageNamed:profileImageName];
    }
    else{
        cell.nameLabel.text = @"John Keynetown";
        cell.updateLabel.text = @"On the trip to San Fransisco, the Golden gate bridge looked really magnificent. This is a city I would love to visit very often. Hope we get to do it again soon";
        
        cell.dateLabel.text = @"Yesterday at 12.34pm";
        cell.likeCountLabel.text = @"LIKES 34";
        cell.commentCountLabel.text = @"COMMENTS 32";
        cell.picImageView.image = [UIImage imageNamed:@"feed-bridge.jpg"];
        
        NSString* profileImageName = self.profileImages[indexPath.row%self.profileImages.count];
        cell.profileImageView.image = [UIImage imageNamed:profileImageName];
    }
    
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
