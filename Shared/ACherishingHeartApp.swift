//
//  ACherishingHeartApp.swift
//  Shared
//
//  Created by Pete Yorke on 4/30/21.
//
// https://developer.apple.com/forums/thread/679182
//

import SwiftUI
import Firebase

@main
struct ACherishingHeartApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var authenticator = Authenticator()

    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(authenticator)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
    
}
