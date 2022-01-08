//
//  ViewsContainer.swift
//  navigationSwiftUI
//
//  Created by Marcela Auslenter on 04/01/2022.
//

import SwiftUI

struct ViewsContainer: View {
    
    @StateObject var coordinator = Coordinator()
    
    var body: some View {
        
        NavigationView {
            
            FirstView(firstvm: coordinator.firstViewModel)
            
                .navigation(item: $coordinator.secondViewModel) {
                    SecondView(secondVM: $0)
                    
                        .navigation(item: $coordinator.thirdViewModel) {
                            ThirdView(thirdVM: $0)
                            
                                .navigation(item: $coordinator.fourthViewModel) {
                                    FourthView(fourthVM: $0)
                                    
                                        .navigation(item: $coordinator.fifthViewModel) {
                                            FifthView(fifthVM: $0)
                                        }
                                }
                            
                                .navigation(item: $coordinator.fourthDetailsVM) {
                                    FourthDetailsView(fourthVM: $0)
                                    
                                        .navigation(item: $coordinator.fifthDetailsViewModel) {
                                            FifthDetailsView(fifthVM: $0)
                                        }
                                }
                        }
                }
            
                .navigation(item: $coordinator.secondDetailsViewModel) {
                    SecondDetailsView(secondVM: $0)
                }
            
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
