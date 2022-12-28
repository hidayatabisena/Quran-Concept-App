//
//  Verses.swift
//  Quran
//
//  Created by Hidayat Abisena on 28/12/22.
//

import Foundation

struct Verses: Codable, Identifiable {
    let id: Int
    let imageNumber: String
    let surah: String
    let ayat: String
    let verses: Int
    let image: String
}
