//
//  ViewController.m
//  XHFeed
//
//  Created by 曾 宪华 on 13-12-12.
//  Copyright (c) 2013年 嗨，我是曾宪华(@xhzengAIB)，曾加入YY Inc.担任高级移动开发工程师，拍立秀App联合创始人，热衷于简洁、而富有理性的事物 QQ:543413507 主页:http://zengxianhua.com All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - Left cycle init

- (void)_loadFeedViewControllers {
    dispatch_async(dispatch_queue_create("Load Feeds", NULL), ^{
        
        NSMutableArray *feeds = [[NSMutableArray alloc] init];
        
        for (int i = 1; i < 5; i ++) {
            NSString *className = [NSString stringWithFormat:@"XHFeedController%d", i];
            [feeds addObject:className];
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            self.profileImages = feeds;
            [self.feedTableView reloadData];
        });
    });
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self _loadFeedViewControllers];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.title = NSLocalizedString(@"Feed列表组件", @"");
    self.view.backgroundColor = [UIColor whiteColor];
    self.feedTableView.separatorColor = [UIColor grayColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableView DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.profileImages.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    NSString *className = self.profileImages[indexPath.row];
    cell.textLabel.text = className;
    cell.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.png", className]];
    
    return cell;
}

#pragma mark - UITableView delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Class class = NSClassFromString(self.profileImages[indexPath.row]);
    id feedController = [[class alloc] init];
    [self presentViewController:[[UINavigationController alloc] initWithRootViewController:feedController] animated:YES completion:NULL];
}

@end
