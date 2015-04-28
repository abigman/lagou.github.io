//
//  ViewController.m
//  lagou_demo
//
//  Created by mark-25 on 15-3-6.
//  Copyright (c) 2015年 Mark. All rights reserved.
//

#import "ViewController.h"
#import "RNCachingURLProtocol.h"

#import "AppDelegate.h"

@interface ViewController ()

@end



@implementation ViewController

@synthesize btn_jp_bottom;
@synthesize btn_jp_mid;
@synthesize btn_jp_top;


@synthesize btn_goBack;
@synthesize btn_save_Favour_JobInfo;


@synthesize webView;
@synthesize webView1;
@synthesize webView2;
@synthesize webView3;
@synthesize webView4;
@synthesize webView5;
@synthesize webView6;
@synthesize webView7;
@synthesize webView8;
@synthesize webView9;

@synthesize str_link_ForSave;

@synthesize str_linkName_ForSave;


@synthesize btn_Show_Favour_JobInfo;

@synthesize tableview;



@synthesize _contDic_favour_jobInfo;


@synthesize btn_Refresh;


@synthesize longPressGr;

@synthesize  i_webView;

@synthesize  i_webView_actionFeet;
@synthesize str_title_actionFeet;

@synthesize styleAlert1;
@synthesize mus_arr_webView;
@synthesize mus_dic_webView;


@synthesize bool_scym;



- (void)viewDidLoad
{
    
    bool_scym = false;
    
    
    [super viewDidLoad];
    
    styleAlert1 = [[UIActionSheet alloc]initWithTitle:@"后台页面" delegate:self cancelButtonTitle:nil destructiveButtonTitle:@"拉勾主页" otherButtonTitles:nil, nil];
    styleAlert1.actionSheetStyle = self.navigationController.navigationBar.barStyle;
    
    i_webView = 0;
    i_webView_actionFeet = 0;
    
    
    
    
    
    webView = [[UIWebView alloc]initWithFrame:CGRectMake(0,0, 320, 420)];
    webView1 = [[UIWebView alloc]initWithFrame:CGRectMake(0,0, 320, 420)];
    
    webView2 = [[UIWebView alloc]initWithFrame:CGRectMake(0,0, 320, 420)];
    webView3 = [[UIWebView alloc]initWithFrame:CGRectMake(0,0, 320, 420)];
    webView4 = [[UIWebView alloc]initWithFrame:CGRectMake(0,0, 320, 420)];
    webView5 = [[UIWebView alloc]initWithFrame:CGRectMake(0,0, 320, 420)];
    webView6 = [[UIWebView alloc]initWithFrame:CGRectMake(0,0, 320, 420)];
    webView7 = [[UIWebView alloc]initWithFrame:CGRectMake(0,0, 320, 420)];
    webView8 = [[UIWebView alloc]initWithFrame:CGRectMake(0,0, 320, 420)];
    webView9 = [[UIWebView alloc]initWithFrame:CGRectMake(0,0, 320, 420)];
    
    
    mus_arr_webView = [[NSMutableArray alloc]init];
    [mus_arr_webView addObject:webView];
    
    mus_dic_webView = [[NSMutableDictionary alloc]init];
    
    
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.lagou.com"]];
    [self.view addSubview:webView];
    
    
    
    [webView loadRequest:request];
    
    
    request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"]];
    [webView1 loadRequest:request];
    
    webView.delegate = self;
    webView1.delegate = self;
    webView2.delegate = self;
    webView3.delegate = self;
    webView4.delegate = self;
    webView5.delegate = self;
    webView6.delegate = self;
    webView7.delegate = self;
    webView8.delegate = self;
    webView9.delegate = self;
    
    int i = 20;
    
    self.tableview  = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, self.view.frame.size.height-90) style:UITableViewStylePlain];
    self.tableview.dataSource = self;
    self.tableview.delegate = self;
    
    
    _contDic_favour_jobInfo = [[NSMutableDictionary alloc]init];
    
    UITableViewCell *gridCell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    
  
    
    btn_jp_top = [[UIButton alloc]initWithFrame:CGRectMake(0, 435-i, 105, 50)];
    btn_jp_mid = [[UIButton alloc]initWithFrame:CGRectMake( 105, 435-i, 120, 50)];
    btn_jp_bottom = [[UIButton alloc]initWithFrame:CGRectMake(225, 435-i, 105, 50)];
    btn_goBack = [[UIButton alloc]initWithFrame:CGRectMake(10, 380-i , 35, 25)];
    btn_save_Favour_JobInfo = [[UIButton alloc]initWithFrame:CGRectMake(50, 380-i , 35, 25)];
    btn_Show_Favour_JobInfo = [[UIButton alloc]initWithFrame:CGRectMake(95, 380-i , 35, 25)];
    btn_Refresh = [[UIButton alloc]initWithFrame:CGRectMake(135, 380-i , 35, 25)];
    
    
    [btn_jp_top setTitle:@"top" forState:UIControlStateNormal];
    [btn_jp_mid setTitle:@"mid" forState:UIControlStateNormal];
    [btn_jp_bottom setTitle:@"bottom" forState:UIControlStateNormal];
    [btn_goBack setTitle:@"《" forState:UIControlStateNormal];
    [btn_save_Favour_JobInfo setTitle:@"S" forState:UIControlStateNormal];
    [btn_Show_Favour_JobInfo setTitle:@"》" forState:UIControlStateNormal];
    [btn_Refresh setTitle:@"@" forState:UIControlStateNormal];
    
    
    [btn_jp_top setBackgroundColor:[UIColor redColor]];
    [btn_jp_mid setBackgroundColor:[UIColor orangeColor]];
    [btn_jp_bottom setBackgroundColor:[UIColor greenColor]];
    [btn_goBack setBackgroundColor:[UIColor blueColor]];
    [btn_save_Favour_JobInfo setBackgroundColor:[UIColor blueColor]];
    [btn_Show_Favour_JobInfo setBackgroundColor:[UIColor blueColor]];
    [btn_Refresh setBackgroundColor:[UIColor blueColor]];
    
    [btn_jp_top addTarget:self action:@selector(btn_jp_tp_method) forControlEvents:UIControlEventTouchUpInside];
    [btn_jp_mid addTarget:self action:@selector(btn_jp_md_method) forControlEvents:UIControlEventTouchUpInside];
    [btn_jp_bottom addTarget:self action:@selector(btn_jp_bot_method) forControlEvents:UIControlEventTouchUpInside];
    [btn_goBack addTarget:self action:@selector(btn_goBK_method) forControlEvents:UIControlEventTouchUpInside];
    [btn_save_Favour_JobInfo addTarget:self action:@selector(btn_save_Favour_JobInfo_method) forControlEvents:UIControlEventTouchUpInside];
    [btn_Show_Favour_JobInfo addTarget:self action:@selector(btn_Show_Favour_JobInfo_method) forControlEvents:UIControlEventTouchUpInside];
    [btn_Refresh addTarget:self action:@selector(btn_Refresh_Method) forControlEvents:UIControlEventTouchUpInside];
    
    
    longPressGr = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longGo:)];

    
    longPressGr.delegate = self;
    
    
    
    
    [styleAlert1 addGestureRecognizer:longPressGr];
    
    
   
    
    
    
    UIView *aView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds]  ;
    aView.backgroundColor = [UIColor whiteColor];
    
    //长按手势
    UILongPressGestureRecognizer *longGnizer=nil;
    longGnizer=[[UILongPressGestureRecognizer alloc]initWithTarget:self
                                                            action:@selector(longGo:)];
  
    
    
    
    
    UISwipeGestureRecognizer *recognizer;
    
    recognizer = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleSwipeFrom:)];
    
    [recognizer setDirection:(UISwipeGestureRecognizerDirectionRight)];
    

    
    
    UIMenuItem *flag = [[UIMenuItem alloc]initWithTitle:@"分享"
                                                 action:@selector(longGo:)];

    
    
    UIMenuController *menu = [UIMenuController sharedMenuController];
    [menu setMenuItems:[NSArray arrayWithObjects:flag,nil]];
    
    
    
    
    UIMenuItem *copyItem = [[UIMenuItem alloc] initWithTitle:@"111Copy"
                                                      action:@selector(longGo:)];
    
    UIMenuItem *defineItem = [[UIMenuItem alloc] initWithTitle:@"111Define"
                                                        action:@selector(longGo:)];
    
    [[UIMenuController sharedMenuController] setMenuItems:[NSArray arrayWithObjects:defineItem, copyItem, nil]];
    
    
    
    
    [self.view addSubview:btn_jp_top];
    [self.view addSubview:btn_jp_mid];
    [self.view addSubview:btn_jp_bottom];
    [self.view addSubview:btn_goBack];
    [self.view addSubview:btn_save_Favour_JobInfo];
    [self.view addSubview:btn_Show_Favour_JobInfo];
    [self.view addSubview:btn_Refresh];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)loadView_1
{
    UIView *aView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds]  ;
    aView.backgroundColor = [UIColor whiteColor];
    
    //长按手势
    UILongPressGestureRecognizer *longGnizer=nil;
    longGnizer=[[UILongPressGestureRecognizer alloc]initWithTarget:self
                                                            action:@selector(longGo:)];
    [self.view addGestureRecognizer:longGnizer];
    
}

-(void)longGo:(UILongPressGestureRecognizer *)aGer{
    if (aGer.state==UIGestureRecognizerStateBegan) {
        
        
        
        
        CGPoint point = [aGer locationInView:self.webView];
        
        
        NSLog(@"%s",self.webView.scrollView.contentOffset);
        
        NSLog(@"%s",__func__);
    }
    
    
    
    
    
    //    [self copy:nil];
    UIPasteboard *pasteBoard = [UIPasteboard generalPasteboard];
    
    if (pasteBoard.string!=nil) {
        NSLog(@"%@=====",pasteBoard.string);
        
    }
    
}


-(BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    UIPasteboard *pasteBoard = [UIPasteboard generalPasteboard];
    
    if (pasteBoard.string!=nil) {
        NSLog(@"%@=====",pasteBoard.string);
        
    }
    
    
    
    if (action == @selector(_define:)) {
        //        return NO;
        return YES;
        
    }
    if (action == @selector(selectAll:)) {
        return NO;
    }
    if (action == @selector(flag:)) {
        return NO;
    }
    
    if (action == @selector(cut:)) {
        //        return NO;
        return YES;
    }
    if (action == @selector(copy:)) {
        return NO;
    }
    return [super canPerformAction:action withSender:sender];
}





-(void)cut:(id)sender
{
    UIPasteboard *pasteBoard = [UIPasteboard generalPasteboard];
    
    if (pasteBoard.string!=nil) {
        NSLog(@"%@=====",pasteBoard.string);
        
    }
    
    NSString* selection = [self.webView stringByEvaluatingJavaScriptFromString:@"window.getSelection().toString()"];
    
    str_title_actionFeet = selection;
    
 
    
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"copy" ofType:@"js"];
    
    NSString *jsString = [[NSString alloc] initWithContentsOfFile:filePath];
    
    [webView stringByEvaluatingJavaScriptFromString:jsString];
    
    
    jsString = [webView stringByEvaluatingJavaScriptFromString:@"getSelectedContents();"];
 
    
    
    //首段字符串
    NSString *str_link_OpenBack = @"http://www.lagou.com/center/job_";
    
    NSString *str_range_dataPosition = @"data-positionid";
    
    
    //得到datapositionId的位置
    NSRange rang ;
    rang = [jsString rangeOfString:str_range_dataPosition];
    
    //得到datapositionId之后的位置
    NSString *str_dataPositionId = [jsString substringFromIndex:(rang.location+17)];
    
    NSString *str_range_companyId = @"data-companyid";
    
    //得到companyId的位置
    rang = [str_dataPositionId rangeOfString:str_range_companyId];
    //得到companyId之前的串
    
    str_dataPositionId = [str_dataPositionId substringToIndex:(rang.location-2)];
    
    
    //
    NSString *str_link_suffix = @".html?m=1";
    str_link_OpenBack = [str_link_OpenBack stringByAppendingString:[NSString stringWithFormat:@"%@%@",str_dataPositionId,str_link_suffix]];
    //.html?m=1
    
    
    
    
    
    
    
    
 
    
    
    NSURLRequest *request_Open_Back = [NSURLRequest requestWithURL:[NSURL URLWithString:str_link_OpenBack]];
    
    str_title_actionFeet = [NSString stringWithFormat:@"%@",selection];
    
    
    str_title_actionFeet = [str_title_actionFeet stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    
    
    
    
    UIWebView *webView_cut = [[UIWebView alloc]initWithFrame:CGRectMake(0,0, 320, 420)];
    
    [webView_cut loadRequest:request_Open_Back];
    webView_cut.delegate = self;
    
    
    NSDictionary *dic_webView = [[NSDictionary alloc]initWithObjectsAndKeys:webView_cut, str_link_OpenBack, nil];
    
    
    //mus字典保存页面名还有地址
    [mus_dic_webView setObject:dic_webView forKey:selection];
    
    
    
    
    

    
    
}




-(void)copy:(id)sender
{
    
    UIPasteboard *pasteBoard = [UIPasteboard generalPasteboard];
    
    if (pasteBoard.string!=nil) {
        NSLog(@"%@=====",pasteBoard.string);
        
    }
    
    
}






#pragma mark - GestureRecognizerDelegate

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return NO;
    
}




-(void)longPressToDo:(UILongPressGestureRecognizer *)gesture
{
    
    if(gesture.state == UIGestureRecognizerStateBegan)
    {
        CGPoint point = [gesture locationInView:self.webView];
        
        
        NSLog(@"这里是长按");
        //add your code here
        
        
        
    }
}


-(void)btn_Refresh_Method
{
    
    
    
    NSString *str_webView_title = [self.webView stringByEvaluatingJavaScriptFromString:@"document.title"];
    
    NSString *str_webView1_title = [self.webView1 stringByEvaluatingJavaScriptFromString:@"document.title"];
    NSString *str_webView2_title = [self.webView2 stringByEvaluatingJavaScriptFromString:@"document.title"];
    NSString *str_webView3_title = [self.webView3 stringByEvaluatingJavaScriptFromString:@"document.title"];
    NSString *str_webView4_title = [self.webView4 stringByEvaluatingJavaScriptFromString:@"document.title"];
    NSString *str_webView5_title = [self.webView5 stringByEvaluatingJavaScriptFromString:@"document.title"];
    NSString *str_webView6_title = [self.webView6 stringByEvaluatingJavaScriptFromString:@"document.title"];
    NSString *str_webView7_title = [self.webView7 stringByEvaluatingJavaScriptFromString:@"document.title"];
    NSString *str_webView8_title = [self.webView8 stringByEvaluatingJavaScriptFromString:@"document.title"];
    NSString *str_webView9_title = [self.webView9 stringByEvaluatingJavaScriptFromString:@"document.title"];
    
    
    
    UIActionSheet *styleAlert = [[UIActionSheet alloc] initWithTitle:@"Choose a UIBarStyle:"
                                                            delegate:self cancelButtonTitle:@"Cancel"
                                              destructiveButtonTitle:[NSString stringWithFormat:@"%@%@",str_webView_title,@"webView"]
                                                   otherButtonTitles:
                                 [NSString stringWithFormat:@"%@%@",str_webView1_title,@"webView1"],
                                 [NSString stringWithFormat:@"%@%@",str_webView2_title,@"webView2"],
                                 [NSString stringWithFormat:@"%@%@",str_webView3_title,@"webView3"],
                                 [NSString stringWithFormat:@"%@%@",str_webView4_title,@"webView4"],
                                 [NSString stringWithFormat:@"%@%@",str_webView5_title,@"webView5"],
                                 [NSString stringWithFormat:@"%@%@",str_webView6_title,@"webView6"],
                                 [NSString stringWithFormat:@"%@%@",str_webView7_title,@"webView7"],
                                 [NSString stringWithFormat:@"%@%@",str_webView8_title,@"webView8"],
                                 [NSString stringWithFormat:@"%@%@",str_webView9_title,@"webView9"],nil
                                 ];
    
    
    
    
    // use the same style as the nav bar
    styleAlert.actionSheetStyle = self.navigationController.navigationBar.barStyle;
 
    
    
    
    //获取所有键的集合
    NSArray *keys_selection = [mus_dic_webView allKeys];
    
    //获取所有值的集合
    
    NSArray *values_dic = [mus_dic_webView allValues];
    
    
    NSLog(@"暂停一下");
    
    
    
  
    
    
    //新建actionsheet来设置弹出页面
    
    UIActionSheet *styleAlert_For_musDic = [[UIActionSheet alloc]initWithTitle:@"后台页面" delegate:self cancelButtonTitle:@"cancel" destructiveButtonTitle:@"拉勾主页" otherButtonTitles:nil, nil];
    
    
    
    
    NSString *str_title_actionFeet_show = nil;
    
    for (NSString *str_selection in keys_selection) {
        
        str_title_actionFeet_show = str_selection;
        
        str_title_actionFeet_show = [str_title_actionFeet_show stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        
        [styleAlert_For_musDic addButtonWithTitle:str_title_actionFeet_show];
        
    }
    
    
    
    NSArray* arr =  styleAlert_For_musDic.subviews;
    
    
    UIButton *btn_bjsc_webview = [[UIButton alloc] initWithFrame:CGRectMake(20, 20, 20, 20)];
    [btn_bjsc_webview setTitle:@"btn" forState:UIControlStateNormal];
    [btn_bjsc_webview setBackgroundColor:[UIColor purpleColor]];
    
    [btn_bjsc_webview addTarget:self action:@selector(btn_bjsc_webView_Method) forControlEvents:UIControlEventTouchUpInside];
    
    [styleAlert_For_musDic addSubview:btn_bjsc_webview];
    

    
    
    
    UIWindow* window = [[[UIApplication sharedApplication] delegate] window];
    
    
    
    if ([window.subviews containsObject:self.view])
    {
        [styleAlert_For_musDic showInView:self.view];
        
  
        
        
    }
    else
    {
        [styleAlert_For_musDic showInView:window];
    }
    
    
    
}

-(void)btn_bjsc_webView_Method
{
    bool_scym = YES;
}





-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
    
    
    UIAlertView *alert_Sheet = [[UIAlertView alloc]initWithTitle:@"string" message:@"string" delegate:self cancelButtonTitle:@"string" otherButtonTitles:[NSString stringWithFormat:@"%d",buttonIndex], nil];//Titles of additional buttons to add to the receiver, terminated with nil.

    
    
    NSString *str_webView = [NSString stringWithFormat:@"%@%@",@"webView",[NSString stringWithFormat:@"%d",buttonIndex]];
    

    
    
    
    if (bool_scym == YES)
    {
        
        if (buttonIndex > 1)
        {
            NSArray *keys = [mus_dic_webView allKeys];
            [mus_dic_webView removeObjectForKey:keys[buttonIndex - 2]];
            [self.view insertSubview:webView belowSubview:btn_jp_top];
            
            
        }
        else
        {
            UIAlertView *alert_sczy = [[UIAlertView alloc]initWithTitle:@"警告" message:@"不能删除主页哦亲" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:nil, nil];
            [alert_sczy show];
            
        }
        
    }
    else
    {
        
        i_webView_actionFeet = buttonIndex;
        
        
        if (buttonIndex == 0)
        {
            
            [self.view insertSubview:webView belowSubview:btn_jp_top];
            
            
            
        }
        else if(buttonIndex > 1)
        {
            
            
            //musDic添加webView
            
            if (mus_dic_webView.count != 0) {
                //防止空串的异常
                
                NSArray *values = [mus_dic_webView allValues];

                
                NSDictionary *dic_values = values[buttonIndex - 2];
                
                UIWebView *webView_mus_dic = [[UIWebView alloc]initWithFrame:CGRectMake(0, 0, 320, 420)];
                NSArray *arr_webView_musDic = [dic_values allValues];
                
                webView_mus_dic = (UIWebView*)arr_webView_musDic[0];
                
                [self.view insertSubview:webView_mus_dic belowSubview:btn_jp_top];
                
                
                
            }
            
            
        }
        
        
        
    }
    
    
    bool_scym = NO;
    
    
    
}

-(void)btn_Show_Favour_JobInfo_method
{
    
    [self readPlist];
    
    
    
    if ([self.tableview window]!=nil) {
        [self.tableview removeFromSuperview];
    }
    else
    {
        [self.tableview setFrame:CGRectMake(0, 0, 320, 320)];
        [self.view addSubview:self.tableview];
        

        
        
        [self.tableview reloadData];
    }
    
    
}

-(void)readPlist
{
    
    
    //建立文件管理
    
    NSFileManager *fm = [NSFileManager defaultManager];
    
    //找到Documents文件所在的路径
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    //取得第一个Documents文件夹的路径
    
    NSString *filePath = [path objectAtIndex:0];
    
    //把TestPlist文件加入
    
    NSString *plistPath = [filePath stringByAppendingPathComponent:@"test.plist"];
    
    BOOL bl_file_Exist =  [fm fileExistsAtPath:plistPath];
    
    //开始创建文件
    
    if (!bl_file_Exist)
    {
        [fm createFileAtPath:plistPath contents:nil attributes:nil];
        
    }
    
    
    
    
    self._contDic_favour_jobInfo = [[NSMutableDictionary alloc]initWithContentsOfFile:plistPath];
    
    
    
    if (self._contDic_favour_jobInfo == nil) {
        self._contDic_favour_jobInfo = [[NSMutableDictionary alloc]init];
    }
    
}

-(void)btn_save_Favour_JobInfo_method
{
    
    
    
    
    UIAlertView *alert_For_SaveJobInfo = [[UIAlertView alloc]initWithTitle:@"警告" message:@"缓存前请点击下缓存页面的sheet，不然对应取消按钮会报错,shirt" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    alert_For_SaveJobInfo.tag = 102;
    
    [alert_For_SaveJobInfo show
     ];
    
    
}



-(void)save_JobInfo_Warn_Method
{

    

    
    
    //全局通用变量的处理也在这个范畴内
    

    
    
    //使用mus_dic后的新方法实现保存
    

    
    if (i_webView_actionFeet != 1)
    {
        
        if (i_webView_actionFeet == 0)
        {
            AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
            appDelegate.bl_ForSave = YES;
        
            
            
            appDelegate.str_For_CacheFileName =  [[[self.webView request] URL ]absoluteString ];
        }
        else
        {
            
            NSArray *values = [mus_dic_webView allValues];
            UIWebView *webView_For_Goback;
            NSDictionary *dic_webView = values[i_webView_actionFeet - 2];
            NSArray *values_For_Sub_WebView = [dic_webView allValues];
            
            webView_For_Goback = values_For_Sub_WebView[0];
            
            
            NSArray *keys_For_Sub_WebView = [dic_webView allKeys];
            
            
            AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
            appDelegate.bl_ForSave = YES;
            
            
            appDelegate.str_For_CacheFileName =  [[[webView_For_Goback request] URL ]absoluteString ];
            

            
            str_link_ForSave = keys_For_Sub_WebView[0];
            
        }
        
        
    }
    
    
    
    
    

    
    [self checkPlist_for_Exit];
    
    
    

    
}



-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
    
    if (alertView.tag == 100)
    {
        
        AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
        appDelegate.bl_ForSave = NO;

        
        
    }
    
    
    if (alertView.tag == 101)
    {
        
        
        if (buttonIndex == 1) {
            
            UITextField *tf=[alertView textFieldAtIndex:0];

            
            
            if (i_webView_actionFeet != 1)
            {
                
                if (i_webView_actionFeet == 0)
                {
                    NSString *pageSource1 = [self.webView  stringByEvaluatingJavaScriptFromString:@"document.title"];
                    
                    self.str_linkName_ForSave = pageSource1;
                }
                else
                {
                    
                    NSArray *values = [mus_dic_webView allValues];
                    UIWebView *webView_For_Goback;
                    NSDictionary *dic_webView = values[i_webView_actionFeet - 2];
                    NSArray *values_For_Sub_WebView = [dic_webView allValues];
                    
                    webView_For_Goback = values_For_Sub_WebView[0];
                    
                    NSString *pageSource1 = [webView_For_Goback  stringByEvaluatingJavaScriptFromString:@"document.title"];
                    
                    self.str_linkName_ForSave = pageSource1;

                    
                }
                
                
            }
            //
            

            
            
            NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:self.str_link_ForSave]];
            //    [self.view addSubview:webView1];
            
            [self.webView9 loadRequest:request];
            
            
            [self writePlist];
        }
        else
        {
            AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
            appDelegate.bl_ForSave = NO;
            
        }
        
    }
    
    
    if (alertView.tag == 102) {
        
        if (buttonIndex == 1) {
            
            [self save_JobInfo_Warn_Method];

        }
        
    }
    
    
    
}


-(void)checkPlist_for_Exit
{
    
    
    //建立文件管理
    
    NSFileManager *fm = [NSFileManager defaultManager];
    
    //找到Documents文件所在的路径
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    //取得第一个Documents文件夹的路径
    
    NSString *filePath = [path objectAtIndex:0];
    
    //把TestPlist文件加入
    
    NSString *plistPath = [filePath stringByAppendingPathComponent:@"test.plist"];
    
    BOOL bl_file_Exist =  [fm fileExistsAtPath:plistPath];
    
    //开始创建文件
    
    if (!bl_file_Exist)
    {
        [fm createFileAtPath:plistPath contents:nil attributes:nil];
        
    }
    
    NSMutableDictionary *plistDict = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    
    
    if (plistDict == nil) {
        plistDict = [[NSMutableDictionary alloc]init];
    }
    
    if ([plistDict objectForKey:self.str_link_ForSave])
        
    {
        UIAlertView *alert_Show = [[UIAlertView alloc]initWithTitle:@"提示" message:@"亲，收藏已存在哦" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        
        
        [alert_Show show];
        
        
    }
    else
    {
        
    
        UIAlertView *alert_link_name = [[UIAlertView alloc]initWithTitle:@"收藏" message:@"收藏命名" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        alert_link_name.alertViewStyle = UIAlertViewStylePlainTextInput;
        alert_link_name.tag = 101;
        
        UITextField *tf=[alert_link_name textFieldAtIndex:0];
        
        tf.text = @"自动获取标题，不用输入";
        
        [alert_link_name show];
        
//        [alert_link_name dismissWithClickedButtonIndex:1 animated:NO];
      
        
    }
    
  

    
    
}

-(void)writePlist
{
    
    
    //建立文件管理
    
    NSFileManager *fm = [NSFileManager defaultManager];
    
    //找到Documents文件所在的路径
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    //取得第一个Documents文件夹的路径
    
    NSString *filePath = [path objectAtIndex:0];
    
    //把TestPlist文件加入
    
    NSString *plistPath = [filePath stringByAppendingPathComponent:@"test.plist"];
    
    BOOL bl_file_Exist =  [fm fileExistsAtPath:plistPath];
    
    //开始创建文件
    
    if (!bl_file_Exist)
    {
        [fm createFileAtPath:plistPath contents:nil attributes:nil];
        
    }
    
    NSMutableDictionary *plistDict = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    
    
    if (plistDict == nil) {
        plistDict = [[NSMutableDictionary alloc]init];
    }
    
    [plistDict setObject:self.str_linkName_ForSave forKey:self.str_link_ForSave];
    
    if ([plistDict writeToFile:plistPath atomically: YES])
    {
        
        
        NSLog(@"writePlist success");
        
        UIAlertView *alert_Show = [[UIAlertView alloc]initWithTitle:@"提示" message:@"亲，收藏保存成功哦" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        alert_Show.tag = 100;
        
        

        
        
        double delayInSeconds = 7.0;
        
        
        __block ViewController* bself = self;
        
        
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
        
        
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
            
            
            [alert_Show show];
            
            
        });

        
        

    }
    else
    {
        NSLog(@"writePlist fail");
        
    }
    
    
}


-(void)replace_mark
{
    
    
    //建立文件管理
    
    NSFileManager *fm = [NSFileManager defaultManager];
    
    //找到Documents文件所在的路径
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    //取得第一个Documents文件夹的路径
    
    NSString *filePath = [path objectAtIndex:0];
    
    //把TestPlist文件加入
    
    NSString *plistPath = [filePath stringByAppendingPathComponent:@"test.plist"];
    
    BOOL bl_file_Exist =  [fm fileExistsAtPath:plistPath];
    
    //开始创建文件
    
    if (!bl_file_Exist) {
        [fm createFileAtPath:plistPath contents:nil attributes:nil];
        
    }
    
    //删除文件
    
    
    
    //创建一个字典
    
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"zhangsan",@"1",@"lisi",@"2", nil];
    
    //把数据写入plist文件
    
    if ([dic writeToFile:plistPath atomically:YES]) {
        NSLog(@"writePlist success");
        
    }
    else
    {
        NSLog(@"writePlist fail");
        
        
    }
    
    //    读取plist中的数据，形式如下：
    
    //读取plist文件，首先需要把plist文件读取到字典中
    
    NSDictionary *dic2 = [NSDictionary dictionaryWithContentsOfFile:plistPath];
    
    //打印数据
    
    NSLog(@"key1 is %@",[dic2 valueForKey:@"1"]);
    
    NSLog(@"dic is %@",dic2);
    
    
    
    //    关于plist中的array读写，代码如下：
    
    //把TestPlist文件加入
    
    filePath = [path objectAtIndex:0];
    
    NSString *plistPaths = [filePath stringByAppendingPathComponent:@"tests.plist"];
    
    
    bl_file_Exist =  [fm fileExistsAtPath:plistPath];
    
    //开始创建文件
    
    if (!bl_file_Exist) {
        [fm createFileAtPath:plistPath contents:nil attributes:nil];
        
    }
    
    
    //创建一个数组
    
    NSArray *arr = [[NSArray alloc] initWithObjects:@"1",@"2",@"3",@"4", nil];
    
    //写入
    
    
    if ([arr writeToFile:plistPaths atomically:YES]) {
        NSLog(@"writePlist success");
        
    }
    else
    {
        NSLog(@"writePlist fail");
        
        
    }
    //读取
    
    NSArray *arr1 = [NSArray arrayWithContentsOfFile:plistPaths];
    
    //打印
    
    NSLog(@"arr1is %@",arr1);
}



-(void)btn_goBK_method
{
    

    
    
    if (i_webView_actionFeet != 1)
    {
        
        if (i_webView_actionFeet == 0)
        {
            [self.webView goBack];
        }
        else
        {
            
            NSArray *values = [mus_dic_webView allValues];
            UIWebView *webView_For_Goback;
            NSDictionary *dic_webView = values[i_webView_actionFeet - 2];
            NSArray *values_For_Sub_WebView = [dic_webView allValues];
            
            webView_For_Goback = values_For_Sub_WebView[0];
            [webView_For_Goback goBack];
        }
        
        
    }
    
    
}

-(void)btn_jp_tp_method
{
    
    
    [NSURLProtocol unregisterClass:[RNCachingURLProtocol class]];

    
    
    
    NSLog(@"延缓");
    
    
    NSString *pageSource1 ;
    
    NSString *js1 ;
    
    js1 = @"document.getElementById('header').scrollIntoView()";
    

    
    
    
    
    
    //使用mus_dic后的新方法实现jp
    
    if (i_webView_actionFeet != 1)
    {
        
        if (i_webView_actionFeet == 0)
        {
            pageSource1 = [webView  stringByEvaluatingJavaScriptFromString:js1];
        }
        else
        {
            
            NSArray *values = [mus_dic_webView allValues];
            UIWebView *webView_For_Goback;
            NSDictionary *dic_webView = values[i_webView_actionFeet - 2];
            NSArray *values_For_Sub_WebView = [dic_webView allValues];
            
            webView_For_Goback = values_For_Sub_WebView[0];

            
            
            pageSource1 = [webView_For_Goback  stringByEvaluatingJavaScriptFromString:js1];
        }
        
        
    }
    
    
    
    
}

-(void)btn_jp_md_method
{
    
    NSString *pageSource1;
    
    
    NSString *js1 ;
    
    js1 = @"document.getElementsByClassName('detail')[0].scrollIntoView()";
    

    
    
    //mus_dic实现新跳转mid
    
    if (i_webView_actionFeet != 1)
    {
        
        if (i_webView_actionFeet == 0)
        {
            pageSource1 = [webView  stringByEvaluatingJavaScriptFromString:js1];
        }
        else
        {
            
            NSArray *values = [mus_dic_webView allValues];
            UIWebView *webView_For_Goback;
            NSDictionary *dic_webView = values[i_webView_actionFeet - 2];
            NSArray *values_For_Sub_WebView = [dic_webView allValues];
            
            webView_For_Goback = values_For_Sub_WebView[0];
            

            
            
            pageSource1 = [webView_For_Goback  stringByEvaluatingJavaScriptFromString:js1];
        }
        
        
    }

    
    
}

-(void)btn_jp_bot_method
{
    
    
    
    NSString *js1;
    
    
    NSString *pageSource1;
    
    
    
    js1 = @"document.getElementsByClassName('positioneval')[0].scrollIntoView()"; //class行
    

    
    
    //mus_dic实现新跳转bottom
    
    if (i_webView_actionFeet != 1)
    {
        
        if (i_webView_actionFeet == 0)
        {
            pageSource1 = [webView  stringByEvaluatingJavaScriptFromString:js1];
        }
        else
        {
            
            NSArray *values = [mus_dic_webView allValues];
            UIWebView *webView_For_Goback;
            NSDictionary *dic_webView = values[i_webView_actionFeet - 2];
            NSArray *values_For_Sub_WebView = [dic_webView allValues];
            
            webView_For_Goback = values_For_Sub_WebView[0];
            

            
            pageSource1 = [webView_For_Goback  stringByEvaluatingJavaScriptFromString:js1];
        }
        
        
    }
    
    
    
    
}




- (void)didReceiveMemoryWarning
{
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    
    

    
    NSString *js1 = @"document.getElementsByTagName('body')[0].innerHTML;";
    
    
    

    
    
    
    //使用mus_dic后的新方法实现后退
    
    if (i_webView_actionFeet != 1)
    {
        
        if (i_webView_actionFeet == 0)
        {
            NSString *pageSource1 = [self.webView  stringByEvaluatingJavaScriptFromString:js1];
            
            
            self.str_link_ForSave = self.webView.request.URL.absoluteString;
            
            
        }
        else
        {
            
            NSArray *values = [mus_dic_webView allValues];
            UIWebView *webView_For_Goback;
            NSDictionary *dic_webView = values[i_webView_actionFeet - 2];
            NSArray *values_For_Sub_WebView = [dic_webView allValues];
            
            webView_For_Goback = values_For_Sub_WebView[0];
           
            NSString *pageSource1 = [webView_For_Goback  stringByEvaluatingJavaScriptFromString:js1];
            

            
            self.str_link_ForSave = webView_For_Goback.request.URL.absoluteString;
            
        }
        
        
    }
    

    
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    appDelegate.str_For_CacheFileName = self.str_link_ForSave;
}





#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    
    return _contDic_favour_jobInfo.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    
    return 1;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell;
    cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    int i = indexPath.row;
    
    if (cell==nil)
    {
        
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        
    }
    
    
    
    
    NSString *str_link = nil;
    
    
    NSArray *arr_link ;
    
    
    arr_link = [_contDic_favour_jobInfo allKeys];
    
    
    NSArray* arr_link_Name = [_contDic_favour_jobInfo allValues];
    
    
    
    
    
    str_link = [arr_link objectAtIndex:i];
    
    cell.detailTextLabel.text = str_link;
    
    str_link = [arr_link_Name objectAtIndex:i];
    
    cell.textLabel.text = str_link;
    
    
    
    
    
    
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    return 60;
    
    
    
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return TRUE;
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}

- (void)tableView:(UITableView*)tableView willBeginEditingRowAtIndexPath:(NSIndexPath *)indexPath
{
    int i = indexPath.row;
    
    NSLog(@"i");
}



- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    

    
    
    if (editingStyle ==UITableViewCellEditingStyleDelete) {//如果编辑样式为删除样式
        if (indexPath.row<[self._contDic_favour_jobInfo count]) {
            
            UITableViewCell *cell = [tableview cellForRowAtIndexPath:indexPath];
            
            AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
            appDelegate.str_For_CacheFileName = cell.detailTextLabel.text;
            
            
            int i = indexPath.row;
            
            
            NSArray *arr_link  = [_contDic_favour_jobInfo allKeys];
            
            
            
            [self._contDic_favour_jobInfo removeObjectForKey:[arr_link objectAtIndex:i]];
            
            
            

            
            
            //建立文件管理
            
            NSFileManager *fm = [NSFileManager defaultManager];
            
            //找到Documents文件所在的路径
            
            NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
            
            //取得第一个Documents文件夹的路径
            
            NSString *filePath = [path objectAtIndex:0];
            
            //把TestPlist文件加入
            
            NSString *plistPath = [filePath stringByAppendingPathComponent:@"test.plist"];
            
            BOOL bl_file_Exist =  [fm fileExistsAtPath:plistPath];
            
            //开始创建文件
            
            if (!bl_file_Exist)
            {
                [fm createFileAtPath:plistPath contents:nil attributes:nil];
                
            }
            
            NSMutableDictionary *plistDict = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
            
            
            if (plistDict == nil) {
                plistDict = [[NSMutableDictionary alloc]init];
            }
            
            plistDict = self._contDic_favour_jobInfo;
            
            
            if ([plistDict writeToFile:plistPath atomically: YES])
            {
                
                
                
                NSLog(@"writePlist success");
                
                
                NSString *filePath_Cache = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
                
                NSString *folder = [filePath_Cache stringByAppendingPathComponent:appDelegate.str_For_CacheFileName];
                
                if ([fm fileExistsAtPath:folder]) {
                    [fm removeItemAtPath:folder error:nil];
                }
                
                UIAlertView *alert_Show = [[UIAlertView alloc]initWithTitle:@"提示" message:@"亲，收藏删除成功哦" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
                
                
                [alert_Show show];
                
                

                
                
                
                
            }
            else
            {
                NSLog(@"writePlist fail");
                
            }
            
            

            
            [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationLeft];
            
            
        }
    }
    
}



#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [NSURLProtocol registerClass:[RNCachingURLProtocol class]];
    
    
    
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:cell.detailTextLabel.text]];
    [self.tableview removeFromSuperview];
    
    

    
    
    //mus_dic实现新的从tableview打开收藏
    if (i_webView_actionFeet != 1)
    {
  
        
        if (i_webView_actionFeet == 0)
        {
            
            AppDelegate *delegate = [[UIApplication sharedApplication]delegate];
            delegate.str_For_CacheFileName = [request URL].absoluteString;
            [self.webView loadRequest:request];
        }
        else
        {
            
            NSArray *values = [mus_dic_webView allValues];
            UIWebView *webView_For_Goback;
            NSDictionary *dic_webView = values[i_webView_actionFeet - 2];
            NSArray *values_For_Sub_WebView = [dic_webView allValues];
            
            webView_For_Goback = values_For_Sub_WebView[0];
            [webView_For_Goback loadRequest:request];
        }
        
        
    }

    
    
    
}



@end
