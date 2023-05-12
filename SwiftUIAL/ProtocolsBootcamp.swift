//
//  ProtocolsBootcamp.swift
//  SwiftUIAL
//
//  Created by Mitch Andrade on 5/12/23.
//

import SwiftUI

struct DefaultColorTheme: ColorThemeProtocol {
    let primary: Color = .blue
    let secondary: Color = .white
    let tertiary: Color = .gray
}

struct AlternativeColorTheme {
    let primary: Color = .mint
    let secondary: Color = .white
    let tertiary: Color = .black
}

struct AnotherColorTheme: ColorThemeProtocol {
    var primary: Color = .purple
    var secondary: Color = .white
    var tertiary: Color = .pink
}

protocol ColorThemeProtocol {
    var primary: Color { get }
    var secondary: Color { get }
    var tertiary: Color { get }
}

protocol ButtonTextProtocol {
    var buttonText: String { get }
}

protocol ButtonPressedProtocol {
    func buttonPressed()
}

protocol ButtonDataSourceProtocol: ButtonTextProtocol, ButtonPressedProtocol {
    
}

class DefaultDataSource: ButtonDataSourceProtocol {
    var buttonText: String = "Protocols are awesome"
    
    func buttonPressed() {
        print("Button was pressed!")
    }
}

class AlternativeDataSource: ButtonTextProtocol {
    var buttonText: String = "Protocols are lame."
}

struct ProtocolsBootcamp: View {

    let colorTheme: ColorThemeProtocol
    let dataSource: ButtonDataSourceProtocol
    
    var body: some View {
        ZStack {
            colorTheme.tertiary
                .ignoresSafeArea()
            
            Text(dataSource.buttonText)
                .font(.headline)
                .foregroundColor(colorTheme.secondary)
                .padding()
                .background(colorTheme.primary)
                .cornerRadius(10)
                .onTapGesture {
                    dataSource.buttonPressed()
                }
        }
    }
}

struct ProtocolsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ProtocolsBootcamp(colorTheme: AnotherColorTheme(), dataSource: DefaultDataSource())
    }
}
