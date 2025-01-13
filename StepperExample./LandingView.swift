//
//  LandingView.swift
//  StepperExample.
//
//  Created by 李泽宇 on 2025-01-13.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        TabView(selection: Binding.constant(1)) {
            PowersView()
                .tabItem {
                    (Image(systemName: "multiply"))
                    Text("Power")
                }
                .tag(1)
            
            AddView()
                .tabItem {
                    (Image(systemName: "plus"))
                    Text("Add")
                }
                .tag(2)
            
            SubtractView()
                .tabItem {
                    (Image(systemName: "minus"))
                    Text("Subtract")
                }
                .tag(3)
        }
    }
}

#Preview {
    LandingView()
}
