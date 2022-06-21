//
//  WebView.swift
//  Internet Helper
//
//  Created by zhaoxin on 2022/6/13.
//

import Foundation
import SwiftUI
import WebKit

struct WebView:NSViewRepresentable, Equatable, Identifiable {
    var id: String {
        return url.absoluteString
    }
    
    static func == (lhs: WebView, rhs: WebView) -> Bool {
        return lhs.url == rhs.url
    }
    
    @State var url:URL
    
    func makeNSView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.customUserAgent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Safari/605.1.15"
        
        return webView
    }
    
    func updateNSView(_ nsView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        nsView.load(request)
    }
}
