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

    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(20, 100, 500, 200)];
    label.font = [UIFont systemFontOfSize:20];
    label.text = @"iOS Native Other ViewController";
    [self.view addSubview:label];

    UILabel * label1 = [[UILabel alloc]initWithFrame:CGRectMake(20, 200, 500, 200)];
    label1.font = [UIFont systemFontOfSize:24];
    label1.text = @"click anywhere";
    [self.view addSubview:label1];
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
