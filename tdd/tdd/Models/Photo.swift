//
//  Photo.swift
//  tdd
//
//  Created by Alex Tamoykin on 8/6/20.
//  Copyright © 2020 Right Balance. All rights reserved.
//

import Foundation

struct Photo {
    let id: String
    let title: String
    let isPublic: Bool
    let server: String
    let secret: String
    let farm: String

    func getImagePath() -> URL? {
        let path = "http://farm\(self.farm).static.flickr.com/\(self.server)/\(self.id)_\(self.secret).jpg"
        return URL(string: path)
    }
}
