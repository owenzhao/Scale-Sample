//
//  Scale_SampleApp.swift
//  Scale Sample
//
//  Created by zhaoxin on 2022/6/21.
//

import SwiftUI

@main
struct Scale_SampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(views: [
                Image(systemName: "sun.max"),
                Image(systemName: "moon")
            ])
            
            ContentView(views: [
                WebView(url: URL(string: "https://google.com")!),
                WebView(url: URL(string: "https://apple.com")!)
            ])
        }
    }
}
