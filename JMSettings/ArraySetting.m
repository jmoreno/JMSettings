//
//  ArraySetting.m
//  JMSettings
//
//  Created by Javier Moreno Lozano on 30/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ArraySetting.h"

@implementation ArraySetting

@synthesize arraySettings = _arraySettings;

-(NSArray *)initSettingsArray {
    _arraySettings = [[NSMutableArray alloc] initWithObjects:
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       [NSNull null], @"nombre",
                       [NSNull null], @"URL",
                       [NSNull null], @"imagen",
                       NSLocalizedString(@"None", @"None"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kAbout, @"nombre", 
                       kURLAbout, @"URL", 
                       @"About.png", @"imagen", 
                       NSLocalizedString(@"About", @"About"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kAccessibility, @"nombre", 
                       kURLAccessibility, @"URL", 
                       @"Accessibility.png", @"imagen", 
                       NSLocalizedString(@"Accessibility", @"Accessibility"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kAirplane, @"nombre", 
                       kURLAirplane, @"URL", 
                       @"Airplane.png", @"imagen", 
                       NSLocalizedString(@"Airplane Mode", @"Airplane Mode"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kAutoLock, @"nombre", 
                       kURLAutoLock, @"URL", 
                       @"AutoLock.png", @"imagen", 
                       NSLocalizedString(@"Auto-Lock", @"Auto-Lock"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kBluetooth, @"nombre", 
                       kURLBluetooth, @"URL", 
                       @"Bluetooth.png", @"imagen", 
                       NSLocalizedString(@"Bluetooth", @"Bluetooth"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kBrightness, @"nombre", 
                       kURLBrightness, @"URL", 
                       @"Brightness.png", @"imagen", 
                       NSLocalizedString(@"Brightness", @"Brightness"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kCellularUsage, @"nombre", 
                       kURLCellularUsage, @"URL", 
                       @"", @"imagen", 
                       NSLocalizedString(@"Cellular Usage", @"Cellular Usage"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kDateAndTime, @"nombre", 
                       kURLDateAndTime, @"URL", 
                       @"DateAndTime.png", @"imagen", 
                       NSLocalizedString(@"Date & Time", @"Date & Time"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kFaceTime, @"nombre", 
                       kURLFaceTime, @"URL", 
                       @"FaceTime.png", @"imagen", 
                       NSLocalizedString(@"FaceTime", @"FaceTime"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kGeneral, @"nombre", 
                       kURLGeneral, @"URL", 
                       @"General.png", @"imagen", 
                       NSLocalizedString(@"General", @"General"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kHotspot, @"nombre", 
                       kURLHotspot, @"URL", 
                       @"Hotspot.png", @"imagen", 
                       NSLocalizedString(@"Personal Hotspot", @"Personal Hotspot"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kKeyboard, @"nombre", 
                       kURLKeyboard, @"URL", 
                       @"Keyboard.png", @"imagen", 
                       NSLocalizedString(@"Keyboard", @"Keyboard"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kiCloud, @"nombre", 
                       kURLiCloud, @"URL", 
                       @"iCloud.png", @"imagen", 
                       NSLocalizedString(@"iCloud", @"iCloud"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kiCloudStorageAndBackup, @"nombre", 
                       kURLiCloudStorageAndBackup, @"URL", 
                       @"iCloudStorageAndBackup.png", @"imagen", 
                       NSLocalizedString(@"iCloud - Storage & Backup", @"iCloud - Storage & Backup"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kInternational, @"nombre", 
                       kURLInternational, @"URL", 
                       @"International.png", @"imagen", 
                       NSLocalizedString(@"International", @"International"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kLocationServices, @"nombre", 
                       kURLLocationServices, @"URL", 
                       @"LocationServices.png", @"imagen", 
                       NSLocalizedString(@"Location Services", @"Location Services"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kMailContactsCalendars, @"nombre", 
                       kURLMailContactsCalendars, @"URL", 
                       @"MailContactsCalendars.png", @"imagen", 
                       NSLocalizedString(@"Mail, Contacts, Calendars", @"Mail, Contacts, Calendars"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kMusic, @"nombre", 
                       kURLMusic, @"URL", 
                       @"Music.png", @"imagen", 
                       NSLocalizedString(@"Music", @"Music"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kMusicEq, @"nombre", 
                       kURLMusicEq, @"URL", 
                       @"MusicEq.png", @"imagen", 
                       NSLocalizedString(@"Eq", @"Eq"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kMusicVolume, @"nombre", 
                       kURLMusicVolume, @"URL", 
                       @"MusicVolume.png", @"imagen", 
                       NSLocalizedString(@"Volume Limit", @"Volume Limit"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kNetwork, @"nombre", 
                       kURLNetwork, @"URL", 
                       @"Network.png", @"imagen", 
                       NSLocalizedString(@"Network", @"Network"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kNike, @"nombre", 
                       kURLNike, @"URL", 
                       @"Nike.png", @"imagen", 
                       NSLocalizedString(@"Nike", @"Nike"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kNotes, @"nombre", 
                       kURLNotes, @"URL", 
                       @"Notes.png", @"imagen", 
                       NSLocalizedString(@"Notes", @"Notes"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kNotifications, @"nombre", 
                       kURLNotifications, @"URL", 
                       @"Notifications.png", @"imagen", 
                       NSLocalizedString(@"Notifications", @"Notifications"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kPhone, @"nombre", 
                       kURLPhone, @"URL", 
                       @"Phone.png", @"imagen", 
                       NSLocalizedString(@"Phone", @"Phone"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kPhotos, @"nombre", 
                       kURLPhotos, @"URL", 
                       @"Photos.png", @"imagen", 
                       NSLocalizedString(@"Photos", @"Photos"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kProfile, @"nombre", 
                       kURLProfile, @"URL", 
                       @"Profile.png", @"imagen", 
                       NSLocalizedString(@"Profile", @"Profile"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kReset, @"nombre", 
                       kURLReset, @"URL", 
                       @"Reset.png", @"imagen", 
                       NSLocalizedString(@"Reset", @"Reset"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kRingtone, @"nombre", 
                       kURLRingtone, @"URL", 
                       @"", @"imagen", 
                       NSLocalizedString(@"Ringtone", @"Ringtone"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kSafari, @"nombre", 
                       kURLSafari, @"URL", 
                       @"Safari.png", @"imagen",  
                       NSLocalizedString(@"Safari", @"Safari"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kSiri, @"nombre", 
                       kURLSiri, @"URL", 
                       @"Siri.png", @"imagen", 
                       NSLocalizedString(@"Siri", @"Siri"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kSounds, @"nombre", 
                       kURLSounds, @"URL", 
                       @"Sounds.png", @"imagen", 
                       NSLocalizedString(@"Sounds", @"Sounds"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kSoftwareUpdate, @"nombre", 
                       kURLSoftwareUpdate, @"URL", 
                       @"SoftwareUpdate.png", @"imagen", 
                       NSLocalizedString(@"Software Update", @"Software Update"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kStore, @"nombre", 
                       kURLStore, @"URL", 
                       @"Store.png", @"imagen", 
                       NSLocalizedString(@"Store", @"Store"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kTwitter, @"nombre", 
                       kURLTwitter, @"URL", 
                       @"Twitter.png", @"imagen", 
                       NSLocalizedString(@"Twitter", @"Twitter"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kUsage, @"nombre", 
                       kURLUsage, @"URL", 
                       @"Usage.png", @"imagen", 
                       NSLocalizedString(@"Usage", @"Usage"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kVideo, @"nombre", 
                       kURLVideo, @"URL", 
                       @"", @"imagen", 
                       NSLocalizedString(@"Video", @"Video"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kVPN, @"nombre", 
                       kURLVPN, @"URL", 
                       @"VPN.png", @"imagen", 
                       NSLocalizedString(@"VPN", @"VPN"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kWallpaper, @"nombre", 
                       kURLWallpaper, @"URL", 
                       @"Wallpaper.png", @"imagen", 
                       NSLocalizedString(@"Wallpaper", @"Wallpaper"), @"titulo",
                       nil], 
                      [NSDictionary  dictionaryWithObjectsAndKeys:
                       kWiFi, @"nombre", 
                       kURLWiFi, @"URL", 
                       @"WiFi.png", @"imagen", 
                       NSLocalizedString(@"Wi-Fi", @"Wi-Fi"), @"titulo",
                       nil], 
                      nil];
    
    return _arraySettings;
    
}

+(NSDictionary *)getDictionaryFromName:(NSString *)name {
    
    NSArray *theArrayOfSettings = [[self alloc] initSettingsArray];    
    NSArray *filtered = [theArrayOfSettings filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"nombre == %@", name]];
    NSDictionary *dictionary = (NSDictionary *)[filtered objectAtIndex:0];
    return dictionary;
    
}

+(NSArray *)getSettingsArray {
    return [[self alloc] initSettingsArray];
}


@end
