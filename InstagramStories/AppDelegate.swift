//
//  AppDelegate.swift
//  InstagramStories
//
//  Created by Rustem Manafov on 03.01.23.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    let window: UIWindow = {
        let w = UIWindow()
        w.backgroundColor = .white
        w.makeKeyAndVisible()
        return w
    }()
    /// set orientations you want to be allowed in this property by default
    var orientationLock = UIInterfaceOrientationMask.all
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        rootSceneSetup()
        return true
    }
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return self.orientationLock
    }
}

extension AppDelegate {
     func rootSceneSetup() {
        let nc = UINavigationController(rootViewController: IGHomeController())
        nc.navigationBar.isTranslucent = false
        window.rootViewController = nc
    }
}
