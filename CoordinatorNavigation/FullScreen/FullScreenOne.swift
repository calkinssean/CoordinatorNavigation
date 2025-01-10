//
//  FullScreenOne.swift
//  CoordinatorNavigation
//
//  Created by Sean Calkins on 1/9/25.
//

import SwiftUI

struct FullScreenOne: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        List {
            Button("Dismiss") {
                coordinator.dismissFullScreenCover()
            }
        }.navigationTitle("Full Screen One")
    }
}
