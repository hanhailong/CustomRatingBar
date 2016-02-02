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

@property (nonatomic,strong) RatingBar *ratingBar1;
@property (nonatomic,strong) RatingBar *ratingBar2;
@property (nonatomic,strong) RatingBar *ratingBar3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupViews];
}

#pragma mark - 初始化view
- (void)setupViews{
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //RatingBar1
    CGFloat width = 200;
    CGFloat x = (self.view.bounds.size.width - width)*0.5;
    self.ratingBar1 = [[RatingBar alloc] initWithFrame:CGRectMake(x, 100, width, 50)];
    
    //添加到view中
    [self.view addSubview:self.ratingBar1];
    //是否是指示器
    self.ratingBar1.isIndicator = NO;
    [self.ratingBar1 setImageDeselected:@"iconfont-xingunselected" halfSelected:@"iconfont-banxing" fullSelected:@"iconfont-xing" andDelegate:self];
    
    //RatingBar2
    CGFloat width2 = 250;
    CGFloat x2 = (self.view.bounds.size.width - width2)*0.5;
    self.ratingBar2 = [[RatingBar alloc] initWithFrame:CGRectMake(x2, 200, width2, 50)];
    self.ratingBar2.isIndicator = NO;
    [self.ratingBar2 setImageDeselected:@"iconfont-xingunselected" halfSelected:@"iconfont-banxing" fullSelected:@"iconfont-xing" andDelegate:self];
    [self.view addSubview:self.ratingBar2];
    
    //RatingBar3
    CGFloat width3 = 300;
    CGFloat x3 = (self.view.bounds.size.width - width3)*0.5;
    self.ratingBar3 = [[RatingBar alloc] initWithFrame:CGRectMake(x3, 300, width3, 50)];
    self.ratingBar3.isIndicator = NO;
    [self.ratingBar3 setImageDeselected:@"iconfont-xingunselected" halfSelected:@"iconfont-banxing" fullSelected:@"iconfont-xing" andDelegate:self];
    [self.view addSubview:self.ratingBar3];
    
    //显示结果的UILabel
    CGFloat labelX = (self.view.bounds.size.width - 400)*0.5f;
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(labelX, 400, 400, 50)];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    self.mLabel = label;
}

#pragma mark - RatingBar delegate
-(void)ratingBar:(RatingBar *)ratingBar ratingChanged:(float)newRating{
    if (self.ratingBar1 == ratingBar) {
        self.mLabel.text = [NSString stringWithFormat:@"第一个评分条的当前结果为:%.1f",newRating];
        
    }else if (self.ratingBar2 == ratingBar){
        self.mLabel.text = [NSString stringWithFormat:@"第二个评分条的当前结果为:%.1f",newRating];
        
    }else if (self.ratingBar3 == ratingBar){
        self.mLabel.text = [NSString stringWithFormat:@"第三个评分条的当前结果为:%.1f",newRating];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
