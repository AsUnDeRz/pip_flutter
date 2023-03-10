//
//  PIPActivePlayerViewControllerStorage.h
//  Pods
//
//  Created by asunder on 09/03/2023.
//
NS_ASSUME_NONNULL_BEGIN

@interface PIPActivePlayerViewControllerStorage : NSObject

+ (instancetype)sharedInstance;

- (void)storePlayerViewController:(NSObject *)viewController;

- (void)removePlayerViewController:(NSObject *)viewController;

@end

NS_ASSUME_NONNULL_END
