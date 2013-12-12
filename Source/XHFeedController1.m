//
//  XHFeedController1.m
//  XHFeed
//
//  Created by 曾 宪华 on 13-12-12.
//  Copyright (c) 2013年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507. All rights reserved.
//

#import "XHFeedController1.h"
#import "XHFeedCell1.h"

@interface XHFeedController1 ()

@end

@implementation XHFeedController1

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
	self.title = @"Feed1";
    self.feedTableView.backgroundColor = [UIColor colorWithWhite:0.9 alpha:1.0];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return isIpad ? 746 : 373;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellIdentifier = @"FeedCell1";
    
    XHFeedCell1* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[XHFeedCell1 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    if(indexPath.row % 2){
        cell.nameLabel.text = @"Laura Leamington";
        cell.updateLabel.text = @"This is a pic I took while on holiday on Wales. The weather played along nicely which doesn't happen often";
        
        cell.dateLabel.text = @"1 hr ago";
        cell.likeCountLabel.text = @"293";
        cell.commentCountLabel.text = @"55";
        cell.picImageView.image = [UIImage imageNamed:@"feed-armchair.jpg"];
        cell.likeIconImageView.image = [UIImage imageNamed:@"heart"];
        cell.commentIconImageView.image = [UIImage imageNamed:@"comment"];
    }
    else{
        cell.nameLabel.text = @"John Keynetown";
        cell.updateLabel.text = @"On the trip to San Fransisco, the Golden gate bridge looked really magnificent. This is a city I would love to visit very often. Hope we get to do it again soon";
        
        cell.dateLabel.text = @"1 hr ago";
        cell.likeCountLabel.text = @"134";
        cell.commentCountLabel.text = @"21";
        cell.picImageView.image = [UIImage imageNamed:@"feed-bridge.jpg"];
        cell.likeIconImageView.image = [UIImage imageNamed:@"heart"];
        cell.commentIconImageView.image = [UIImage imageNamed:@"comment"];
    }
    
    return cell;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
