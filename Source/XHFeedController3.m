//
//  XHFeedController3.m
//  XHFeed
//
//  Created by 曾 宪华 on 13-12-12.
//  Copyright (c) 2013年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507. All rights reserved.
//

#import "XHFeedController3.h"
#import "XHFeedCell3.h"

@interface XHFeedController3 ()

@end

@implementation XHFeedController3

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
    
    self.title = @"Feed3";
    
    self.feedTableView.separatorColor = [UIColor colorWithWhite:0.9 alpha:0.6];
    
    [self.view addSubview:self.feedTableView];
    
    self.profileImages = [NSArray arrayWithObjects:@"profile.jpg", @"profile-1.jpg", @"profile-2.jpg", @"profile-3.jpg", nil];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return isIpad ? 250 : 125;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"FeedCell3";
    XHFeedCell3* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[XHFeedCell3 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.nameLabel.text = @"Laura Leamington";
    cell.updateLabel.text = @"This is a pic I took while on holiday on Wales. The weather played along nicely which doesn't happen often";
    
    cell.dateLabel.text = @"1 hr ago";
    cell.likeCountLabel.text = @"293 likes";
    cell.commentCountLabel.text = @"555K comments";
    
    NSString* profileImageName = self.profileImages[indexPath.row%self.profileImages.count];
    cell.profileImageView.image = [UIImage imageNamed:profileImageName];
    
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
