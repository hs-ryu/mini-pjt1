//
//  AppDeletage.swift
//  way
//
//  Created by ryu hyunsun on 2022/05/05.
//

import SwiftUI


// NSObject : 대부분의 Objective-C 클래스 계층 구조의 루트 클래스. 여기서 하위 클래스는 런타임 시스템에 대한 기본 인터페이스와 Objective-c 개채로 동작하는 기능을 상속
// UIApplicationDelegate : 앱의 공유 동작을 관리하는 메서드 집합.
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil ) -> Bool{
        // 메인으로 넘어가기 전에 필요한 작업 넣기.
        Thread.sleep(forTimeInterval: 1.5)
        return true
    }
}
