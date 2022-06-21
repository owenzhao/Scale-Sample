//
//  BigView.swift
//  Scale Sample
//
//  Created by zhaoxin on 2022/6/21.
//

import SwiftUI

struct BigView: View {
    var list = Array(repeating: UUID(), count: 50)
    
    var body: some View {
        List(list) {
            Text($0.uuidString)
        }
    }
}

struct BigView_Previews: PreviewProvider {
    static var previews: some View {
        BigView()
    }
}

extension UUID:Identifiable {
    public var id: UUID {
        return self
    }
}
