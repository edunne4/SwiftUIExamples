//
//  ActivityRingExample.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import HealthKit
import SwiftUI

struct ActivityRingExample: View {
    @State private var activitySummary = HKActivitySummary()
    
    var body: some View {
        ZStack {
            RingActivity(activitySummary: $activitySummary)
                .onAppear {
                    postLoadData()
                }
        }
        .background(Color.black)
    }
    
    func postLoadData() {
        // Move: active enery burned / goal
        // Quantity unit must be energy, ie. calorie
        activitySummary.activeEnergyBurned = HKQuantity(unit: .largeCalorie(), doubleValue: 30)
        activitySummary.activeEnergyBurnedGoal = HKQuantity(unit: .largeCalorie(), doubleValue: 100)
        
        // Exercise: exercise time / goal
        // Quantity unit must be time (hour, minute, or second)
        activitySummary.appleExerciseTime = HKQuantity(unit: .minute(), doubleValue: 20)
        activitySummary.appleExerciseTimeGoal = HKQuantity(unit: .minute(), doubleValue: 30)
        
        
        // Stand: hours time / goal
        // Quantity unit must be count
        activitySummary.appleStandHours = HKQuantity(unit: .count(), doubleValue: 1)
        activitySummary.appleStandHoursGoal = HKQuantity(unit: .count(), doubleValue: 4)
    }
}

#Preview {
    ActivityRingExample()
}
