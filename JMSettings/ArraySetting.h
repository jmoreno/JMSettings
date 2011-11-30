//
//  ArraySetting.h
//  JMSettings
//
//  Created by Javier Moreno Lozano on 30/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArraySetting : NSObject

@property (nonatomic, strong) NSMutableArray *arraySettings;

+(NSDictionary *)getDictionaryFromName:(NSString *)name;
+(NSArray *)getSettingsArray;
-(NSArray *)initSettingsArray;

@end
