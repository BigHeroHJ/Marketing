//
//  FirstViewController.m
//  移动营销
//
//  Created by wmm on 16/2/24.
//  Copyright © 2016年 Hanen 3G 01. All rights reserved.
//

#import "FirstViewController.h"
#import "LoginViewController.h"
#import "RegisterViewController.h"

@interface FirstViewController ()

@property (nonatomic, strong) UIAlertController *actionSheet;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGFloat statusBarHeight = 0;
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 7.0)
    {
        statusBarHeight = 20;
    }
    NSLog(@"%f-%f",KSCreenW,KSCreenH);
    NSLog(@"%f-%f",self.view.frame.size.height,self.view.frame.size.width);//736-414
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0,60+statusBarHeight, self.view.frame.size.width, 44)];
    title.text = @"CRM客户营销";
    title.font = [UIFont systemFontOfSize:36];
    title.textColor = darkOrangeColor;
    title.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:title];
    
    UILabel *expLbl = [[UILabel alloc] initWithFrame:CGRectMake(0,self.view.frame.size.height-160, self.view.frame.size.width, 30)];
    expLbl.text = @"快速体验";
    expLbl.font = [UIFont systemFontOfSize:26];
    expLbl.textColor = mainOrangeColor;
    expLbl.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:expLbl];
    
    UIImageView *expImg = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2+65, self.view.frame.size.height-155, 20, 20)];
    expImg.image = [UIImage imageNamed:@"enter"];
    [self.view addSubview:expImg];
    
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [loginBtn setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
    [loginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [loginBtn.titleLabel setFont:[UIFont systemFontOfSize:20]];
    [loginBtn setBackgroundColor:mainOrangeColor];
    loginBtn.layer.cornerRadius = 4.0;//圆角
    loginBtn.frame = CGRectMake(20, self.view.frame.size.height-90, (self.view.frame.size.width - 60)/2, 50);
    [loginBtn addTarget:self action:@selector(toLogin) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginBtn];
    
    UIButton *registerBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [registerBtn setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
    [registerBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [registerBtn.titleLabel setFont:[UIFont systemFontOfSize:20]];
    [registerBtn setBackgroundColor:yellowColor];
    registerBtn.layer.cornerRadius = 4.0;
    registerBtn.frame = CGRectMake(self.view.frame.size.width -20-(self.view.frame.size.width - 60)/2, self.view.frame.size.height-90, (self.view.frame.size.width - 60)/2, 50);
    [registerBtn addTarget:self action:@selector(toRegister) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:registerBtn];
    
    self.actionSheet = [UIAlertController alertControllerWithTitle:@"标题" message:@"消息" preferredStyle:UIAlertControllerStyleActionSheet];
    // 在action sheet中，UIAlertActionStyleCancel不起作用
    UIAlertAction *act1 = [UIAlertAction actionWithTitle:@"创建一个新企业" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
    }];
    UIAlertAction *act2 = [UIAlertAction actionWithTitle:@"企业管理员给我开通账号，我加入" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
    }];
    UIAlertAction *act3 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        
    }];
    [self.actionSheet addAction:act1];
    [self.actionSheet addAction:act2];
    [self.actionSheet addAction:act3];
    
}

- (void)toLogin{
    
    UIPopoverPresentationController *ppc = self.actionSheet.popoverPresentationController;
    ppc.delegate = self;
    ppc.sourceView = self.view;
    // 仔细看苹果文档，sourceRect是要与sourceView结合起来使用的。
    ppc.sourceRect = CGRectMake((CGRectGetWidth(ppc.sourceView.bounds)-2)*0.5f, (CGRectGetHeight(ppc.sourceView.bounds)-2)*0.5f, 2, 2);// 显示在中心位置
    [self presentViewController:self.actionSheet animated:YES completion:^{
        
    }];
//    [self presentViewController:[[RegisterViewController alloc]init] animated:YES completion:nil];
}

- (void)toRegister{
    [self presentViewController:[[RegisterViewController alloc]init] animated:YES completion:nil];
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
