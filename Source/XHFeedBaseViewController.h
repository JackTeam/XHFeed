//
//  XHFeedBaseViewController.h
//  XHFeed
//
//  Created by 曾 宪华 on 13-12-12.
//  Copyright (c) 2013年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XHFeedBaseViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView* feedTableView;

@property (nonatomic, strong) NSArray* profileImages;

- (void)styleNavigationBarWithFontName:(NSString*)navigationTitleFont;

@end
