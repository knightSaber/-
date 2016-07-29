//
//  ViewController.m
//  文字之间的间距
//
//  Created by 陈波涛 on 16/7/25.
//  Copyright © 2016年 weixun. All rights reserved.
//

#import "ViewController.h"
#import <CoreText/CoreText.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self configureContentLabelText];
}


- (void)configureContentLabelText
{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]initWithString:@"Label"];
    long number = 5;
    CFNumberRef num = CFNumberCreate(kCFAllocatorDefault,kCFNumberSInt8Type,&number);
    [attributedString addAttribute:(id)kCTKernAttributeName value:(__bridge id)num range:NSMakeRange(0,[attributedString length])];
    CFRelease(num);
    
    self.label.attributedText = attributedString;
}

@end
