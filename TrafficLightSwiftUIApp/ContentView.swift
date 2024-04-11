//
//  ContentView.swift
//  TrafficLightSwiftUIApp
//
//  Created by Александр Соболев on 11.04.2024.
//

import SwiftUI
struct ContentView: View {
    @State var isLightOn = 1
    var body: some View {
        VStack {
            RedLightView()
            YellowLightView()
            GreenLightView()
            Spacer()
            Button(action: {}, label: {
                Text("START")
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
