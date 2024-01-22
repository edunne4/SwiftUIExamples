//
//  ImageView.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image(.building)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding()
            
            // Aspect ratio
            Image(.building)
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)

            // Frame
            Image(.building)
                .resizable()
                .frame(width: 300, height: 300, alignment: .bottom)

            // Shape
            Image(.building)
                .resizable()
                .cornerRadius(5)

            Image(.building)
                .resizable()
                .clipShape(Circle())

            // System Symbol
            Image(systemName: "cloud")
                .font(.largeTitle)

        }
    }
}

#Preview {
    ImageView()
}
