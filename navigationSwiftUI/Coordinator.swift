//
//  Coordinator.swift
//  navigationSwiftUI
//
//  Created by Marcela Auslenter on 04/01/2022.
//

import Foundation

class Coordinator: ObservableObject, Identifiable {
    
    @Published var firstViewModel: FirstVM!
    @Published var secondViewModel: SecondVM?
    @Published var thirdViewModel: ThirdVM?
    @Published var fourthViewModel: FourthVM?
    @Published var fifthViewModel: FifthVM?
    @Published var fourthDetailsVM: FourthVM?

    init() {
        self.firstViewModel = FirstVM(coordinator: self)
    }
    
    func openFirstView() {
        firstViewModel = FirstVM(coordinator: self)
    }

    func openSecondView() {
        secondViewModel = SecondVM(coordinator: self)
    }
    
    func openThirdView() {
        thirdViewModel = ThirdVM(coordinator: self)
    }
    
    func openFourthView() {
        fourthViewModel = FourthVM(coordinator: self)
    }
    
    func openFourthViewDetails() {
        fourthDetailsVM = FourthVM(coordinator: self)
    }
    
    func openFifthView() {
        fifthViewModel = FifthVM(coordinator: self)
    }
    
    func navigateToSecondView() {
        fifthViewModel = nil
        fourthViewModel = nil
        thirdViewModel = nil
    }
}
