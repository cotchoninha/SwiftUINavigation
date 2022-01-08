//
//  ContentView.swift
//  navigationSwiftUI
//
//  Created by Marcela Auslenter on 04/01/2022.
//

import SwiftUI

struct FirstView: View {
    
    @ObservedObject var firstvm: FirstVM

    var body: some View {
        
        VStack(spacing: 20) {
            
            Button {
                firstvm.openSecondView()
            } label: {
                Text("Open Second View")
            }
            
            Button {
                firstvm.openSecondDetailsView()
            } label: {
                Text("Open Second Details View")
            }
            
            
        }
        .navigationTitle("First View")
    }
}

struct SecondView: View {
    
    @ObservedObject var secondVM: SecondVM

    var body: some View {
        Button {
            secondVM.openThirdView()
        } label: {
            Text("Open Third View")
        }
        .navigationTitle("Second View")
    }
}

struct SecondDetailsView: View {
    
    @ObservedObject var secondVM: SecondVM

    var body: some View {
        Text("NAVIGATION ENDS HERE")
        .navigationTitle("Second View")
    }
}

struct ThirdView: View {
    
    @ObservedObject var thirdVM: ThirdVM
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Button {
                thirdVM.openFourthView()
            } label: {
                Text("Open Fourth View")
            }
            
            Button {
                thirdVM.openFourthViewDetails()
            } label: {
                Text("Open Fourth Detail View")
            }
        }
        
        .navigationTitle("Third View")
    }
}

struct FourthView: View {
    
    @ObservedObject var fourthVM: FourthVM
    
    var body: some View {
        Button {
            fourthVM.openFifthView()
        } label: {
            Text("Open Fifth View")
        }
        .navigationTitle("Fourth View")
    }
}

struct FourthDetailsView: View {
    
    @ObservedObject var fourthVM: FourthVM
    
    var body: some View {
        Button {
            fourthVM.openFifthDetailView()
        } label: {
            Text("Open Fifth Details View")
        }
        .navigationTitle("Fourth Detail View")
    }
}

struct FifthView: View {
    
    @ObservedObject var fifthVM: FifthVM
    
    var body: some View {
        Button {
            fifthVM.navigateToSecondView()
        } label: {
            Text("Go back to second view")
        }
        .navigationTitle("Fifth View")
    }
}

struct FifthDetailsView: View {
    
    @ObservedObject var fifthVM: FifthVM
    
    var body: some View {
        Button {
            fifthVM.backRootAndOpenSecondDetailsView()
        } label: {
            Text("Back to root and open to second view")
        }
        .navigationTitle("Fifth Details View")
    }
}

