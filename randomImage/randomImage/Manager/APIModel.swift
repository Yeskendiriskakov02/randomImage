//
//  APIModel.swift
//  randomImage
//
//  Created by Yeskendir on 24.03.2022.
//

import UIKit

protocol ImageDelegate{
    func changeImage()
}

struct APIResponse: Codable {
    let total: Int
    let total_pages: Int
    let results: [Result]
}

struct Result: Codable {
    let id: String
    let urls: URLS
}

struct URLS: Codable {
    let full: String
}
