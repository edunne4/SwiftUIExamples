//
//  ThreeColumnSplitView.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

struct Department: Identifiable {
    let id = UUID()
    let name: String
    var employees: [Employee]
}

/// Three-column navigation split view example
struct ThreeColumnSplitView: View {
    @State private var departmentId: Department.ID? // single selection
    @State private var employeeIds: Set<Employee.ID> = [] // multiple selection
    
    let departments = [
        Department(
            name: "Engineering",
            employees: [
                Employee(name: "Alice"),
                Employee(name: "Bob"),
                Employee(name: "Charlie")
            ]
        ),
        Department(
            name: "Finance",
            employees: [
                Employee(name: "Debi"),
                Employee(name: "Elvis"),
                Employee(name: "Frank")
            ]
        )
    ]
    
    var body: some View {
        NavigationSplitView {
            List(departments, selection: $departmentId) { department in
                Text(department.name)
            }
        } content: {
            if let department = department(from: departmentId) {
                List(department.employees, selection: $employeeIds) { employee in
                    Text(employee.name)
                }
            } else {
                Text("Select a department")
            }
        } detail: {
            Text("Selected id: \(employeeIds.description)")
        }
    }
    
    func department(from id: Department.ID?) -> Department? {
        guard let id else { return nil }
        return departments.first(where: { $0.id == id })
    }
}

#Preview {
    ThreeColumnSplitView()
}
