//
//  JeTabBarController.m
//  XiMaLaYa
//
//  Created by qinting on 2018/4/27.
//  Copyright © 2018年 Jedeng. All rights reserved.
//

#import "JeTabBarController.h"
#import "JeMeViewController.h"
#import "JeSoundViewController.h"
#import "JeFindViewController.h"
#import "JeDownloadViewController.h"

@interface JeTabBarController ()

@end

@implementation JeTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    UINavigationController *findNav = [JeFindViewController defaultFindUINavigationController];
    [self setupChildController:findNav imageName:@"tabbar_find_n" selectedImage:@"tabbar_find_h"];
    
    UIViewController *soundVc = [JeSoundViewController defaultSoundViewController];
    [self setupChildController:soundVc imageName:@"tabbar_sound_n" selectedImage:@"tabbar_sound_h"];
    // 只占用空间
    UIViewController *vc = [UIViewController new];
    [self setupChildController:vc  imageName:nil selectedImage:nil];
    
    UIViewController *dlVc = [JeDownloadViewController defaultDownloadViewController];
    [self setupChildController:dlVc imageName:@"tabbar_download_n" selectedImage:@"tabbar_download_h"];
    
    JeMeViewController *meVC = [[JeMeViewController alloc]init];
    [self setupChildController:meVC imageName:@"tabbar_me_n" selectedImage:@"tabbar_me_h"];
    // 设置tabbar的背景图
    self.tabBar.backgroundImage = [UIImage imageNamed:@"tabbar_bg"];
}
- (void)setupChildController:(UIViewController *)vc imageName:(NSString *)imgName selectedImage:(NSString *)selectedImage
{
    vc.tabBarItem.imageInsets = UIEdgeInsetsMake(5, 0, -5, 0);
    vc.tabBarItem.image = [UIImage imageNamed:imgName];
    UIImage *image = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = image;
    [self addChildViewController:vc];
}



@end
