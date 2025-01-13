//
//  AddView.swift
//  StepperExample.
//
//  Created by 李泽宇 on 2025-01-13.
//

//
//  ContentView.swift
//  StepperExample
//
 
import SwiftUI
 
struct SubtractView: View {
    
    // MARK: Stored properties
    @State var base: Int = 1
    @State var base2: Int = 1
    
    // MARK: Computed properties
    var sum: Int {
        return base - base2
    }
    
    var body: some View {
        VStack {
            
            Spacer()
            
            VStack(alignment: .trailing) {
                
                HStack {
                    
                    Spacer()
                    
                    Text("\(base)")
                        .font(.system(size: 80))
                }
                Stepper(value: $base, label: {
                    Text("select first number")
                })
                
                HStack {
                    Text("-")
                        .font(.system(size: 80))
                    Spacer()
                    Text("\(base2)")
                        .font(.system(size: 80))
                }
                Stepper(value: $base2, label: {
                    Text("select second number")
                })
                
                Text("\(sum)")
                    .font(.system(size: 80))
            }
           
            
            Spacer()
        }
        .padding()
    }
}
 
#Preview {
    SubtractView()
}
 
