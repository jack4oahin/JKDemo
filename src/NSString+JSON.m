//
//  NSString+JSON.m
//  NPushMail
//
//  Created by admin on 2/15/16.
//  Copyright © 2016 sprite. All rights reserved.
//

#import "NSString+JSON.h"

@implementation NSString (JSON)

- (id)toJson
{
    NSError *error = nil;
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
    if (error) {
        return nil;
    }
    
    return json;
}

+ (NSString *)jsonStringWithObject:(id)jsonObj
{
    if (!jsonObj) {
        return nil;
    }
    
    NSError *error = nil;
    
    // Json反序列化
    NSData *data = [NSJSONSerialization dataWithJSONObject:jsonObj options:0 error:&error];
    if (error) {
        return nil;
    }
    
    // 将二进制文件转换成字符串
    NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    return string;
}

@end
