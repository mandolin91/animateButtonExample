/**     
 @class UIAnimationButton
 @date 2012.3.23
 @author mandolin
 @brief 버튼내 이미지를 주기적으로 교체하는 이미지 버튼
 */

//
//  UIAnimateButton.h
//  animateButtonExample
//
//  Created by 김 동욱 on 12. 3. 23..
//  Copyright (c) 2012년 KTH(주) iOS팀. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAnimateButton : UIButton
{
    int nButtonImageNum;
    NSArray* imageArray;
}
/** 이미지 경로 Array를 셋팅하고 이미지를 전환할 타임인터벌 설졍, 그리고 애니메이션 시작함 */
- (void) startAnimationWithImageArray:(NSArray*)imgArray withTimeInterval:(NSTimeInterval)nTimeInterval;
/** 타이머에 의해서 호출되며, UIButton의 이미지를 계속 교체함 */
- (void) changeImage:(id)sender;
@end
