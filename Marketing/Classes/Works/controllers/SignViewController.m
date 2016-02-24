//
//  SignViewController.m
//  移动营销
//
//  Created by Hanen 3G 01 on 16/2/24.
//  Copyright © 2016年 Hanen 3G 01. All rights reserved.
//

#import "SignViewController.h"
#define TopSpace 10.0f

@interface SignViewController ()
{
    UIView  *_userInfoView;//承载个人信息的view
    UIImageView *_imageView;//头像
    UILabel     *_nameLabel;//名字
    UILabel     *_signInLable;//签到状态
    UILabel     *_signOutLabel;//签退状态
    
}

@end

@implementation SignViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"签到签退";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self creatInfoView];
}

- (void)creatInfoView
{
    
    CGFloat imageW = 70;

    _userInfoView = [[UIView alloc] initWithFrame:CGRectMake(0, 64, KSCreenW, [UIView getHeight:150])];
    _userInfoView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_userInfoView];
    
    _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(TopSpace, 2 * TopSpace, imageW, imageW)];
    _imageView.layer.cornerRadius = imageW / 2.0;
    _imageView.layer.masksToBounds = YES;
    [_userInfoView addSubview:_imageView];
    
    //名字根据用户登录来获取
    _nameLabel = [ViewTool getLabelWith:CGRectMake(_imageView.maxX + 10, TopSpace, 100, [UIView getHeight:30]) WithTitle:@"小花花" WithFontSize:16.0 WithTitleColor:[UIColor colorWithWhite:0.5    alpha:1] WithTextAlignment:NSTextAlignmentLeft];
    [_userInfoView addSubview:_nameLabel];
    
    //根据签到签退的情况来 改变label文字的状态
    _signInLable = [ViewTool getLabelWith:CGRectMake(_imageView.maxX + 10, _nameLabel.maxY + 5, 100, [UIView getHeight:20]) WithTitle:nil WithFontSize:13.0f WithTitleColor:[UIColor lightGrayColor] WithTextAlignment:NSTextAlignmentLeft];
    [_userInfoView addSubview:_signInLable];
    
    
    _signOutLabel = [ViewTool getLabelWith:CGRectMake(_imageView.maxX + 10, _signInLable.maxY + 5, 100, [UIView getHeight:20]) WithTitle:nil WithFontSize:13.0f WithTitleColor:[UIColor lightGrayColor] WithTextAlignment:NSTextAlignmentLeft];
    [_userInfoView addSubview:_signOutLabel];
    
    [_userInfoView addSubview:[ViewTool getLineViewWith:CGRectMake(TopSpace * 2, _imageView.maxY + 5, KSCreenW - 4 * TopSpace, 0.8) withBackgroudColor:[UIColor colorWithWhite:0.7 alpha:0.8]]];
    
    
}
- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden = NO;
    self.tabBarController.hidesBottomBarWhenPushed = YES;
}

- (void)viewWillDisappear:(BOOL)animated
{
    self.tabBarController.hidesBottomBarWhenPushed = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
