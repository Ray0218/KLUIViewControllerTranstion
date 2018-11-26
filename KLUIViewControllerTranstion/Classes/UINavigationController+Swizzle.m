//
//  UINavigationController+Swizzle.m
//  VietnamObject
//
//  Created by 吴孔亮 on 2018/8/22.
//  Copyright © 2018年 吴孔亮. All rights reserved.
//

#import "UINavigationController+Swizzle.h"
#import <objc/runtime.h>


@implementation UINavigationController (Swizzle)

+(void)load{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class] ;
        
        SEL originalSelector = @selector(pushViewController:animated:) ;
        SEL swizzledSelector = @selector(ps_pushViewController:animated:);
    
        Method originalMethod =  class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
        
        method_exchangeImplementations(originalMethod, swizzledMethod);
    });
    
}

-(void)ps_pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (!viewController) {
        return;
    }
    if (self.viewControllers.count) {
        viewController.hidesBottomBarWhenPushed = YES ;
     }
    [self ps_pushViewController:viewController animated:animated];
}
@end
