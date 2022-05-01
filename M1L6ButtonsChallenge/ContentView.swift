//
//  ContentView.swift
//  M1L6ButtonsChallenge
//
//  Created by Leone on 5/1/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            // MARK: Message Contact Button
            Button("Contact") {
                print("contact button pressed")
            }
                .buttonStyle(CustomFadeBlackButton())
            
            // MARK: Ghost Button
            Button("Ghost Button") {
                print("Tapped ghost button")
            }
                .buttonStyle(CustomPressedGreyButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
