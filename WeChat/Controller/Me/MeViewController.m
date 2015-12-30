//
//  MeViewController.m
//  WeChat
//
//  Created by wuqh on 15/12/29.
//  Copyright © 2015年 吴启晗. All rights reserved.
//

#import "MeViewController.h"
#import "XMPPHandle.h"
#import "AccountTool.h"

@interface MeViewController ()

@end

@implementation MeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"我";
}
- (IBAction)logout:(id)sender {
    
    [[XMPPHandle sharedXMPPHandle] xmppLogout];
    AccountModel *account = [AccountTool account];
    account.login = NO;
    [AccountTool saveAccount:account];
    
    [UIStoryboard showInitialVCWithName:@"Login"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
