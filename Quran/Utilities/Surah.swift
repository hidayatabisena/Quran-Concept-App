//
//  Surah.swift
//  Quran
//
//  Created by Hidayat Abisena on 28/12/22.
//

import Foundation

class Surah: ObservableObject {
    @Published var showingSurah: Bool = false
    @Published var selectedSurah: Verses?
}
