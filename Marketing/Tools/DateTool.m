//
//  DateTool.m
//  移动营销
//
//  Created by Hanen 3G 01 on 16/2/24.
//  Copyright © 2016年 Hanen 3G 01. All rights reserved.
//

#import "DateTool.h"

@implementation DateTool

+ (NSString *)getCurrentDate;
{
    NSDate *date = [NSDate date];
    NSDateFormatter *formate = [[NSDateFormatter alloc] init];
    [formate setDateFormat:@"yyyy.MM.dd hh.mm"];
    NSString * dateStr = [formate stringFromDate:date];
    
    NSLog(@"currentdate:%@",dateStr);
    return dateStr;
    
}

@end

