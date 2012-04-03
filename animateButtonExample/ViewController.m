//
//  ViewController.m
//  animateButtonExample
//
//  Created by 김 동욱 on 12. 3. 22..
//  Copyright (c) 2012년 KTH(주) iOS팀. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 1st
    animationView = [[UIImageView alloc] initWithFrame:CGRectMake(0.0,0.0,btnCustom.frame.size.width,btnCustom.frame.size.height)];
    
    
    NSMutableArray* imageArray = [[NSMutableArray alloc] initWithCapacity:2];
    
    [imageArray addObject:[UIImage imageNamed: @"main_anibtn_1"]];
    [imageArray addObject:[UIImage imageNamed: @"main_anibtn_2"]];
    
    animationView.animationImages = [NSArray arrayWithArray:imageArray];
    [animationView setAnimationDuration:1.0];
    animationView.animationRepeatCount = 0;
    
    [btnCustom addSubview: animationView];
    
    [animationView startAnimating];
	
    // 2nd
    nButtonImageNum = 1;
    [NSTimer scheduledTimerWithTimeInterval:0.5 
                                     target:self 
                                   selector:@selector(changeImage:) 
                                   userInfo:nil
                                    repeats:YES];
    
    NSArray* animateImage = [NSArray arrayWithObjects:@"main_anibtn_1",@"main_anibtn_2", nil];
    [btnCustom3 startAnimationWithImageArray:animateImage withTimeInterval:0.5];
}

- (void) changeImage:(id)sender
{
    if (nButtonImageNum == 1)
    {
        nButtonImageNum = 2;
        [btnCustom2 setImage:[UIImage imageNamed: @"main_anibtn_2"] forState:UIControlStateNormal];
    } else {
        nButtonImageNum = 1;
        [btnCustom2 setImage:[UIImage imageNamed: @"main_anibtn_1"] forState:UIControlStateNormal];
    }
}

- (void)viewDidUnload
{
    [animationView release];
    [btnCustom release];
    btnCustom = nil;
    [btnCustom2 release];
    btnCustom2 = nil;
    [btnCustom3 release];
    btnCustom3 = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [btnCustom release];
    [btnCustom2 release];
    [btnCustom3 release];
    [super dealloc];
}

- (IBAction)btnClickCustom:(id)sender {
    UIAlertView* altView = [[UIAlertView alloc] initWithTitle:@"알림" message:@"클릭!!!" delegate:nil cancelButtonTitle:@"확인" otherButtonTitles:nil];
    [altView show];
    [altView release];
    animationView.hidden=NO;
}

- (IBAction)btnTouchDownCustom:(id)sender {
    animationView.hidden = YES;
}

- (IBAction)btnTouchExitCustom:(id)sender {
    animationView.hidden = NO;
}

- (IBAction)btnClickCustom2:(id)sender {
    UIAlertView* altView = [[UIAlertView alloc] initWithTitle:@"알림2" message:@"클릭!!!" delegate:nil cancelButtonTitle:@"확인" otherButtonTitles:nil];
    [altView show];
    [altView release];
}
@end
