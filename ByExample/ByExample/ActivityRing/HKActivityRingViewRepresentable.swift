//
//  HKActivityRingViewRepresentable.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import HealthKitUI
import SwiftUI
import UIKit

struct RingActivity: UIViewRepresentable {
    @Binding var activitySummary: HKActivitySummary
    
    func makeUIView(context: Context) -> HKActivityRingView {
        return HKActivityRingView()
    }
    
    func updateUIView(_ uiView: HKActivityRingView, context: Context) {
        uiView.setActivitySummary(activitySummary, animated: true)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject {
        var parent: RingActivity
        
        init(_ ringView: RingActivity) {
            self.parent = ringView
        }
    }
}
