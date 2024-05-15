//
//  Course_AppApp.swift
//  Course App
//
//  Created by Gerardo Reyes on 27.04.2024.
//

import os
import SwiftUI
import UIKit


/*
@main
struct CourseApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
*/


class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {
        // Sorry I had issues importing FirebaseCore :P
        // FirebaseApp.configure()
        true
    }
    
}


@main
// swiftlint:disable:next file_types_order
struct CourseApp: App {
    
    // register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    private let logger = Logger()
    private let isUIKit = true
    var body: some Scene {
        WindowGroup {
            homeView
                .onAppear {
                    logger.info("Content view has appeared")
                }
        }
    }

    @ViewBuilder
    var homeView: some View {
        if isUIKit {
            HomeworkView()
        }
    }
    
}


struct HomeworkView: UIViewControllerRepresentable {
    
    // makeUIViewController is a function that conforms UIViewcontrollerRepresentable protocol
    func makeUIViewController(context: Context) -> HomeworkViewController {
        HomeworkViewController(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    // updateUIViewcontroller is a function that conforms UIViewControllerRepresentable protocol
    func updateUIViewController(_ uiViewController: HomeworkViewController, context: Context) {
    }
    
}
