//
//  ViewTool.m
//  移动营销
//
//  Created by Hanen 3G 01 on 16/2/24.
//  Copyright © 2016年 Hanen 3G 01. All rights reserved.
//

#import "ViewTool.h"

@implementation ViewTool

+(UIView *)getLineViewWith:(CGRect)frame withBackgroudColor:(UIColor *)color
{
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = color;
    return view;
}

+ (UILabel *)getLabelWith:(CGRect)frame WithTitle:(NSString *)title WithFontSize:(CGFloat)fontSize WithTitleColor:(UIColor *)color WithTextAlignment:(NSTextAlignment )textAlignment
{
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.text = title;
    label.textColor = color;
    label.textAlignment = textAlignment;
    label.font = [UIFont systemFontOfSize:fontSize];
    
    return label;
    
}
@end
