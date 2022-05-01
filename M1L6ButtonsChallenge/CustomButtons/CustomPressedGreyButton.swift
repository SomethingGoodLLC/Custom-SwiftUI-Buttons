//
//  CustomPressedGreyButton.swift
//  M1L6ButtonsChallenge
//
//  Created by Leone on 5/1/22.
//

import SwiftUI

/**
 Creates a custom gray button, which fades the border upon pressing the button. It does not fade the text.
 */
struct CustomPressedGreyButton: ButtonStyle {
 
    /// Configuration refers to the button itself
    func makeBody(configuration: Configuration) -> some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .stroke(.gray)
                .frame(height: 50)
                .padding(.horizontal)
                .shadow(radius: 5)
                // If the button is pressed, then set the opacity to 0%, else display the full button
                .opacity(configuration.isPressed ? 0 : 1)
            
            // Modify the text here
            configuration.label
                .foregroundColor(.gray)
        }
       
        
    }
}
