//
//  AppDelegate.swift
//  DBManager
//
//  Created by 陈凯文 on 2019/9/19.
//  Copyright © 2019 陈凯文. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    private let dbVersionKey = "dbVersionKey"

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        DBManager.standard.initUpdateDB()
//        let dbVersion = (Bundle.main.infoDictionary!["DBVersion"] as! NSNumber).intValue
//        let olderVersion = UserDefaults.standard.integer(forKey: self.dbVersionKey)
//        ///判断当前数据库 是否 需要升级
//        if dbVersion > olderVersion {
//            let path = Bundle.main.path(forResource: "DBModel", ofType: "plist")
//            let classDic = NSDictionary.init(contentsOfFile: path!)
//            let keyArray = classDic?.allKeys.sorted(by: { (obj1, obj2) -> Bool in
//                if Int(obj1 as! String)! > Int(obj2 as! String)! {
//                    return false
//                }
//                return true
//            })
//            for item in keyArray! {
//                let key = item as! String
//                if Int(key)! > olderVersion {
//                    let classArray = classDic![key] as! [String]
//                    for name in classArray {
//                        //动态获取命名空间
//                        let namespace = Bundle.main.infoDictionary!["CFBundleExecutable"] as! String
//                        //注意工程中必须有相关的类，否则程序会crash
//                        let className : AnyClass? = NSClassFromString(namespace + "." + name)
//                        //                        let classType = className as? BaseModel.Type
//                        if let classType = className as? CKDBManager.Type {
//                            classType.ck_initTable()
//                            ck_print(className)
//                        }
//                    }
//                }
//            }
//            //            UserDefaults.standard.set(dbVersion, forKey: self.dbVersionKey)
//            //            UserDefaults.standard.synchronize()
//        }
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

