//
//  CircularGaugeExample.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

/// .gaugeStyle(_:)
/// Sets the style for gauges within this view.
///
/// https://developer.apple.com/documentation/swiftui/view/gaugestyle(_:)
struct CircularGaugeExample: View {
    @State private var current = 60.0
    @State private var minValue = 0.0
    @State private var maxValue = 100.0
    
    let gradient = Gradient(
        colors: [.red, .orange, .yellow, .green, .blue, .indigo, .purple]
    )
    
    var body: some View {
        VStack {
            HStack {
                circularGauge
                circularGaugeColorful
                circularGaugeColorfulTintGradient
            }
            HStack {
                circularCapacityGauge
                circularCapacityGaugeColorful
                circularCapacityGaugeColorfulTintGradient
            }
        }
    }
    
    @ViewBuilder
    private var circularGauge: some View {
        Gauge(value: current, in: minValue...maxValue) {
            Text("Volume")
        } currentValueLabel: {
            Text("\(Int(current))")
        } minimumValueLabel: {
            Text("\(Int(minValue))")
        } maximumValueLabel: {
            Text("\(Int(maxValue))")
        }
        .gaugeStyle(.accessoryCircular)
    }
    
    @ViewBuilder
    private var circularGaugeColorful: some View {
        Gauge(value: current, in: minValue...maxValue) {
            Image(systemName: "heart.fill")
                .foregroundStyle(.red)
        } currentValueLabel: {
            Text("\(Int(current))")
                .foregroundStyle(.green)
        } minimumValueLabel: {
            Text("\(Int(minValue))")
                .foregroundStyle(.green)
        } maximumValueLabel: {
            Text("\(Int(maxValue))")
                .foregroundStyle(.red)
        }
        .gaugeStyle(.accessoryCircular)
    }
    
    @ViewBuilder
    private var circularGaugeColorfulTintGradient: some View {
        Gauge(value: current, in: minValue...maxValue) {
            Image(systemName: "heart.fill")
                .foregroundStyle(.red)
        } currentValueLabel: {
            Text("\(Int(current))")
                .foregroundStyle(.green)
        } minimumValueLabel: {
            Text("\(Int(minValue))")
                .foregroundStyle(.green)
        } maximumValueLabel: {
            Text("\(Int(maxValue))")
                .foregroundStyle(.red)
        }
        .gaugeStyle(.accessoryCircular)
        .tint(gradient)
    }
    
    @ViewBuilder
    private var circularCapacityGauge: some View {
        Gauge(value: current, in: minValue...maxValue) {
            Text("Volume")
        } currentValueLabel: {
            Text("\(Int(current))")
        } minimumValueLabel: {
            Text("\(Int(minValue))")
        } maximumValueLabel: {
            Text("\(Int(maxValue))")
        }
        .gaugeStyle(.accessoryCircularCapacity)
    }
    
    @ViewBuilder
    private var circularCapacityGaugeColorful: some View {
        Gauge(value: current, in: minValue...maxValue) {
            Image(systemName: "heart.fill")
                .foregroundStyle(.red)
        } currentValueLabel: {
            Text("\(Int(current))")
                .foregroundStyle(.green)
        } minimumValueLabel: {
            Text("\(Int(minValue))")
                .foregroundStyle(.green)
        } maximumValueLabel: {
            Text("\(Int(maxValue))")
                .foregroundStyle(.red)
        }
        .gaugeStyle(.accessoryCircularCapacity)
    }

    @ViewBuilder
    private var circularCapacityGaugeColorfulTintGradient: some View {
        Gauge(value: current, in: minValue...maxValue) {
            Image(systemName: "heart.fill")
                .foregroundStyle(.red)
        } currentValueLabel: {
            Text("\(Int(current))")
                .foregroundStyle(.green)
        } minimumValueLabel: {
            Text("\(Int(minValue))")
                .foregroundStyle(.green)
        } maximumValueLabel: {
            Text("\(Int(maxValue))")
                .foregroundStyle(.red)
        }
        .gaugeStyle(.accessoryCircularCapacity)
        .tint(gradient)
    }
}

#Preview {
    CircularGaugeExample()
}
