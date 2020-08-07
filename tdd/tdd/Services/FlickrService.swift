//
//  FlickrService.swift
//  tdd
//
//  Created by Alex Tamoykin on 8/6/20.
//  Copyright © 2020 Right Balance. All rights reserved.
//

import Foundation

class FlickrService {
    let apiToken: String
    let isTest: Bool

    init(apiToken: String, isTest: Bool = false) {
        self.apiToken = apiToken
        self.isTest = isTest
    }

    func search(text: String) -> [Photo] {
        return [];
    }
}
