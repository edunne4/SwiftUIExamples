//
//  ContentView.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import Foundation

struct Movie: Identifiable {
    var genre: String
    var title: String
    var ticketPrice: Double
    var id = UUID()
}
