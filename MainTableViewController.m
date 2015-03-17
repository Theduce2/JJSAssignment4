//
//  MainTableViewController.m
//  JJSAssignement4.7
//
//  Created by jsanto on 3/16/15.
//  Copyright (c) 2015 Jason Santo. All rights reserved.
//

#import "WebDetailViewController.h"
#import "MainTableViewController.h"

@interface MainTableViewController ()



@end

@implementation MainTableViewController





{
    NSArray * webSites;
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    webSites =[NSArray arrayWithObjects:@"WWW.CNN.COM",@"WWW.GOOGLE.COM",@"WWW.MSN.COM",@"WWW.CNBC.COM", @"WWW.YAHOO.COM", nil];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [webSites count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [webSites objectAtIndex:indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    WebDetailViewController *webDetailViewController = [[WebDetailViewController alloc] init];
    webDetailViewController.URL = [NSMutableString stringWithFormat: @"http://%@", [webSites objectAtIndex:[indexPath item]]];
    [self.navigationController pushViewController:webDetailViewController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end