//
//  PageOne.swift
//  CoordinatorNavigation
//
//  Created by Sean Calkins on 1/9/25.
//

import SwiftUI

struct PageOne: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        List {
            Button("Go To Page Two") {
               coordinator.push(.pageTwo)
            }
            Button("Present Sheet") {
                coordinator.present(sheet: .sheetOne)
            }
            Button("Present Full Screen Sheet") {
                coordinator.present(fullScreenCover: .fullScreenOne)
            }
        }.navigationTitle("Page One")
    }
}
