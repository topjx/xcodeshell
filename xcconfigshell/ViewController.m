//
//  ViewController.m
//  xcconfigshell
//
//  Created by tc on 2023/9/11.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 200, 200)];
    lab.text = @"dddddddd";
    [self.view addSubview:lab];
}


@end
