//
//  ConstellationHelper.m
//  YouJia
//
//  Created by J on 11-8-10.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "ConstellationHelper.h"


@implementation ConstellationHelper

+(NSInteger) getConstellationIndex:(NSString *)birthday
{
    NSArray *constellationEdgeDay = [NSArray arrayWithObjects:[NSNumber numberWithInt:20],[NSNumber numberWithInt:19],[NSNumber numberWithInt:21],[NSNumber numberWithInt:21],[NSNumber numberWithInt:21],[NSNumber numberWithInt:22],[NSNumber numberWithInt:23],[NSNumber numberWithInt:23],[NSNumber numberWithInt:23],[NSNumber numberWithInt:23],[NSNumber numberWithInt:22],[NSNumber numberWithInt:22],nil];
//    NSDateFormatter *format = [[NSDateFormatter alloc] init];
//    [format setDateFormat:YJLocalizedString(@"yyyyMMdd", nil)];
//    NSDate *birth = [format dateFromString:birthday];
//    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit fromDate:birth];
//    [format release];
    if(birthday.length == 8)
    {
        NSString *strMonth = [birthday substringWithRange:NSMakeRange(4, 2)];
        NSString *strDay = [birthday substringWithRange:NSMakeRange(6, 2)];
        NSInteger month = strMonth.intValue;
        NSInteger day = strDay.intValue;
        month = month -1;
        if(day < [[constellationEdgeDay objectAtIndex:month] intValue]){
            month = month - 1;
        }
        
        if(month >= 0){
            return month;
        }
    }
    
    return 11;
}

+(NSString *) getConstellation:(NSString *)birthday
{
    NSArray *constellationArr = [NSArray arrayWithObjects:YJLocalizedString(@"Aquarius", nil), YJLocalizedString(@"Pisces", nil),YJLocalizedString(@"Aries", nil),YJLocalizedString(@"Taurus", nil),YJLocalizedString(@"Gemini", nil),YJLocalizedString(@"Cancer", nil),YJLocalizedString(@"Leo", nil),YJLocalizedString(@"Virgo", nil),YJLocalizedString(@"Libra", nil),YJLocalizedString(@"Scorpio", nil),YJLocalizedString(@"Sagittarius", nil),YJLocalizedString(@"Capricorn", nil),nil];
    NSArray *constellationEdgeDay = [NSArray arrayWithObjects:[NSNumber numberWithInt:20],[NSNumber numberWithInt:19],[NSNumber numberWithInt:21],[NSNumber numberWithInt:21],[NSNumber numberWithInt:21],[NSNumber numberWithInt:22],[NSNumber numberWithInt:23],[NSNumber numberWithInt:23],[NSNumber numberWithInt:23],[NSNumber numberWithInt:23],[NSNumber numberWithInt:22],[NSNumber numberWithInt:22],nil];
//    NSDateFormatter *format = [[NSDateFormatter alloc] init];
//    [format setDateFormat:YJLocalizedString(@"yyyyMMdd", nil)];
//    NSDate *birth = [format dateFromString:birthday];
//    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit fromDate:birth];
//    [format release];
    if (birthday.length == 8) {
        NSString *strMonth = [birthday substringWithRange:NSMakeRange(4, 2)];
        NSString *strDay = [birthday substringWithRange:NSMakeRange(6, 2)];
        NSInteger month = strMonth.intValue;
        NSInteger day = strDay.intValue;
        month = month -1;
        if(day < [[constellationEdgeDay objectAtIndex:month] intValue]){
            month = month - 1;
        }
        if(month >= 0){
            return [constellationArr objectAtIndex:month];
        }
        
    }
    
    return [constellationArr objectAtIndex:11];
    
}
@end
