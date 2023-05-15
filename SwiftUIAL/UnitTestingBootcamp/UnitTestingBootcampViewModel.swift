//
//  UnitTestingBootcampViewModel.swift
//  SwiftUIAL
//
//  Created by Mitch Andrade on 5/15/23.
//

import Foundation
import SwiftUI

class UnitTestingBootcampViewModel: ObservableObject {
    
    @Published var isPremium: Bool
    
    init(isPremium: Bool) {
        self.isPremium = isPremium
    }
    
}
