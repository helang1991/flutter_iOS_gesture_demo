//
//  BBViewController.m
//  WeValid
//
//  Created by helang on 2019/7/8.
//  Copyright © 2019 helang. All rights reserved.
//

#import "BBViewController.h"

@interface BBViewController ()

@end

@implementation BBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    // Do any additional setup after loading the view.

    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 500, 500)];
    label.font = [UIFont systemFontOfSize:20];
    label.text = @"I am iOS Native ViewController\n try to click me";
    [self.view addSubview:label];
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
