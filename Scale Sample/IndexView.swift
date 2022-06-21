//
//  IndexView.swift
//  Scale Sample
//
//  Created by zhaoxin on 2022/6/21.
//

import SwiftUI

struct IndexView<T:View>: View {
    var views:[T]
    var body: some View {
        HStack() {
            PreviewContainerView(view: views.first!)
            PreviewContainerView(view: views.last!)
        }
    }
}

struct IndexView_Previews: PreviewProvider {
    static var previews: some View {
        IndexView(views: [
            Image(systemName: "sun.max"),
            Image(systemName: "moon")
        ])
    }
}
