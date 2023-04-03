//
//  YoutubeSearchResponse.swift
//  Netflix Clone
//
//  Created by Batuhan Kacmaz on 3.04.2023.
//

import Foundation


struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: VideoElementID
}


struct VideoElementID: Codable {
    let kind: String
    let videoId: String
}
