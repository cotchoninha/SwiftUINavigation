//
//  ViewModels.swift
//  navigationSwiftUI
//
//  Created by Marcela Auslenter on 04/01/2022.
//

import Foundation

class FirstVM: ObservableObject, Identifiable {
    
    var text = "FirstVM"
    
    var coordinator: Coordinator
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func openSecondView() {
        coordinator.openSecondView()
    }
}



class SecondVM: ObservableObject, Identifiable {
    
    var text = "SecondVM"
    var coordinator: Coordinator
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func openThirdView() {
        coordinator.openThirdView()
    }
}

class ThirdVM: ObservableObject, Identifiable {
    
    var text = "ThirdVM"
    var coordinator: Coordinator
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func openFourthView() {
        coordinator.openFourthView()
    }
}

class FourthVM: ObservableObject, Identifiable {
    
    var text = "ThirdVM"
    var coordinator: Coordinator
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func openFifthView() {
        coordinator.openFifthView()
    }
    
    func openFourthViewDetails() {
        coordinator.openFourthViewDetails()
    }
}

class FifthVM: ObservableObject, Identifiable {
    
    var text = "ThirdVM"
    var coordinator: Coordinator
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func navigateToSecondView() {
        coordinator.navigateToSecondView()
    }
}
