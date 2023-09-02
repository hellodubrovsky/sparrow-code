//
//  AppDelegate.swift
//  SparrowCode
//
//  Created by Илья Дубровский on 02.09.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow()
        guard let window = window else { return false }
        window.rootViewController = ViewController() 
        window.makeKeyAndVisible()
        return true
    }
}
