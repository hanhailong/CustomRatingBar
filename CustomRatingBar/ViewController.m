//
//  ViewController.m
//  CustomRatingBar
//
//  Created by HailongHan on 15/7/3.
//  Copyright (c) 2015年 HHL. All rights reserved.
//

#import "ViewController.h"
#import "RatingBar.h"

@interface ViewController ()<RatingBarDelegate>

@property (nonatomic,strong) UILabel *mLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupViews];
}

#pragma mark - 初始化view
- (void)setupViews{
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGFloat width = 200;
    CGFloat height = 50;
    CGFloat x = (self.view.bounds.size.width - width)*0.5;
    
    RatingBar *ratingBar = [[RatingBar alloc] initWithFrame:CGRectMake(x, 100, width, height)];
    //添加到view中
    [self.view addSubview:ratingBar];
    
    //是否是指示器
    ratingBar.isIndicator = NO;
    
    [ratingBar setImageDeselected:@"ratingbar_unselected" halfSelected:nil fullSelected:@"ratingbar_selected" andDelegate:self];
    
    //显示结果的UILabel
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(x, 200, width, height)];
    [self.view addSubview:label];
    self.mLabel = label;
}

#pragma mark - RatingBar delegate
- (void)ratingChanged:(float)newRating{
    self.mLabel.text = [NSString stringWithFormat:@"评分条的当前结果为:%.0f",newRating];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
