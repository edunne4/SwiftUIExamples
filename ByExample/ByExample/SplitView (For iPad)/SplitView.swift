//
//  SplitView.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

struct Employee: Identifiable {
    let id = UUID()
    let name: String
}

/// NavigationSplitView example – two-column navigation split view
/// A view that presents views in two or three columns, where selections in
/// leading columns control presentations in subsequent columns
struct SplitView: View {
    @State private var employeeIds: Set<Employee.ID> = []
    
    let employees = [
        Employee(name: "Alice"),
        Employee(name: "Bob"),
        Employee(name: "Charlie")
    ]
    
    var body: some View {
        NavigationSplitView {
            List(employees, selection: $employeeIds) { employee in
                Text(employee.name)
            }
        } detail: {
            Text("Selected id: \(employeeIds.description)")
        }
    }
}

#Preview {
    SplitView()
}
