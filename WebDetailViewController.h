//
//  WebDetailViewController.h
//  JJSAssignement4.7
//
//  Created by jsanto on 3/16/15.
//  Copyright (c) 2015 Jason Santo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebDetailViewController : UIViewController

@property (nonatomic) NSMutableString *URL;

@property (weak, nonatomic) IBOutlet UIWebView *Display;


@end
