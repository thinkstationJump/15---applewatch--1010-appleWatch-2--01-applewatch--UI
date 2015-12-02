//
//  InterfaceController.m
//  01-applewatch-基础UI WatchKit 1 Extension
//
//  Created by xiaomage on 15/10/10.
//  Copyright © 2015年 小码哥. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *lab;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceImage *ima;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *btn;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    // Configure interface objects here.
    // 1.WKInterfaceLabel的所有方法(除了父类WKInterfaceObject方法)
    [self.lab setText:@"xmgWatchLab"];
    [self.lab setTextColor:[UIColor orangeColor]];
    //[self.lab setAttributedText:<#(nullable NSAttributedString *)#>];
    
    // 2.ima
    /*
    - (void)setImage:(nullable UIImage *)image;
    - (void)setImageData:(nullable NSData *)imageData;
    - (void)setImageNamed:(nullable NSString *)imageName;
    
    - (void)setTintColor:(nullable UIColor *)tintColor;
     */
    // 将图片放在watch app中的图片库中,下列方法没有显示出来
    //[self.ima setImage:[UIImage imageNamed:@"minion"]];
    
    //[self.ima setImage:[UIImage imageNamed:@"minion.jpg"]];

    //[self.ima setImageNamed:@"minion.jpg"];
    
    // 此方法可以在图片是在.h.m文件旁的时候,用此方法可以展示出来
    // [self.ima setImage:[UIImage imageNamed:@"minion.jpg"]];
    
    // 一般在OS1的时候,用到的image都是直接在storyboard中设置,不会通过代码再对它进行一些动态的修改(在OS2是可以动态修改的)
    //[self.ima setImageData:UIImageJPEGRepresentation([UIImage imageNamed:@"minion.jpg"], 1.0)];
    
    // 3.btn
    /*
     // 1.lab类似
     - (void)setTitle:(nullable NSString *)title;
     - (void)setAttributedTitle:(nullable NSAttributedString *)attributedTitle;
     
     // 2.ima类似
     - (void)setBackgroundColor:(nullable UIColor *)color;
     - (void)setBackgroundImage:(nullable UIImage *)image;
     - (void)setBackgroundImageData:(nullable NSData *)imageData;
     - (void)setBackgroundImageNamed:(nullable NSString *)imageName;
     
     // 3.是否开启用户交互
     - (void)setEnabled:(BOOL)enabled;
     */
    [self.btn setTitle:@"xmgWK Btn"];
    [self.btn setBackgroundColor:[UIColor greenColor]];
    // watchApp中用到UIImage时候,命名要加.jpg/.png
    [self.btn setBackgroundImageData:UIImageJPEGRepresentation([UIImage imageNamed:@"minion.jpg"], 1.0)];
    
    
    // 4.他们的父类WKInterfaceObject:NSObject
#warning 面试:WK控件和iOS控件的区别
    /*
     - (instancetype)init NS_UNAVAILABLE;
     
     - (void)setHidden:(BOOL)hidden;
     - (void)setAlpha:(CGFloat)alpha;
     
     - (void)setWidth:(CGFloat)width;
     - (void)setHeight:(CGFloat)height;
     
     @property (nonatomic, readonly, copy) NSString *interfaceProperty;   // same as controller's property name
     */
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



