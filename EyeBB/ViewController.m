//
//  ViewController.m
//  EyeBB
//
//  Created by Evan on 15/2/22.
//  Copyright (c) 2015年 EyeBB. All rights reserved.
//

#import "ViewController.h"
#import "RegViewController.h"
#import "MainViewController.h"
@interface ViewController ()

@property (nonatomic,strong) RegViewController *reg;

@end

@implementation ViewController

#pragma mark - 原生方法
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor=[UIColor whiteColor];
    //    self.navigationController.hidesBottomBarWhenPushed=YES;
    [self iv];
    [self lc];

}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    if (_reg!=nil) {
        _reg=nil;
    }
    self.navigationController.navigationBarHidden = YES;
    self.navigationController.interactivePopGestureRecognizer.enabled = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}
#pragma mark --
#pragma mark - 初始化页面元素
/**
  *初始化参数
  */
-(void)iv
{
    
}

/**
 *加载控件
 */
-(void)lc
{
    //注册按钮
    UIButton * RegBtn=[[UIButton alloc]initWithFrame:CGRectMake((Drive_Wdith/2)-(Drive_Wdith/4), Drive_Height/14*9, (Drive_Wdith/2), Drive_Wdith/8)];
    //设置按显示文字
    [RegBtn setTitle:@"注册" forState:UIControlStateNormal];
    //设置按钮背景颜色
    [RegBtn setBackgroundColor:[UIColor colorWithRed:0.914 green:0.267 blue:0.235 alpha:1]];
    //设置按钮响应事件
    [RegBtn addTarget:self action:@selector(regAction:) forControlEvents:UIControlEventTouchUpInside];
    //设置按钮是否圆角
    [RegBtn.layer setMasksToBounds:YES];
    //圆角像素化
    [RegBtn.layer setCornerRadius:4.0];
    [self.view addSubview:RegBtn];
    
    //登录按钮
    UIButton * LoginBtn=[[UIButton alloc]initWithFrame:CGRectMake((Drive_Wdith/2)-(Drive_Wdith/4), Drive_Height/14*10.4, (Drive_Wdith/2), Drive_Wdith/8)];
    //设置按显示文字
    [LoginBtn setTitle:@"登录" forState:UIControlStateNormal];
    [LoginBtn setTitleColor:[UIColor colorWithRed:0.914 green:0.267 blue:0.235 alpha:1] forState:UIControlStateNormal];
    //设置按钮背景颜色
    [LoginBtn setBackgroundColor:[UIColor whiteColor]];
    //设置按钮响应事件
    [LoginBtn addTarget:self action:@selector(loginAction:) forControlEvents:UIControlEventTouchUpInside];
    //设置按钮是否圆角
    [LoginBtn.layer setMasksToBounds:YES];
    //圆角像素化
    [LoginBtn.layer setCornerRadius:4.0];
    [LoginBtn.layer setBorderWidth:1.0]; //边框宽度
    [LoginBtn.layer setBorderColor:[UIColor colorWithRed:0.914 green:0.267 blue:0.235 alpha:1].CGColor];//边框颜色
    [self.view addSubview:LoginBtn];
    
    //版权信息
    UILabel * CopyrightLbl =[[UILabel alloc]initWithFrame:CGRectMake(0, Drive_Height-50, self.view.frame.size.width, 20)];
    [CopyrightLbl setText:@"By Continuing, you agree to cur Terms and Privacy Policy."];
    [CopyrightLbl setFont:[UIFont systemFontOfSize: 10.0]];
    [CopyrightLbl setTextColor:[UIColor colorWithRed:0.831 green:0.831 blue:0.827 alpha:1]];
    [CopyrightLbl setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:CopyrightLbl];
    
}
#pragma mark --
#pragma mark - 点击事件
-(void)regAction:(id)sender
{
    
        _reg = [[RegViewController alloc] init];
    
    
    [self.navigationController pushViewController:_reg animated:YES];
    _reg.title = @"";
}

-(void)loginAction:(id)sender
{
    MainViewController*reg = [[MainViewController alloc] init];
    [self.navigationController pushViewController:reg animated:YES];
    reg.title = @"";
}

@end
