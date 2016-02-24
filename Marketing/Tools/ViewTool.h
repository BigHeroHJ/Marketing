/*!
 Here , We Become Master!
  @header ViewTool.h
  @abstract 项目名字：移动营销

 
 
  @author Created by Hanen 3G 01 on 16/2/24.
  @version 1.00 16/2/24 Creation
  Copyright © 2016年 Hanen 3G 01. All rights reserved.
*/

#import <Foundation/Foundation.h>

@interface ViewTool : NSObject
//获取一条线
+ (UIView *)getLineViewWith:(CGRect)frame withBackgroudColor:(UIColor *)color;
//获取label
+ (UILabel *)getLabelWith:(CGRect)frame WithTitle:(NSString *)title WithFontSize:(CGFloat)fontSize WithTitleColor:(UIColor *)color WithTextAlignment:(NSTextAlignment )textAlignment;
@end
