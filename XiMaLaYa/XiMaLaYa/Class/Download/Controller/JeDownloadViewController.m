//
//  JeDownloadViewController.m
//  XiMaLaYa
//
//  Created by qinting on 2018/4/27.
//  Copyright © 2018年 Jedeng. All rights reserved.
//

#import "JeDownloadViewController.h"
#import "QTAlbumViewController.h"
#import "QTVoiceViewController.h"
#import "QTDownloadingViewController.h"

@interface JeDownloadViewController ()

@end

@implementation JeDownloadViewController

+(instancetype)defaultDownloadViewController{
    static JeDownloadViewController *vc = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        vc = [[JeDownloadViewController alloc] initWithViewControllerClasses:[self viewControllers] andTheirTitles:@[@"专辑",@"声音",@"下载中"]];
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
    return @[[QTAlbumViewController class],[QTVoiceViewController class],[QTDownloadingViewController class]];
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
