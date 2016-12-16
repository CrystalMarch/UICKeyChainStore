//
//  ViewController.m
//  UICKeyChainStoreDemo
//
//  Created by 朱慧平 on 16/12/16.
//  Copyright © 2016年 Crystal. All rights reserved.
//

#import "ViewController.h"
#import "UICKeyChainStore.h"

#define ScreenWidth         [[UIScreen mainScreen] bounds].size.width

@interface ViewController (){
    UITextField *_textField;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _textField = [[UITextField alloc] initWithFrame:CGRectMake((ScreenWidth-300)/2, 100, 300, 50)];
    _textField.backgroundColor = [UIColor redColor];
    [self.view addSubview:_textField];
    UIButton *button = [[UIButton alloc] init];
    button.frame = CGRectMake((ScreenWidth-60)/2, 200, 60, 20);
    [button setBackgroundColor:[UIColor lightGrayColor]];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button setTitle:@"存储" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(StoreInformation) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    UIButton *readButton = [[UIButton alloc] init];
    readButton.frame = CGRectMake((ScreenWidth-60)/2, 250, 60, 20);
    [readButton setBackgroundColor:[UIColor lightGrayColor]];
    [readButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [readButton setTitle:@"读取" forState:UIControlStateNormal];
    [readButton addTarget:self action:@selector(readInformation) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:readButton];
    
}
- (void)StoreInformation{
    [_textField resignFirstResponder];
    NSLog(@"%@",_textField.text);
    //初始化
    UICKeyChainStore *keychainStore = [UICKeyChainStore keyChainStore];
    [keychainStore setString:_textField.text forKey:@"testString"];//存储
   
}
- (void)readInformation{
    //初始化
    UICKeyChainStore *keychainStore = [UICKeyChainStore keyChainStore];
    //读取
    NSLog(@"读取到存储的信息是-----%@",[keychainStore stringForKey:@"testString"]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
