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
    
    static let homeIconString = "house"
    static let upcomingIconString = "play.circle"
    static let searchIconString = "magnifyingglass"
    static let downloadIconString = "arrow.down.to.line"
    
    static let testTitleURL = "http://ia.media-imdb.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1._SX320.jpg"
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
