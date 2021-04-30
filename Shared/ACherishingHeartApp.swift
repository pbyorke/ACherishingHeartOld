//
//  ACherishingHeartApp.swift
//  Shared
//
//  Created by Pete Yorke on 4/30/21.
//

import SwiftUI
import Firebase

@main
struct ACherishingHeartApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {

    let ground = true

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        if ground { do{try Auth.auth().signOut()}catch{} }
        var user = Auth.auth().currentUser
        if user == nil {
            print("* *   currentUser not found")
            Auth.auth().signInAnonymously() { authResult, error in
                user = Auth.auth().currentUser
                print("* * *  anonymous currentUser created \(user?.uid ?? "")")
            }
        } else {
            print("* * *  currentUser found \(user?.uid ?? "")")
        }
        return true
    }
    
}
