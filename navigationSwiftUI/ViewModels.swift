//
//  ViewModels.swift
//  navigationSwiftUI
//
//  Created by Marcela Auslenter on 04/01/2022.
//

import Foundation

class FirstVM: ObservableObject, Identifiable {
    
    var text = "FirstVM"
    
    private weak var coordinator: Coordinator?
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func openSecondView() {
        coordinator?.openSecondView()
    }
    
    func openSecondDetailsView() {
        coordinator?.openSecondDetailsView()
    }
}



class SecondVM: ObservableObject, Identifiable {
    
    var text = "SecondVM"
    private weak var coordinator: Coordinator?
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func openThirdView() {
        coordinator?.openThirdView()
    }
}

class ThirdVM: ObservableObject, Identifiable {
    
    var text = "ThirdVM"
    private weak var coordinator: Coordinator?
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func openFourthView() {
        coordinator?.openFourthView()
    }
    
    func openFourthViewDetails() {
        coordinator?.openFourthViewDetails()
    }
}

class FourthVM: ObservableObject, Identifiable {
    
    var text = "ThirdVM"
    private weak var coordinator: Coordinator?
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func openFifthView() {
        coordinator?.openFifthView()
    }
    
    func openFifthDetailView() {
        coordinator?.openFifthDetailView()
    }
}

class FifthVM: ObservableObject, Identifiable {
    
    var text = "ThirdVM"
    private weak var coordinator: Coordinator?
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func backToSecondView() {
        coordinator?.backToSecondView()
    }
    
    func backToRoot() {
        coordinator?.backToRoot()
    }
}
