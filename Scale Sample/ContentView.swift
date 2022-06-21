//
//  ContentView.swift
//  Scale Sample
//
//  Created by zhaoxin on 2022/6/21.
//

import SwiftUI

struct ContentView<T:View>: View {
    @State private var view:T?
    var views:[T]
    private let updateViewPublisher = NotificationCenter.default.publisher(for: Notification.Name.updateView)
    
    var body: some View {
        VStack {
            if let view = view {
                view
                    .font(.system(size: 100))
            }
            IndexView(views: views)
                .frame(maxHeight: 200)
        }
        .frame(minWidth: 800,  minHeight: 600)
        .onReceive(updateViewPublisher) { notification in
            if let userInfo = notification.userInfo as? [String:T], let view = userInfo["view"] {
                self.view = view
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(views: [
            Image(systemName: "sun.max"),
            Image(systemName: "moon")
        ])
    }
}
