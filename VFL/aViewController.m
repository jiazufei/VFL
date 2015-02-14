//
//  aViewController.m
//  VFL
//
//  Created by CaoFei on 15/2/14.
//  Copyright (c) 2015年 CaoFei. All rights reserved.
//

#import "aViewController.h"

@interface aViewController ()

@end

@implementation aViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor greenColor]];
    UIButton *button=[[UIButton alloc]init];
    [button setTitle:@"点击一下" forState:UIControlStateNormal];
    button.translatesAutoresizingMaskIntoConstraints=NO;
    [button setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:button];
    
    NSArray * constraints1 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[button]-|"
                                                                     options:0
                                                                     metrics:nil
                                                                       views:NSDictionaryOfVariableBindings(button)];
    NSArray * constraints2 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-66-[button(==30)]"
                                                                     options:0
                                                                     metrics:nil
                                                                       views:NSDictionaryOfVariableBindings(button)];
    
    
    
    [self.view addConstraints:constraints1];
    [self.view addConstraints:constraints2];
    
    UIButton *button1=[[UIButton alloc]init];
    button1.translatesAutoresizingMaskIntoConstraints=NO;
    [button1 setTitle:@"请不要点击我" forState:UIControlStateNormal];
    [button1 setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:button1];
    
    NSArray *constraints3=[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[button1]-|"
                                                                  options:0
                                                                  metrics:nil
                                                                    views:NSDictionaryOfVariableBindings(button1)];
    
    NSArray *constraints4=[NSLayoutConstraint constraintsWithVisualFormat:@"V:[button]-50-[button1(==30)]"
                                                                  options:0
                                                                  metrics:nil
                                                                    views:NSDictionaryOfVariableBindings(button1,button)];
    
    
    NSArray *constraints5=[NSLayoutConstraint constraintsWithVisualFormat:@"V:[button]-[button1(==height)]"
                                                                  options:0
                                                                  metrics:@{@"height":@90}
                                                                    views:NSDictionaryOfVariableBindings(button1,button)];
    
    [self.view addConstraints:constraints3];
    [self.view addConstraints:constraints5];
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
