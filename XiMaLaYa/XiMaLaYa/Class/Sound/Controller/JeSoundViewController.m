//
//  JeSoundViewController.m
//  XiMaLaYa
//
//  Created by qinting on 2018/4/27.
//  Copyright © 2018年 Jedeng. All rights reserved.
//

#import "JeSoundViewController.h"
#import "QTRecommendViewController.h"
#import "QTSubscribeViewController.h"
#import "QTHistoryViewController.h"

@interface JeSoundViewController ()

@end

@implementation JeSoundViewController
+(instancetype)defaultSoundViewController{
    static JeSoundViewController *vc = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        vc = [[JeSoundViewController alloc] initWithViewControllerClasses:[self viewControllers] andTheirTitles:@[@"推荐",@"订阅",@"历史"]];
        vc.menuViewStyle = WMMenuViewStyleLine;
        vc.titleColorSelected = [UIColor orangeColor];
        vc.progressHeight = 3.5;
        vc.titleColorNormal = [UIColor purpleColor];
    });
    return vc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
}

-(CGRect)pageController:(WMPageController *)pageController preferredFrameForMenuView:(WMMenuView *)menuView{
    return  CGRectMake(0, 20, kScreenW, 45);
}

- (CGRect)pageController:(WMPageController *)pageController preferredFrameForContentView:(WMScrollView *)contentView{
    return  CGRectMake(0, 20+45, kScreenW, kScreenH - 45);
}

+(NSArray *)viewControllers{
    return @[[QTRecommendViewController class],[QTSubscribeViewController class],[QTHistoryViewController class]];
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
