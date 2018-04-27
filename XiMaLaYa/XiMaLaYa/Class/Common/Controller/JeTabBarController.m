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
    [self setupChildController:findNav imageName:@"" selectedImage:@""];
    
    
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
