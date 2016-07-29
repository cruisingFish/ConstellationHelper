//
//  ConstellationHelper.h
//  YouJia
//
//  Created by J on 11-8-10.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstellationHelper : NSObject {
    
}
//根据生日获取星座
+(NSString *) getConstellation:(NSString *)birthday;
+(NSInteger) getConstellationIndex:(NSString *)birthday;
@end
