//
//  Coordinator.swift
//  CoordinatorNavigation
//
//  Created by Sean Calkins on 1/9/25.
//

import SwiftUI

enum Page: String, Identifiable {
    
    case pageOne, pageTwo, pageThree
    
    var id: String { self.rawValue }
}

enum Sheet: String, Identifiable {
    
    case sheetOne, sheetTwo
    
    var id: String { self.rawValue }
}

enum FullScreen: String, Identifiable {
    
    case fullScreenOne, fullScreenTwo
    
    var id: String { self.rawValue }
}

class Coordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    @Published var sheet: Sheet?
    @Published var fullScreen: FullScreen?
    
    func push(_ page: Page) {
        path.append(page)
    }
    
    func present(sheet: Sheet) {
        self.sheet = sheet
    }
    
    func present(fullScreen: FullScreen) {
        self.fullScreen = fullScreen
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func dismissSheet() {
        self.sheet = nil
    }
    
    func dismissFullScreen() {
        self.fullScreen = nil
    }
    
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
        case .pageOne: PageOne()
        case .pageTwo: PageTwo()
        case .pageThree: PageThree()
        }
    }
 
    @ViewBuilder
    func buildSheet(sheet: Sheet) -> some View {
        switch sheet {
        case .sheetOne: SheetOne()
        case .sheetTwo: SheetTwo()
        }
    }
    
    @ViewBuilder
    func buildFullScreen(fullScreen: FullScreen) -> some View {
        switch fullScreen {
        case .fullScreenOne: FullScreenOne()
        case .fullScreenTwo: FullScreenTwo()
        }
    }
}
