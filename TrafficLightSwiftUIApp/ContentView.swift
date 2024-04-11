//
//  ContentView.swift
//  TrafficLightSwiftUIApp
//
//  Created by Александр Соболев on 11.04.2024.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    @State private var currentLight = CurrentLight.red
    
    private func nextColor() {
        
        switch currentLight {
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
    
    var body: some View {
        VStack {
            ColorLight(color: .red, opacity: currentLight == .red ? 1 : 0.3)
            ColorLight(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.3)
            ColorLight(color: .green, opacity: currentLight == .green ? 1 : 0.3)
            
            Spacer()
            
            Button(action: { if buttonTitle == "START" {
                buttonTitle = "NEXT"
            }
                nextColor()
            } , label: {
                Text(buttonTitle)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .frame(width: 200.0, height: 50.0)
                    .tint(.white)
                    .font(.largeTitle)
            })
            .background(Color.blue)
            .clipShape(.buttonBorder)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
