//
//  DeviceDetect.m
//  DeviceDetect
//
//  Created by Erika Bueno on 2/9/17.
//  Copyright © 2017 Erika Bueno. All rights reserved.
//

#import "DeviceDetect.h"
#import <sys/utsname.h>

@implementation DeviceDetect

+ (NSString *)thisDevice {
    
    struct utsname systemInfo;
    
    uname(&systemInfo);
    
    NSString *model = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    
    NSString *storyboard = [[NSString alloc] init];
    
    if ([model isEqualToString:@"iPhone5,1"] || [model isEqualToString:@"iPhone5,2"] ||
        [model isEqualToString:@"iPhone5,3"] || [model isEqualToString:@"iPhone5,4"] ||
        [model isEqualToString:@"iPhone6,1"] || [model isEqualToString:@"iPhone6,2"] ||
        [model isEqualToString:@"iPhone8,4"] ) {
        
        storyboard = @"SB40"; // iPhones 5, 5C, 5S and SE - 4.0 inches
        
    } else if ([model isEqualToString:@"iPhone7,1"] || [model isEqualToString:@"iPhone7,2"] ||
               [model isEqualToString:@"iPhone8,1"] || [model isEqualToString:@"iPhone8,2"] ||
               [model isEqualToString:@"iPhone9,1"] || [model isEqualToString:@"iPhone9,3"] ) {
        
        storyboard = @"SB47"; // iPhones 6, 6S and 7 - 4.7 inches
        
    } else if ([model isEqualToString:@"iPhone7,1"] || [model isEqualToString:@"iPhone8,2"] ||
               [model isEqualToString:@"iPhone9,2"] || [model isEqualToString:@"iPhone9,4"] ) {
        
        storyboard = @"SB55"; // iPhones 6+, 6S+ and 7+ - 5.5 inches
        
    }
    
    return storyboard;
    
}



@end
