//
//  AppDelegate.m
//  lagou_demo
//
//  Created by mark-25 on 15-3-6.
//  Copyright (c) 2015年 Mark. All rights reserved.
//

#import "AppDelegate.h"
#import "UIViewController+Swizzled.h"
#import "RNCachingURLProtocol.h"




@implementation AppDelegate

//@synthesize _delegate;
@synthesize btn_cache;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    // Override point for customization after application launch.
    SWIZZ_IT;
    
    
   [NSURLProtocol registerClass:[RNCachingURLProtocol class]];
    
    btn_cache = [[UIButton alloc]initWithFrame:CGRectMake(0, 20, 220, 220)];
    
    
    return YES;
}


-(void)btn_cache_method
{
    //[AppDelegate btn_cache_method]:
    AppDelegate *delegate = [[UIApplication sharedApplication]delegate];
    
//    [delegate.btn_cache setFrame:CGRectMake(1200, 1200, 120, 120)];
    [delegate.btn_cache removeFromSuperview];
    
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
