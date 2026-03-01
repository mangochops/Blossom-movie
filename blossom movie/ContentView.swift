//
//  ContentView.swift
//  blossom movie
//
//  Created by mac on 3/1/26.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView{
            Text(Constants.homeString)
                    .tabItem {
                        Label(Constants.homeString, systemImage: Constants.homeIconString)
                    }
            Text(Constants.upcomingString)
                    .tabItem {
                        Label(Constants.upcomingString, systemImage: Constants.upcomingIconString)
                    }
            Text(Constants.searchString)
                    .tabItem {
                        Label(Constants.searchString, systemImage: Constants.searchIconString)
                    }
            Text(Constants.downloadString)
                    .tabItem {
                        Label(Constants.downloadString, systemImage: Constants.downloadIconString)
                    }
        }
    }
}

#Preview {
    ContentView()
}
