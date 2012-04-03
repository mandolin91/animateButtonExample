/**     
 @class viewController
 @date 2012.3.22
 @author mandolin
 @brief 애니메이션 이미지 버튼 테스트를 위한 viewController(세가지 예제를 포함하고 있으며, IB 사용)
 */

//
//  ViewController.h
//  animateButtonExample
//
//  Created by 김 동욱 on 12. 3. 22..
//  Copyright (c) 2012년 KTH(주) iOS팀. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIAnimateButton.h"

@interface ViewController : UIViewController
{
    /** 예제1용 버튼 : UIImageView를 버튼에 subview로 붙여주고 UIImageView를 애니메이션 처리함 */
    IBOutlet UIButton *btnCustom;
    UIImageView* animationView;
    /** 예제2용 버튼 : NSTimer를 이용하여, 주기적으로 Button의 이미지를 교체 */
    IBOutlet UIButton *btnCustom2;
    int nButtonImageNum;
    /** 예제3용 버튼 : UIButton을 subclass화한 UIAnimateButton을 사용함 
        예제2에 비해서 이미지 갯수 및 타임 인터벌을 지정하게 하여 범용성 추가(과연 ??) */
    IBOutlet UIAnimateButton *btnCustom3;
}

- (IBAction)btnClickCustom:(id)sender;
- (IBAction)btnTouchDownCustom:(id)sender;
- (IBAction)btnTouchExitCustom:(id)sender;

- (IBAction)btnClickCustom2:(id)sender;

@end
