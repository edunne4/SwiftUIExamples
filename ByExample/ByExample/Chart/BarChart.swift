//
//  ContentView.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI
import Charts

struct BarChart: View {
    
    var data: [Movie] = [
        .init(genre: "Action", title: "Die Hard", ticketPrice: 12.99),
        .init(genre: "Drama", title: "The Godfather", ticketPrice: 10.99),
        .init(genre: "Comedy", title: "Superbad", ticketPrice: 9.99),
        .init(genre: "Horror", title: "The Shining", ticketPrice: 8.99),
        .init(genre: "Sci-Fi", title: "Star Wars", ticketPrice: 11.99)
    ]
    
    
    var body: some View {
        Chart {
            ForEach(data) { movie in
                BarMark(
                    x: .value("Genre", movie.genre),
                    y: .value("Ticket Price", movie.ticketPrice)
                )

            }
        }
        .chartForegroundStyleScale([
            "Action": .red, "Drama": .blue, "Comedy": .yellow, "Horror": .black, "Sci-Fi": .green
        ])
    }
    
}

#Preview {
    BarChart()
}
