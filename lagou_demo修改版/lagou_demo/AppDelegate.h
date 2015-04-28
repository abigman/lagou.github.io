//
//  AppDelegate.h
//  lagou_demo
//
//  Created by mark-25 on 15-3-6.
//  Copyright (c) 2015年 Mark. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{

    @package
id<UIApplicationDelegate> _delegate ;
    
    
    BOOL bl_ForSave;
    BOOL bl_ForDelete;
    NSString *str_For_CacheFileName;
    
    
    UIButton *btn_cache;

    
}
@property (strong, nonatomic) UIWindow *window;
//@property(strong,nonatomic) id<UIApplicationDelegate> _delegate ;

@property (nonatomic,assign)  BOOL bl_ForSave;
@property (nonatomic,assign)  BOOL bl_ForDelete;


@property (strong, nonatomic) NSString *str_For_CacheFileName;


@property(retain,nonatomic) UIButton *btn_cache;

@end
