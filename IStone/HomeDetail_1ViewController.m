//
//  HomeDetail_1ViewController.m
//  IStone
//
//  Created by 胡传业 on 14-7-23.
//  Copyright (c) 2014年 NewThread. All rights reserved.
//

#import "HomeDetail_1ViewController.h"

@interface HomeDetail_1ViewController ()

@end

@implementation HomeDetail_1ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
       
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 320, 280)];
    
    // 禁止 scrollView 的滑动
    webView.scrollView.bounces = NO;
    
    [self.view addSubview:webView];
    
    self.webView = webView;
    
//    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://icat.scuec.edu.cn/MPaper/?cat=3"]];
//    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://v.youku.com/v_show/id_XNzQ0MDU1NjMy.html?from=y1.3-tech-index3-232-10183.89992-89990.1-1"]];
    
    // 创建 视频资源路径
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"popeye" ofType:@"mp4"];
    NSURL *fileURL = [NSURL fileURLWithPath:filePath];
    
    
//    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.yixia.com/show/B9T2-r3a2jJe-WzOeGGr-Q__.htm"]];
    
    // 创建 资源请求对象
     NSURLRequest *request = [NSURLRequest requestWithURL:fileURL];
    
    // 网页视图 加载资源请求
    [self.webView loadRequest:request];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
