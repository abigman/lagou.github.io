//
//  ViewController.h
//  lagou_demo
//
//  Created by mark-25 on 15-3-6.
//  Copyright (c) 2015年 Mark. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIWebViewDelegate,UIAlertViewDelegate,UITableViewDelegate,UITableViewDataSource,UIActionSheetDelegate,UIGestureRecognizerDelegate>
{    
    UIWebView *webView;
    UIWebView *webView1;
    UIWebView *webView2;
    UIWebView *webView3;
    UIWebView *webView4;
    UIWebView *webView5;
    UIWebView *webView6;
    UIWebView *webView7;
    UIWebView *webView8;
    UIWebView *webView9;
    
    UIButton *btn_jp_top;
    UIButton *btn_jp_mid;
    UIButton *btn_jp_bottom;
    
    UIButton *btn_goBack;
    
    UIButton *btn_save_Favour_JobInfo;
    
    NSString *str_link_ForSave;
    
    NSString *str_linkName_ForSave;
    
    UIButton *btn_Show_Favour_JobInfo;
    UIButton *btn_Refresh;
    
    UITableView *tableview;
    
    
    
    NSMutableDictionary*  _contDic_favour_jobInfo;
    

    UILongPressGestureRecognizer * longPressGr;
    
    int i_webView;
    int i_webView_actionFeet;
    
    
    NSString *str_title_actionFeet;
    NSString *str_title1_actionFeet;
    NSString *str_title2_actionFeet;
    NSString *str_title3_actionFeet;
    
    UIActionSheet *styleAlert1;
    
    NSMutableArray *mus_arr_webView;
    NSMutableDictionary *mus_dic_webView;
    
    BOOL bool_scym;
    
}



@property (nonatomic,retain) UILongPressGestureRecognizer *longPressGr;

@property (nonatomic,retain) UIWebView *webView;
@property (nonatomic,retain) UIWebView *webView1;
@property (nonatomic,retain) UIWebView *webView2;
@property (nonatomic,retain) UIWebView *webView3;
@property (nonatomic,retain) UIWebView *webView4;
@property (nonatomic,retain) UIWebView *webView5;
@property (nonatomic,retain) UIWebView *webView6;
@property (nonatomic,retain) UIWebView *webView7;
@property (nonatomic,retain) UIWebView *webView8;
@property (nonatomic,retain) UIWebView *webView9;



@property (nonatomic,retain)  UIButton *btn_jp_top;
@property (nonatomic,retain)  UIButton *btn_jp_mid;
@property (nonatomic,retain)  UIButton *btn_jp_bottom;

@property (nonatomic,retain)  UIButton *btn_goBack;

@property (nonatomic,retain)  UIButton *btn_save_Favour_JobInfo;

@property (nonatomic,retain)  NSString *str_link_ForSave;

@property (nonatomic,retain)  NSString *str_linkName_ForSave;

@property (nonatomic,retain)  UIButton *btn_Show_Favour_JobInfo;
@property (nonatomic,retain)  UIButton *btn_Refresh;


@property (strong, nonatomic) UITableView *tableview;


@property(retain,nonatomic)  NSMutableDictionary*  _contDic_favour_jobInfo;

@property (assign,nonatomic) int i_webView;
@property (assign,nonatomic) int i_webView_actionFeet;

@property (retain,nonatomic) NSString *str_title_actionFeet;

@property (retain,nonatomic) UIActionSheet *styleAlert1;

@property (retain,nonatomic) NSMutableDictionary *mus_dic_webView;
@property (retain,nonatomic) NSMutableArray *mus_arr_webView;

@property (assign,nonatomic) BOOL bool_scym;


@end
