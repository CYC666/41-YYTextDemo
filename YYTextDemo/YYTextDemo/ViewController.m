//
//  ViewController.m
//  YYTextDemo
//
//  Created by CaoYicheng on 2017/2/16.
//  Copyright © 2017年 CYC. All rights reserved.
//

#import "ViewController.h"

#import "YYText.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithString:@"曹老师回复宇思:哪来那么多钱啊。\n宇思回复曹老师:你这就不懂了吧。"];
    text.yy_font = [UIFont systemFontOfSize:20];
    text.yy_color = [UIColor colorWithRed:70/255.0 green:70/255.0 blue:70/255.0 alpha:1];
    
    // 设置字体颜色
    [text yy_setColor:[UIColor colorWithRed:91/255.0 green:110/255.0 blue:148/255.0 alpha:1] range:NSMakeRange(0, 3)];
    [text yy_setColor:[UIColor colorWithRed:91/255.0 green:110/255.0 blue:148/255.0 alpha:1] range:NSMakeRange(5, 2)];
    
    // 设置高亮
    [text yy_setTextHighlightRange:NSMakeRange(8, 8)
                             color:[UIColor blueColor]
                   backgroundColor:[UIColor grayColor]
                          tapAction:^(UIView * _Nonnull containerView, NSAttributedString * _Nonnull text, NSRange range, CGRect rect) {
                              
                              // 点击高亮的地方会响应这个block
                              NSLog(@"text: %@ \n range: %@ \n rect: %@", text, NSStringFromRange(range), NSStringFromCGRect(rect));
                          }];
    
    // 行间距
    text.yy_lineSpacing = 10;
    
    
    
    
    
    
    YYLabel *label = [YYLabel new];
    label.frame = CGRectMake(0, 300, 375, 60);
    label.numberOfLines = 0;
    label.attributedText = text;
    [self.view addSubview:label];
    
    
    
    
}









































@end
