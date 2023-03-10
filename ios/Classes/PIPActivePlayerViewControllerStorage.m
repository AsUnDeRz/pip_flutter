//
//  PIPActivePlayerViewControllerStorage.m
//  Cache
//
//  Created by asunder on 09/03/2023.
//

#import <Foundation/Foundation.h>
#import "PIPActivePlayerViewControllerStorage.h"

@interface PIPActivePlayerViewControllerStorage ()

@property (nonatomic, strong) NSMutableSet<NSObject *> *viewControllers;

@end

@implementation PIPActivePlayerViewControllerStorage

+ (instancetype)sharedInstance {
    static id _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
    _sharedInstance = [[self alloc] init];
    });
    return _sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _viewControllers = [NSMutableSet set];
    }
    return self;
}

- (void)storePlayerViewController:(NSObject *)viewController {
    [self.viewControllers addObject:viewController];
}

- (void)removePlayerViewController:(NSObject *)viewController {
    [self.viewControllers removeObject:viewController];
}

@end
