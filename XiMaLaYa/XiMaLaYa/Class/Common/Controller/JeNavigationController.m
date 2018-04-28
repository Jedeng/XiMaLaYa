//
//  JeNavigationController.m
//  XiMaLaYa
//
//  Created by qinting on 2018/4/27.
//  Copyright © 2018年 Jedeng. All rights reserved.
//

#import "JeNavigationController.h"

@interface JeNavigationController ()

@end

@implementation JeNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 防止其他ViewController的导航被遮挡, 这个类的主要作用是 PlayView
    self.navigationBarHidden = YES;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
