//
//  AppDelegate.m
//  JJSAssignement4.7
//
//  Created by jsanto on 3/16/15.
//  Copyright (c) 2015 Jason Santo. All rights reserved.
//

#import "WebDetailViewController.h"
#import "MainTableViewController.h"
#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    
    MainTableViewController *mainTableViewController = [[MainTableViewController alloc] init];
    
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:mainTableViewController];
    
    self.window.rootViewController = navController;
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
