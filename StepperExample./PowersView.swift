//
//  ContentView.swift
//  StepperExample
//
 
import SwiftUI
 
struct PowersView: View {
    
    // MARK: Stored properties
    @State var base: Int = 1
    
    // MARK: Computed properties
    var squared: Int {
        return base * base
    }
    
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack(alignment: .top) {
                Text("(")
                    .font(.system(size: 96))
                
                //Text("5")
                Text("\(base)")
                    .font(.system(size: 96))
                
                Text(")")
                    .font(.system(size: 96))
                
                Text("2")
                    .font(.system(size: 44))
 
                Text("=")
                    .font(.system(size: 96))
 
                //Text("25")
                Text("\(squared)")
                    .font(.system(size: 96))
            }
            .lineLimit(1)
            .minimumScaleFactor(0.5)
            
            Stepper(value: $base, label: {
                Text("Base")
            })
            Spacer()
        }
        .padding()
    }
}
 
#Preview {
    PowersView()
}
 
