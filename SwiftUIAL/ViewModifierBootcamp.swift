//
//  ViewModifierBootcamp.swift
//  SwiftUIAL
//
//  Created by Mitch Andrade on 5/6/23.
//

import SwiftUI

struct DefaultButtonViewModifier: ViewModifier {
    
    let backgroundColor: Color
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(10)
            .shadow(radius: 10)
            
    }
}

extension View {
    
    func withDefaultButtonFormatting(backgroundColor: Color = .blue) -> some View {
        modifier(DefaultButtonViewModifier(backgroundColor: backgroundColor))
    }
}

struct ViewModifierBootcamp: View {
    var body: some View {
        VStack(spacing: 15) {
            
            Text("Clippers in 6")
                .withDefaultButtonFormatting()
            
            Text("Lakers in 6")
                .withDefaultButtonFormatting()
            
            Text("Nuggets in 6")
                .withDefaultButtonFormatting()
        }
        .padding()
    }
}

struct ViewModifierBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierBootcamp()
    }
}
