//
//  wayApp.swift
//  way
//
//  Created by ryu hyunsun on 2022/04/27.
//

import SwiftUI

@main
struct wayApp: App {
    // @UIApplicationDelegateAdaptor : UIKit에서 대리자를 제공하는 데 앱에서 사용되는 속성 래퍼
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
