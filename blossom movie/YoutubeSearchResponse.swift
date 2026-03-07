//
//  YoutubeSearchResponse.swift
//  blossom movie
//
//  Created by mac on 3/6/26.
//

import Foundation

struct YoutubeSearchResponse: Codable {
    let items: [ItemProperties]?
}

struct ItemProperties: Codable{
    let id: IdProperties?
}

struct IdProperties: Codable {
    let videoId: String?
}
