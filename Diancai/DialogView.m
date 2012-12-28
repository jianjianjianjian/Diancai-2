//
//  DialogView.m
//  Diancai
//
//  Created by 吴晓鑫 on 12-12-15.
//
//

#import "DialogView.h"

@implementation DialogView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setBackgroundColor:[UIColor whiteColor]]; //设置视图背景颜色
        self.layer.cornerRadius = 10;    //设置弹出框为圆角视图
        self.layer.masksToBounds = YES;
        self.layer.borderWidth = 2;   //设置弹出框视图边框宽度
        self.layer.borderColor = [[UIColor colorWithRed:0.50 green:0.10 blue:0.10 alpha:0.5] CGColor];   //设置弹出框边框颜色
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setFrame:CGRectMake(0,0, 23, 23)];
        [button setImage:[UIImage imageNamed:@"close.png"] forState:UIControlStateNormal];    //此按钮用来关闭此视图
        [button addTarget:self action:@selector(closeClickButton:) forControlEvents:UIControlEventTouchUpInside];
        button.tag = 1;
        [self addSubview:button];
    }
    return self;
}
-(IBAction)closeClickButton:(id)sender{
    NSLog(@"关闭视图");
    self.hidden=YES;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
