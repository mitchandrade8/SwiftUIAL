//
//  ViewModifierBootcamp.swift
//  SwiftUIAL
//
//  Created by Mitch Andrade on 5/6/23.
//

import SwiftUI

struct DefaultButtonViewModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .cornerRadius(10)
            .shadow(radius: 10)
            .padding()
        
    }
}

extension View {
    
    func withDefaultButtonFormatting() -> some View {
        modifier(DefaultButtonViewModifier())
    }
}

struct ViewModifierBootcamp: View {
    var body: some View {
        VStack {
            
            Text("Clippers in 6")
                .withDefaultButtonFormatting()
        }
    }
}

struct ViewModifierBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierBootcamp()
    }
}
