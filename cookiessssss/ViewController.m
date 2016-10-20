//
//  ViewController.m
//  cookiessssss
//
//  Created by damon on 16/10/13.
//  Copyright © 2016年 damon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.myweb = [[UIWebView alloc] initWithFrame:CGRectMake(100, 100, 400, 500)];
//    NSURL *url = [NSURL URLWithString:@"http://adapp.jidonggame.com/"];
//    self.myweb.delegate = self;
//    NSURLRequest *req= [NSURLRequest requestWithURL:url];
//    [self.myweb loadRequest:req];
//    [self.view addSubview:self.myweb];

    //两秒之后在加载该view更加直观
    [self performSelector:@selector(gotodiddd) withObject:nil afterDelay:2.0f];
    
}

-(void)gotodiddd
{
    self.safariView = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:@"http://adapp.jidonggame.com/"]];
    self.safariView.delegate=self;
    [self presentViewController:self.safariView animated:false completion:nil];
}

- (void)safariViewControllerDidFinish:(SFSafariViewController *)controller
{
    NSLog(@"%s",__func__);
}
- (void)safariViewController:(SFSafariViewController *)controller didCompleteInitialLoad:(BOOL)didLoadSuccessfully
{
    NSLog(@"didLoadSuccessfully:%d",didLoadSuccessfully);
    if (didLoadSuccessfully) {
        [controller dismissViewControllerAnimated:true completion:nil];
    }
}

//- (void)webViewDidFinishLoad:(UIWebView *)webView
//{
//   
//    NSHTTPCookieStorage *sharedHTTPCookieStorage = [NSHTTPCookieStorage sharedHTTPCookieStorage];
//    NSArray *cookies = [sharedHTTPCookieStorage cookiesForURL:[NSURL URLWithString:@"http://adapp.jidonggame.com/"]];
//    NSEnumerator *enumerator = [cookies objectEnumerator];
//    NSHTTPCookie *cookie;
//    while (cookie = [enumerator nextObject]) {
//        NSLog(@"COOKIE{name: %@, value: %@}", [cookie name], [cookie value]);
//        [sharedHTTPCookieStorage deleteCookie:cookie];
//    }
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
