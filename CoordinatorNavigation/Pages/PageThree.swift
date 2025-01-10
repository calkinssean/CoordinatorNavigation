//
//  PageThree.swift
//  CoordinatorNavigation
//
//  Created by Sean Calkins on 1/9/25.
//

import SwiftUI

struct PageThree: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        List {
            Button("Pop") {
                coordinator.pop()
            }
            Button("Pop To Root") {
                coordinator.popToRoot()
            }
        }.navigationTitle("Page Three")
    }
}
