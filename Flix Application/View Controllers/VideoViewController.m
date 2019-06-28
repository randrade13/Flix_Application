//
//  VideoViewController.m
//  Flix Application
//
//  Created by rodrigoandrade on 6/28/19.
//  Copyright © 2019 rodrigoandrade. All rights reserved.
//

#import "VideoViewController.h"


@interface VideoViewController ()
@property (weak, nonatomic) IBOutlet WKWebView *webView;

@end

@implementation VideoViewController

NSString *urlString = @"https://www.dropbox.com/terms?mobile=1";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSURL *url = [NSURL URLWithString:@"https://api.themoviedb.org/3/movie/{movie_id}/videos?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed&language=en-US"];
    
    // Place the URL in a URL Request.
    NSURLRequest *request = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringLocalCacheData timeoutInterval:10.0];
    
    // Load Request into WebView.
    [self.webView loadRequest:request];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
