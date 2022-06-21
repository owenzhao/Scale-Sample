//
//  PreviewContainerView.swift
//  Scale Sample
//
//  Created by zhaoxin on 2022/6/21.
//

import SwiftUI

struct PreviewContainerView<T:View>: View {
    let view:T
    @State var scaleValue = 0.5
    
    var body: some View {
        view
            .font(.system(size: 50))
            .scaleEffect(scaleValue)
            .animation(.default, value: scaleValue)
            .overlay(Color.white.opacity(0.01))
            .onTapGesture {
                NotificationCenter.default.post(name: Notification.Name.updateView, object: self, userInfo: ["view": view])
            }
    }
}

struct PreviewContainerView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewContainerView(view: WebView(url: URL(string: "https://zhaoxin.pro")!))
    }
}

extension Notification.Name {
    static let updateView = Notification.Name("updateView")
}
