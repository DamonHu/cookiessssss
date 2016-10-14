//
//  ViewController.h
//  cookiessssss
//
//  Created by damon on 16/10/13.
//  Copyright © 2016年 damon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SafariServices/SafariServices.h>
@interface ViewController : UIViewController<SFSafariViewControllerDelegate>
@property (strong,nonatomic) UIWebView *myweb;
@property (strong,nonatomic) UIView *myview;
@property (strong,nonatomic) SFSafariViewController *safariView;
@end

