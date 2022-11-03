//
//  OCViewController.m
//  LTPractice
//
//  Created by lt on 2022/10/12.
//

#import "OCViewController.h"

@interface OCViewController ()
@property (nonatomic, strong) NSString *originStr;
@property (nonatomic, strong) NSMutableString *originMutableStr;

@property (nonatomic, strong) NSString *strongStr;
@property (nonatomic, copy) NSString *copyedStr;

@end

@implementation OCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self stringTest14];
}

- (void)stringTest14 {
    NSString *str1 = @"123";
    NSString *str2 = str1.copy;
    NSString *str3 = str1.mutableCopy;
    
    NSString *str4 = [NSMutableString stringWithFormat: @"123"];
    NSString *str5 = str4.copy;
    NSString *str6 = str4.mutableCopy;
    
    NSLog(@"str1: %p, %p, %@, %@", str1, &str1,str1,NSStringFromClass(str1.class));
    NSLog(@"str2: %p, %p, %@, %@", str2, &str2,str2,NSStringFromClass(str2.class));
    NSLog(@"str3: %p, %p, %@, %@", str3, &str3,str3,NSStringFromClass(str3.class));
    NSLog(@"str4: %p, %p, %@, %@", str4, &str4,str4,NSStringFromClass(str4.class));
    NSLog(@"str5: %p, %p, %@, %@", str5, &str5,str5,NSStringFromClass(str5.class));
    NSLog(@"str6: %p, %p, %@, %@", str6, &str6,str6,NSStringFromClass(str6.class));
}

- (void)stringTest13 {
    NSString *str1 = @"123";
    NSString *str2 = str1.copy;
    NSString *str3 = str1.mutableCopy;
    
    NSString *str4 = [NSMutableString stringWithFormat: @"123"];
    NSString *str5 = str4.copy;
    NSString *str6 = str4.mutableCopy;

    NSString *str7 = [[NSMutableString alloc] initWithString: @"123"];
    NSString *str8 = str7.copy;
    NSString *str9 = str7.mutableCopy;
    
    NSLog(@"str1: %p, %p, %@, %@", str1, &str1,str1,NSStringFromClass(str1.class));
    NSLog(@"str2: %p, %p, %@, %@", str2, &str2,str2,NSStringFromClass(str2.class));
    NSLog(@"str3: %p, %p, %@, %@", str3, &str3,str3,NSStringFromClass(str3.class));
    NSLog(@"str4: %p, %p, %@, %@", str4, &str4,str4,NSStringFromClass(str4.class));
    NSLog(@"str5: %p, %p, %@, %@", str5, &str5,str5,NSStringFromClass(str5.class));
    NSLog(@"str6: %p, %p, %@, %@", str6, &str6,str6,NSStringFromClass(str6.class));
    NSLog(@"str7: %p, %p, %@, %@", str7, &str7,str7,NSStringFromClass(str7.class));
    NSLog(@"str8: %p, %p, %@, %@", str8, &str8,str8,NSStringFromClass(str8.class));
    NSLog(@"str9: %p, %p, %@, %@", str9, &str9,str9,NSStringFromClass(str9.class));
}

- (void)stringTest4 {
    NSString *str1 = @"123";
    NSString *str2 = [[NSString alloc] init];str2 = @"123";
    NSString *str3 = [NSString stringWithFormat: @"123"];
    
    NSMutableString *str4 = [[NSMutableString alloc] initWithString: @"123"];
    NSMutableString *str5 = [NSMutableString stringWithFormat: @"123"];
   
    NSString *str6 = @"123".copy;
    NSString *str7 = @"123".mutableCopy;
    
    NSLog(@"str1: %p, %p, %@, %@", str1, &str1,str1,NSStringFromClass(str1.class));
    NSLog(@"str2: %p, %p, %@, %@", str2, &str2,str2,NSStringFromClass(str2.class));
    NSLog(@"str3: %p, %p, %@, %@", str3, &str3,str3,NSStringFromClass(str3.class));
    NSLog(@"str4: %p, %p, %@, %@", str4, &str4,str4,NSStringFromClass(str4.class));
    NSLog(@"str5: %p, %p, %@, %@", str5, &str5,str5,NSStringFromClass(str5.class));
    NSLog(@"str6: %p, %p, %@, %@", str6, &str6,str6,NSStringFromClass(str6.class));
    NSLog(@"str7: %p, %p, %@, %@", str7, &str7,str7,NSStringFromClass(str7.class));
}

- (void)stringTest3 {
    NSString *str1 = [NSString stringWithFormat: @"123"];
    NSString *str2 = [NSString stringWithFormat: @"123"];
    NSString *str3 = [NSString stringWithFormat: @"456"];
    NSString *str4 = [NSString stringWithFormat: @"456"];
    
    NSLog(@"str1: %p, %p, %@, %@", str1, &str1,str1,NSStringFromClass(str1.class));
    NSLog(@"str2: %p, %p, %@, %@", str2, &str2,str2,NSStringFromClass(str2.class));
    NSLog(@"str3: %p, %p, %@, %@", str3, &str3,str3,NSStringFromClass(str3.class));
    NSLog(@"str4: %p, %p, %@, %@", str4, &str4,str4,NSStringFromClass(str4.class));
}

- (void)stringTest2 {
    NSString *str1 = @"123";
    NSString *str2 = @"123";
    NSString *str3 = @"456";
    NSString *str4 = @"456";

    str1 = @"789";
    
    NSLog(@"str1: %p, %p, %@, %@", str1, &str1,str1,NSStringFromClass(str1.class));
    NSLog(@"str2: %p, %p, %@, %@", str2, &str2,str2,NSStringFromClass(str2.class));
    NSLog(@"str3: %p, %p, %@, %@", str3, &str3,str3,NSStringFromClass(str3.class));
    NSLog(@"str4: %p, %p, %@, %@", str4, &str4,str4,NSStringFromClass(str4.class));
}

- (void)stringTest1 {
    NSString *str1 = @"123";
    NSString *str2 = @"123";
    NSString *str3 = @"456";
    NSString *str4 = @"456";

    NSLog(@"str1: %p, %p, %@, %@", str1, &str1,str1,NSStringFromClass(str1.class));
    NSLog(@"str2: %p, %p, %@, %@", str2, &str2,str2,NSStringFromClass(str2.class));
    NSLog(@"str3: %p, %p, %@, %@", str3, &str3,str3,NSStringFromClass(str3.class));
    NSLog(@"str4: %p, %p, %@, %@", str4, &str4,str4,NSStringFromClass(str4.class));
}

- (void)stringTest5 {
    self.originStr = @"abc";
    self.strongStr = self.originStr;
    self.copyedStr = self.originStr;
    NSLog(@"originStr: %p, %p,%@", _originStr,&_originStr,_originStr);
    NSLog(@"strongStr: %p, %p,%@", _strongStr,&_strongStr,self.strongStr);
    NSLog(@"copyStr:   %p, %p,%@", _copyedStr,&_copyedStr,self.copyedStr);

    //改变string的值
    self.originStr = @"123";
    NSLog(@"修改后");

    NSLog(@"originStr: %p, %p,%@", _originStr, &_originStr,_originStr);
    NSLog(@"strongStr: %p, %p,%@", _strongStr,&_strongStr,self.strongStr);
    NSLog(@"copyStr:   %p, %p,%@", _copyedStr,&_copyedStr,self.copyedStr);
}

- (void)stringTest6 {
    self.originStr = @"abc";
    _strongStr = self.originStr;
    _copyedStr = self.originStr;
    NSLog(@"originStr: %p, %p,%@", _originStr,&_originStr,_originStr);
    NSLog(@"strongStr: %p, %p,%@", _strongStr,&_strongStr,self.strongStr);
    NSLog(@"copyStr:   %p, %p,%@", _copyedStr,&_copyedStr,self.copyedStr);

    //改变string的值
    self.originStr = @"123";
    NSLog(@"修改后");

    NSLog(@"originStr: %p, %p,%@", _originStr, &_originStr,_originStr);
    NSLog(@"strongStr: %p, %p,%@", _strongStr,&_strongStr,self.strongStr);
    NSLog(@"copyStr:   %p, %p,%@", _copyedStr,&_copyedStr,self.copyedStr);
}

- (void)stringTest7 {
    NSString *str = [NSString stringWithFormat:@"abc"];
    _strongStr = str;
    _copyedStr = str;
    NSLog(@"originStr: %p, %p,%@", str,&str,str);
    NSLog(@"strongStr: %p, %p,%@", _strongStr,&_strongStr,self.strongStr);
    NSLog(@"copyStr:   %p, %p,%@", _copyedStr,&_copyedStr,self.copyedStr);

    //改变string的值
    str = @"123";
    NSLog(@"修改后");

    NSLog(@"originStr: %p, %p,%@", str,&str,str);
    NSLog(@"strongStr: %p, %p,%@", _strongStr,&_strongStr,self.strongStr);
    NSLog(@"copyStr:   %p, %p,%@", _copyedStr,&_copyedStr,self.copyedStr);
}

- (void)stringTest12 {
    NSString *str = [NSString stringWithFormat:@"abc"];
    self.strongStr = str;
    self.copyedStr = str;
    NSLog(@"originStr: %p, %p,%@", str,&str,str);
    NSLog(@"strongStr: %p, %p,%@", _strongStr,&_strongStr,self.strongStr);
    NSLog(@"copyStr:   %p, %p,%@", _copyedStr,&_copyedStr,self.copyedStr);

    //改变string的值
    str = @"123";
    NSLog(@"修改后");

    NSLog(@"originStr: %p, %p,%@", str,&str,str);
    NSLog(@"strongStr: %p, %p,%@", _strongStr,&_strongStr,self.strongStr);
    NSLog(@"copyStr:   %p, %p,%@", _copyedStr,&_copyedStr,self.copyedStr);
}

- (void)stringTest8 {
    NSMutableString *mutabString = [NSMutableString stringWithFormat:@"abc"];
    _strongStr = mutabString;
    _copyedStr = mutabString;
    NSLog(@"originStr: %p, %p,%@", mutabString,&mutabString,mutabString);
    NSLog(@"strongStr: %p, %p,%@", _strongStr,&_strongStr,self.strongStr);
    NSLog(@"copyStr:   %p, %p,%@", _copyedStr,&_copyedStr,self.copyedStr);

    //改变string的值
    [mutabString setString:@"123"];
    NSLog(@"修改后");

    NSLog(@"originStr: %p, %p,%@", mutabString, &mutabString,mutabString);
    NSLog(@"strongStr: %p, %p,%@", _strongStr,&_strongStr,self.strongStr);
    NSLog(@"copyStr:   %p, %p,%@", _copyedStr,&_copyedStr,self.copyedStr);
}

- (void)stringTest9 {
    NSMutableString *mutabString = [NSMutableString stringWithFormat:@"abc"];
    self.strongStr = mutabString;
    self.copyedStr = mutabString;
    NSLog(@"originStr: %p, %p,%@", mutabString,&mutabString,mutabString);
    NSLog(@"strongStr: %p, %p,%@", _strongStr,&_strongStr,self.strongStr);
    NSLog(@"copyStr:   %p, %p,%@", _copyedStr,&_copyedStr,self.copyedStr);

    //改变string的值
    [mutabString setString:@"123"];
    NSLog(@"修改后");

    NSLog(@"originStr: %p, %p,%@", mutabString, &mutabString,mutabString);
    NSLog(@"strongStr: %p, %p,%@", _strongStr,&_strongStr,self.strongStr);
    NSLog(@"copyStr:   %p, %p,%@", _copyedStr,&_copyedStr,self.copyedStr);
}

- (void)stringTest10 {
    self.originMutableStr = [NSMutableString stringWithFormat:@"abc"];
    self.strongStr = self.originMutableStr;
    self.copyedStr = self.originMutableStr;
    NSLog(@"originStr: %p, %p,%@", _originMutableStr,&_originMutableStr,_originMutableStr);
    NSLog(@"strongStr: %p, %p,%@", _strongStr,&_strongStr,self.strongStr);
    NSLog(@"copyStr:   %p, %p,%@", _copyedStr,&_copyedStr,self.copyedStr);

    //改变string的值
    [self.originMutableStr setString:@"123"];
    NSLog(@"修改后");

    NSLog(@"originStr: %p, %p,%@", _originMutableStr,&_originMutableStr,_originMutableStr);
    NSLog(@"strongStr: %p, %p,%@", _strongStr,&_strongStr,self.strongStr);
    NSLog(@"copyStr:   %p, %p,%@", _copyedStr,&_copyedStr,self.copyedStr);
}

- (void)stringTest11 {
    self.originMutableStr = [NSMutableString stringWithFormat:@"abc"];
    _strongStr = self.originMutableStr;
    _copyedStr = self.originMutableStr;
    NSLog(@"originStr: %p, %p,%@", _originMutableStr,&_originMutableStr,_originMutableStr);
    NSLog(@"strongStr: %p, %p,%@", _strongStr,&_strongStr,self.strongStr);
    NSLog(@"copyStr:   %p, %p,%@", _copyedStr,&_copyedStr,self.copyedStr);

    //改变string的值
    [self.originMutableStr setString:@"123"];
    NSLog(@"修改后");

    NSLog(@"originStr: %p, %p,%@", _originMutableStr, &_originMutableStr,_originMutableStr);
    NSLog(@"strongStr: %p, %p,%@", _strongStr,&_strongStr,self.strongStr);
    NSLog(@"copyStr:   %p, %p,%@", _copyedStr,&_copyedStr,self.copyedStr);
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
