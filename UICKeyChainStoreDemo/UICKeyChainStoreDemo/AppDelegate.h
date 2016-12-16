//
//  AppDelegate.h
//  UICKeyChainStoreDemo
//
//  Created by 朱慧平 on 16/12/16.
//  Copyright © 2016年 Crystal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

