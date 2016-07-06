//
//  ViewController.m
//  WEIBOShareDemo
//
//  Created by 赚发2 on 16/7/5.
//  Copyright © 2016年 fengwang. All rights reserved.
//

#import "ViewController.h"
#import "WBSPopShareView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}
- (IBAction)showPopView:(id)sender {
    WBSPopShareView *popShareView = [[WBSPopShareView alloc] initWithFrameWithFrame:self.view.frame images:@[@"tabbar_compose_idea",@"tabbar_compose_photo",@"tabbar_compose_headlines",@"tabbar_compose_lbs",@"tabbar_compose_review",@"tabbar_compose_more"] titles:@[@"文字",@"照片/视屏",@"头条文章",@"签到",@"直播",@"更多"]];
    [self.view addSubview:popShareView];
    
    popShareView.handleShareBlock = ^ (UIButton *sender){
        NSLog(@"%@",sender);
    };
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
