//
//  ActionSheetItem.h
//  ShareSDK
//
//  Created by ZZCN77 on 16/7/15.
//  Copyright © 2016年 ZZCN77. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActionSheetItem : UIButton

@property (nonatomic, assign) int btnIndex;
- (void)setTitle:(NSString *)title image:(UIImage *)image;

@end
