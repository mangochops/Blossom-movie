//
//  blossom_movieApp.swift
//  blossom movie
//
//  Created by mac on 3/1/26.
//

import SwiftUI
import SwiftData

@main
struct blossom_movieApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Title.self)
    }
}
