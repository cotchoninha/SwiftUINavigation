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
    @Published var secondDetailsViewModel: SecondVM?
    @Published var thirdViewModel: ThirdVM?
    @Published var fourthViewModel: FourthVM?
    @Published var fourthDetailsVM: FourthVM?
    @Published var fifthViewModel: FifthVM?
    @Published var fifthDetailsViewModel: FifthVM?

    init() {
        self.firstViewModel = FirstVM(coordinator: self)
        print("Coordinator init called")
    }
    
    func openFirstView() {
        firstViewModel = FirstVM(coordinator: self)
    }

    func openSecondView() {
        secondViewModel = SecondVM(coordinator: self)
    }
    
    func openSecondDetailsView() {
        secondDetailsViewModel = SecondVM(coordinator: self)
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
    
    func openFifthDetailView() {
        fifthDetailsViewModel = FifthVM(coordinator: self)
    }
    
    func backToRoot() {
        fifthDetailsViewModel = nil
        fourthDetailsVM = nil
        thirdViewModel = nil
        secondViewModel = nil
    }
    
    func backToSecondView() {
        fifthViewModel = nil
        fourthViewModel = nil
        thirdViewModel = nil
    }
}
