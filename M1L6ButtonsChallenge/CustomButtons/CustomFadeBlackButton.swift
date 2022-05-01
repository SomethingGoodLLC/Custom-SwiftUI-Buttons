//
//  CustomFadeBlackButton.swift
//  M1L6ButtonsChallenge
//
//  Created by Leone on 5/1/22.
//

import SwiftUI

struct CustomFadeBlackButton: ButtonStyle {
 
    /// Configuration refers to the button itself
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
        
            // If configuration is pressed make rectangle black
            if configuration.isPressed {
                Rectangle()
                    .foregroundColor(.black)
                    .frame(height: 50)
                    .padding()
            }
            else {
                Rectangle()
                    .strokeBorder(.black)
                    .frame(height: 50)
                    .padding()
            }
           
            
            HStack {
                Image(systemName: "envelope")
                // Modify the text here
                configuration.label
                    
            }
            // If the button is pressed, then make the color white, else black
            .foregroundColor(configuration.isPressed ? .white : .black)
        }
    }
}
