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
    
    case sheetOne
    
    var id: String { self.rawValue }
}

enum FullScreenCover: String, Identifiable {
    
    case fullScreenOne
    
    var id: String { self.rawValue }
}

class Coordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    @Published var sheet: Sheet?
    @Published var fullScreenCover: FullScreenCover?
    
    func push(_ page: Page) {
        path.append(page)
    }
    
    func present(sheet: Sheet) {
        self.sheet = sheet
    }
    
    func present(fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
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
    
    func dismissFullScreenCover() {
        self.fullScreenCover = nil
    }
    
    @ViewBuilder
    func build(_ page: Page) -> some View {
        switch page {
        case .pageOne: PageOne()
        case .pageTwo: PageTwo()
        case .pageThree: PageThree()
        }
    }
    
    @ViewBuilder
    func build(sheet: Sheet) -> some View {
        switch sheet {
        case .sheetOne:
            NavigationStack {
                SheetOne()
            }
        }
    }
    
    @ViewBuilder
    func build(fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
        case .fullScreenOne:
            NavigationStack {
                FullScreenOne()
            }
        }
    }
    
}
