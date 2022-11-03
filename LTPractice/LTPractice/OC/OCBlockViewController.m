//
//  OCBlockViewController.m
//  LTPractice
//
//  Created by lt on 2022/10/15.
//

#import "OCBlockViewController.h"

@interface OCBlockViewController ()

@end

@implementation OCBlockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self blockTest];
}

- (void)blockTest {
    int a = 10;
    void (^myBlock)(void) = ^{
        NSLog(@"a的值为：%d", a);
    };
    a = 20;
    myBlock();
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
