//
//  FJVerifyString.h
//  RegularExpression
//
//  Created by John on 16/4/16.
//  Copyright © 2016年 John. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FJVerifyString : NSObject
/**
 *  是否为常用用户名（根据自己需求改）
 */
+ (BOOL)isUserNameInGeneral:(NSString *)verifyString;

/**
 *  是否为url链接
 */
+ (BOOL)isUrl:(NSString *)verifyString;

/**
 *  是否为邮箱地址
 */
+ (BOOL)isEmailAddress:(NSString *)verifyString;

/**
 *  是否为电话号码（座机）
 */
+ (BOOL)isTelNumber:(NSString *)verifyString;

/**
 *  是否为移动电话
 */
+ (BOOL)isMobelPhoneNumber:(NSString *)verifyString;

/**
 *  是否为身份证号
 */
+ (BOOL)isIDCardNumber:(NSString *)verifyString;

/**
 *  是否只为数字
 */
+ (BOOL)isNumberOnly:(NSString *)verifyString;


@end
