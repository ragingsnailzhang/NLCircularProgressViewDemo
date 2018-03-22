//
//  ViewController.m
//  NLCircularProgressViewDemo
//
//  Created by yj_zhang on 2018/3/22.
//  Copyright © 2018年 yj_zhang. All rights reserved.
//

#import "ViewController.h"
#import "NLCycleView.h"
@interface ViewController ()

@property(nonatomic,strong)NLCycleView *progressView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NLCycleView *progressView = [[NLCycleView alloc]initWithFrame:CGRectMake(0, 0, 80, 80)];
    progressView.center = self.view.center;
    progressView.fontSize = 10;
    progressView.fontColor = [UIColor blackColor];
    progressView.strokeColor = [UIColor blueColor];
    progressView.progress = 0.0f;
    _progressView = progressView;
    [self.view addSubview:progressView];
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    static CGFloat i = 0.0f;
    i += 0.05f;
    _progressView.progress = i;
}


@end
