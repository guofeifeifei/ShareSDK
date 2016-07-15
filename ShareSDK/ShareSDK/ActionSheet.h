//
//  ActionSheet.h
//  ShareSDK
//
//  Created by ZZCN77 on 16/7/15.
//  Copyright © 2016年 ZZCN77. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^ClickBlock)(int btnIndex);
typedef void(^CancelBlock)(void);
@interface ActionSheet : UIWindow
- (instancetype)initWithTitle:(NSArray *)title iconsName:(NSArray *)iconNames;
- (void)showActionSheetWithClickBlock:(ClickBlock)clickBlock cancelBlock:(CancelBlock)cancelBlock;
@end
