//
//  ViewController.m
//  MessageTransferExample
//
//  Created by dongshangxian on 16/4/9.
//  Copyright © 2016年 Sankuai. All rights reserved.
//

#import "SXFatherClassPage.h"

@interface SXFatherClassPage ()

@end

@implementation SXFatherClassPage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    // 需要在父类的delloc调用此方法，以省略之后所有的移除操作
    [[NSNotificationCenter defaultCenter]postNotificationName:@"SXMsgRemoveObserver" object:self];
}

@end
