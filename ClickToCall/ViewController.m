//
//  ViewController.m
//  ClickToCall
//
//  Created by Nicolas Cadena on 7/07/14.
//  Copyright (c) 2014 Nicolas Cadena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

- (IBAction)clicktocall
{
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Call 3164644490" delegate:self cancelButtonTitle:@"NO" otherButtonTitles:@"YES",nil];
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex==1)
    {
        [[UIApplication sharedApplication]
         openURL:[NSURL URLWithString:@"tel://3125269991"]];
    }
    else
    {
        //Do whatever you want
    }
}
@end
