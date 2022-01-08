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
        Button {
            firstvm.openSecondView()
        } label: {
            Text("Open Second View")
        }
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
    }
}

struct ThirdView: View {
    
    @ObservedObject var thirdVM: ThirdVM
    
    var body: some View {
        Button {
            thirdVM.openFourthView()
        } label: {
            Text("Open Fourth View")
        }
    }
}

struct FourthView: View {
    
    @ObservedObject var fourthVM: FourthVM
    
    var body: some View {
        VStack {
            Button {
                fourthVM.openFifthView()
            } label: {
                Text("Open Fifth View")
            }
            Button {
                fourthVM.openFourthViewDetails()
            } label: {
                Text("Fourth View")
            }
        }
    }
}

struct FourthDetailsView: View {
    
    @ObservedObject var fourthVM: FourthVM
    
    var body: some View {
        VStack {
            Button {
                print("")
            } label: {
                Text("Fourth Details View")
            }
        }
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
    }
}

