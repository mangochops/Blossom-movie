//
//  Constants.swift
//  blossom movie
//
//  Created by mac on 3/1/26.
//

import Foundation
import SwiftUI

struct Constants{
    static let homeString = "Home"
    static let  upcomingString = "Upcoming"
    static let searchString = "Search"
    static let downloadString = "Download"
    
    static let playString = "Play"
    
    static let trendingMovieString = "Trending Movies"
    static let trendingTVString = "Trending TV"
    static let topRatedMovieString = "Top Rated Movies"
    static let topRatedTvString = "Top Rated TV"
    static let movieSearchString = "Movie Search"
    static let tvSearchString = "TV Search"
    static let moviePlaceHolderString = "Search for a movie"
    static let tvPlaceHolderString = "Search for a TV Show"

    
    static let homeIconString = "house"
    static let upcomingIconString = "play.circle"
    static let searchIconString = "magnifyingglass"
    static let downloadIconString = "arrow.down.to.line"
    static let tvIconString = "tv"
    static let movieIconString = "movieclapper"
    
    static let testTitleURL = "https://image.tmdb.org/t/p/w500/8cdWjvZQUExUUTzyp4t6EDMubfO.jpg"
    static let testTitleURL2 = "https://image.tmdb.org/t/p/w500/1E5baAaEse26fej7uHcjOgEE2t2.jpg"
    static let testTitleURL3 = "https://image.tmdb.org/t/p/w500/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg"
    static let testTitleURL4 = "https://image.tmdb.org/t/p/w500/ngl2FKBlU4fhbdsrtdom9LVLBXw.jpg"
    
    static let posterURLStart = "https://image.tmdb.org/t/p/w500/"
    
    static func addPosterPath(to titles: inout[Title]) {
        for index in titles.indices {
            if let path = titles[index].posterPath {
                titles[index].posterPath = Constants.posterURLStart + path
            }
        }
    }
}

enum YoutubeURLStrings: String {
    case trailer = "trailer"
    case queryShorten = "q"
    case space = " "
    case key = "key"
}

extension Text {
    func ghostButton() -> some View{
        self
            .frame(width:100, height: 50)
            .foregroundStyle(.buttonText)
            .bold()
            .background{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                    .stroke(.buttonBorder,lineWidth: 2)
            }
    }
    
    func fullButton() -> some View{
        self
            .frame(width:100, height: 50)
            .foregroundStyle(.buttonText)
            .bold()
            .background{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                    .fill(.buttonBorder)
            }
    }
}

extension Text {
    func errorMessage() -> some View{
        self
            .foregroundStyle(.red)
            .padding()
            .background(.ultraThinMaterial)
            .clipShape(.rect(cornerRadius: 10))
    }
    
}
