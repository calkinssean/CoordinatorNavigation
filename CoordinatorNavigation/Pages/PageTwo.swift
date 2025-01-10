//
//  PageTwo.swift
//  CoordinatorNavigation
//
//  Created by Sean Calkins on 1/9/25.
//

import SwiftUI

struct PageTwo: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        List {
            Button("Go To Page Three") {
                coordinator.push(.pageThree)
            }
            Button("Pop") {
                coordinator.pop()
            }
        }
        .navigationTitle("Page Two")
    }
}
