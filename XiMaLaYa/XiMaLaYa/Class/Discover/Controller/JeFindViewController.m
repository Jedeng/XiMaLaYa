//
//  JeFindViewController.m
//  XiMaLaYa
//
//  Created by qinting on 2018/4/27.
//  Copyright © 2018年 Jedeng. All rights reserved.
//

#import "JeFindViewController.h"
#import "QTLiveViewController.h"
#import "QTAnchorViewController.h"
#import "QTRankingViewController.h"
#import "QTHomePageViewController.h"
#import "QTCategoryViewController.h"

@interface JeFindViewController ()

@end

@implementation JeFindViewController

+(UINavigationController *)defaultFindUINavigationController
{
    static UINavigationController *navi = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        JeFindViewController *findVC = [[JeFindViewController alloc] initWithViewControllerClasses:[self ViewControllerClasses] andTheirTitles:@[@"推荐",@"分类",@"直播",@"榜单",@"主播"]];
        findVC.menuViewStyle = WMMenuViewStyleLine;
        findVC.progressColor = [UIColor redColor];
        findVC.progressHeight = 3.5;
        navi = [[UINavigationController alloc] initWithRootViewController:findVC];
    });
    
    return navi;
    
}
+ (NSArray *)ViewControllerClasses{
    return @[ [QTHomePageViewController class],[QTCategoryViewController class],
              [QTLiveViewController class],[QTRankingViewController class],
              [QTAnchorViewController class]
              ];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"发现";
    NSLog(@"%@",NSStringFromCGPoint(self.scrollView.contentOffset));
    self.view.backgroundColor = [UIColor lightGrayColor];
}

-(CGRect)pageController:(WMPageController *)pageController preferredFrameForMenuView:(WMMenuView *)menuView{
    return  CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, 40);
}

- (CGRect)pageController:(WMPageController *)pageController preferredFrameForContentView:(WMScrollView *)contentView{
  return  CGRectMake(0, 64+40, [UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height - 64 - 40);
}

@end
