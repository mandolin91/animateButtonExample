//
//  UIAnimateButton.m
//  animateButtonExample
//
//  Created by 김 동욱 on 12. 3. 23..
//  Copyright (c) 2012년 KTH(주) iOS팀. All rights reserved.
//

#import "UIAnimateButton.h"

@implementation UIAnimateButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        imageArray = nil;
    }
    return self;
}

- (void)awakeFromNib 
{
    imageArray = nil;
}

- (void) startAnimationWithImageArray:(NSArray*)imgArray withTimeInterval:(NSTimeInterval)nTimeInterval
{
    nButtonImageNum = 0;
    imageArray = [[NSArray alloc] initWithArray:imgArray];
    if ([imageArray count] == 0) return;
    [NSTimer scheduledTimerWithTimeInterval:nTimeInterval 
                                     target:self 
                                   selector:@selector(changeImage:) 
                                   userInfo:nil
                                    repeats:YES];
}

- (void) changeImage:(id)sender
{
    if ([imageArray count] == 0) return;
    nButtonImageNum++;
    if (nButtonImageNum >= [imageArray count])
        nButtonImageNum = 0;
    [self setImage:[UIImage imageNamed:[imageArray objectAtIndex:nButtonImageNum]] forState:UIControlStateNormal];

}

- (void) dealloc
{
    if (imageArray != nil)
    {
        [imageArray release];
        imageArray = nil; 
    }
    [super dealloc];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
