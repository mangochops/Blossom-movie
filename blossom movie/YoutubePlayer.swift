//
//  YoutubePlayer.swift
//  blossom movie
//
//  Created by mac on 3/6/26.
//

import WebKit
import SwiftUI


struct YoutubePlayer: UIViewRepresentable{
    let webView = WKWebView()
    let videoId: String
    let youtubeBaseURL = APIConfig.shared?.youtubeBaseURL
    
    func makeUIView(context: Context) -> some UIView{
        webView
    }
    
//    func makeUIView(context: Context) -> WKWebView {  // Return WKWebView directly
//        let config = WKWebViewConfiguration()
//        config.allowsInlineMediaPlayback = true
//        config.mediaTypesRequiringUserActionForPlayback = []  // Allow autoplay if desired
//        
//        let webView = WKWebView(frame: .zero, configuration: config)
//        webView.scrollView.isScrollEnabled = false
//        return webView
//    }
    
    func updateUIView(_ uiView: UIViewType, context: Context){
        guard let baseURLString = youtubeBaseURL,
              let baseURL = URL(string: baseURLString) else {return}
        let fullURL = baseURL.appending(path: videoId)
        webView.load(URLRequest(url:fullURL))
    }
}
