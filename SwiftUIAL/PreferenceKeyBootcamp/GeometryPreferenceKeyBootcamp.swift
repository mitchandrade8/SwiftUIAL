//
//  GeometryPreferenceKeyBootcamp.swift
//  SwiftUIAL
//
//  Created by Mitch Andrade on 5/9/23.
//

import SwiftUI

struct GeometryPreferenceKeyBootcamp: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(Color.blue)
            Spacer()
            HStack {
                Rectangle()
                Rectangle()
                Rectangle()
            }
            .frame(height: 55)
        }
    }
}

struct GeometryPreferenceKeyBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GeometryPreferenceKeyBootcamp()
    }
}
