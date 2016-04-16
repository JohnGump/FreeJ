//
//  FJVerifyString.m
//  RegularExpression
//
//  Created by John on 16/4/16.
//  Copyright © 2016年 John. All rights reserved.
//

#import "FJVerifyString.h"

@implementation FJVerifyString

+ (BOOL)isUserNameInGeneral:(NSString *)verifyString
{
    NSString* verifyRules = @"^[a-zA-Z]\w{5,15}$";
    NSPredicate *verifyRulesPre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",verifyRules];
    return [verifyRulesPre evaluateWithObject:verifyString];

}

+ (BOOL)isUrl:(NSString *)verifyString
{
    NSString* verifyRules=@"^http://([\\w-]+\.)+[\\w-]+(/[\\w-./?%&=]*)?$";
    NSPredicate *verifyRulesPre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",verifyRules];
    return [verifyRulesPre evaluateWithObject:verifyString];
    
}

+ (BOOL)isEmailAddress:(NSString *)verifyString
{
    NSString* verifyRules=@"^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\.\\w+([-.]\\w+)*$";
    NSPredicate *verifyRulesPre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",verifyRules];
    return [verifyRulesPre evaluateWithObject:verifyString];
    
}

+ (BOOL)isTelverifyRules:(NSString *)verifyString
{
    NSString* verifyRules=@"^(\\d{3,4}-)\\d{7,8}$";
    NSPredicate *verifyRulesPre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",verifyRules];
    return [verifyRulesPre evaluateWithObject:verifyString];
    
}

+ (BOOL)isMobelPhoneverifyRules:(NSString *)verifyString
{
    NSString* verifyRules=@"^1[3|4|5|7|8][0-9]\\d{8}$";
    NSPredicate *verifyRulesPre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",verifyRules];
    return [verifyRulesPre evaluateWithObject:verifyString];
    
}

+ (BOOL)isIDCardverifyRules:(NSString *)verifyString
{
    NSString* verifyRules=@"\\d{14}[[0-9],0-9xX]";
    NSPredicate *verifyRulesPre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",verifyRules];
    return [verifyRulesPre evaluateWithObject:verifyString];
    
}

+ (BOOL)isNumberOnly:(NSString *)verifyString
{
    NSString* verifyRules=@"^[0-9]*$";
    NSPredicate *verifyRulesPre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",verifyRules];
    return [verifyRulesPre evaluateWithObject:verifyString];
    
}



@end
