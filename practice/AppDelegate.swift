//
//  AppDelegate.swift
//  practice
//
//  Created by kidnapper on 06/11/2017.
//  Copyright © 2017 kidnapper.com. All rights reserved.
//

import UIKit
import TabPageViewController

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let tc = TabPageViewController.create()
        let vc1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vc1")
        let vc2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vc2")
        let vc3 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vc3")
        
        
        tc.tabItems = [(vc1, "我現在要測試一個超級無敵宇宙長的section"), (vc2, "我現在要測試一個超級無敵宇宙長的section"), (vc3, "我現在要測試一個超級無敵宇宙長的section")]
        var option = TabPageOption()
        option.tabWidth = tc.view.frame.width / CGFloat(tc.tabItems.count)
        option.hidesTopViewOnSwipeType = .all
        tc.option = option
//        present(tc, animated: false, completion: nil)
        
        
//        let layout = TabPageViewController
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = UINavigationController(rootViewController: tc)
        
        UINavigationBar.appearance().barTintColor = UIColor.white
        let logo = UIImage(named: "Roche_logo")
        let logoView = UIImageView(image: logo)
        
        
        let logoAttachment = NSTextAttachment()
        logoAttachment.image = UIImage(named: "Roche_logo")
        
//        UINavigationBar.appearance().titleTextAttributes =
//        navigationItem.titleView = logoView
//        
//        
//        let unreadDotAttachment = NSTextAttachment()
//        unreadDotAttachment.image = UIImage(cgImage: unreadIndication!.cgImage!, scale: 1, orientation: .up)
//        let attrStringWithImage = NSAttributedString(attachment: unreadDotAttachment)
//        attributedString = attrStringWithImage as! NSMutableAttributedString
//        self.title.attributedText = attributedString
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

