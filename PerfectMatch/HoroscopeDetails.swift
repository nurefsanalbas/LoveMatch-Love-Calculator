//
//  HoroscopeDetails.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 23.07.2022.
//


import Foundation
import SwiftUI
import CoreLocation

struct HoroscopeDetails: Hashable, Codable {
    var name: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }

}
