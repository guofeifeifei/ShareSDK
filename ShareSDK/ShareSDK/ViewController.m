//
//  ViewController.m
//  ShareSDK
//
//  Created by ZZCN77 on 16/7/15.
//  Copyright © 2016年 ZZCN77. All rights reserved.
//

#import "ViewController.h"
#import "ActionSheet.h"
#import "Masonry.h"
#define WS(weakSelf) __weak __typeof(& * self)weakSelf = self;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *shareBtn = [UIButton buttonWithType:UIButtonTypeSystem] ;
    [shareBtn setTitle:@"分享" forState:UIControlStateNormal];
    [shareBtn addTarget:self action:@selector(shareAction:) forControlEvents:UIControlEventTouchUpInside];
    [shareBtn setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:shareBtn];
    WS(ws);
    [shareBtn mas_makeConstraints:^(MASConstraintMaker *make) {
    
        //设置居中
        make.center.equalTo(ws.view);
        make.size.mas_equalTo(CGSizeMake(200, 200));
    }];
    
    
}
- (void)shareAction:(UIButton *)btn{
    NSArray *titles = @[@"分享到朋友圈", @"分享到微博", @"分享到QQ空间", @"复制链接", @"发送给朋友"];
    
    NSArray *imageNames = @[@"sns_icon_23",@"sns_icon_1",@"sns_icon_6",@"sns_icon_copy",@"sns_icon_f"];
    ActionSheet *sheet = [[ActionSheet alloc] initWithTitle:titles iconsName:imageNames];
    [sheet showActionSheetWithClickBlock:^(int btnIndex) {
       
        [self shareCome:btnIndex];
        
    } cancelBlock:^{
        NSLog(@"取消");
    }];
 
    
    
   
}
- (void)shareCome:(NSInteger)btnIndex{
     NSLog(@"btnIndes:%ld", (long)btnIndex);
    
    
    
    
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
