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
            HomeView()
                    .tabItem {
                        Label(Constants.homeString, systemImage: Constants.homeIconString)
                        
                        
                    }
            UpcomingView()
                    .tabItem {
                        Label(Constants.upcomingString, systemImage: Constants.upcomingIconString)
                    }
            SearchView()
                    .tabItem {
                        Label(Constants.searchString, systemImage: Constants.searchIconString)
                    }
            DownloadView()
                    .tabItem {
                        Label(Constants.downloadString, systemImage: Constants.downloadIconString)
                    }
        }
        .onAppear{
            if let config = APIConfig.shared {
                print(config.tmdbAPIKey)
                print(config.tmdbBaseURL)
            }
        }
    }
}

#Preview {
    ContentView()
}
