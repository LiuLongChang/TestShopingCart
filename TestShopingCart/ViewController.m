//
//  ViewController.m
//  TestShopingCart
//
//  Created by 薛焱 on 16/1/6.
//  Copyright © 2016年 薛焱. All rights reserved.
//

#import "ViewController.h"
#import <UIViewController+KNSemiModal.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundColor:[UIColor cyanColor]];
    [self.view addSubview:btn];
    btn.frame = CGRectMake(100, 200, 60, 30);
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)btnAction{
    
    
    
    printf("1222222");
}


-(void)btnAction2{
    
    printf("344444444");
}

- (IBAction)addShopingButtonAction:(UIButton *)sender {
    
    UIView *aView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 200, [UIScreen mainScreen].bounds.size.width, 200)];
    aView.backgroundColor = [UIColor redColor];

    
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor blackColor];
    [aView addSubview:btn];
    btn.frame = CGRectMake(100,40,40,40);
    [btn addTarget:self action:@selector(btnAction2) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    //添加背景图
    UIImageView * bgimgv = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background_01"]];
    [self presentSemiView:aView withOptions:@{ KNSemiModalOptionKeys.backgroundView:bgimgv }];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
