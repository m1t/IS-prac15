//
//  ViewController.m
//  IS-prac15
//
//  Created by Chida Mitsuhiro on 14/01/25.
//  Copyright (c) 2014年 Chida Mitsuhiro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)prac15_3:(id)sender;
- (IBAction)prac15_4:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)prac15_3:(id)sender
{
    UIAlertView *alert =[[UIAlertView alloc] initWithTitle:@"選んでください"
                                                   message:@"コース"
                                                  delegate:self
                                         cancelButtonTitle:@"キャンセル"
                                         otherButtonTitles:@"Webアプリ開発Ⅰコース",@"Webアプリ開発Ⅱコース",@"iOSアプリ開発コース",nil];
    [alert show];
}

- (IBAction)prac15_4:(id)sender
{
    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:@"コースを選んでください"
                                                       delegate:self
                                              cancelButtonTitle:@"キャンセル"
                                         destructiveButtonTitle:@"iOSアプリ開発コース"
                                              otherButtonTitles:@"Webアプリ開発Ⅰコース",@"Webアプリ開発Ⅱコース", nil];

    [sheet showInView:self.view];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"index=%d %@",buttonIndex,[alertView buttonTitleAtIndex:buttonIndex]);
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"index=%d %@",buttonIndex,[actionSheet buttonTitleAtIndex:buttonIndex]);
}

@end
