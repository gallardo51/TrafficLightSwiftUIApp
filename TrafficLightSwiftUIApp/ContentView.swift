//
//  ContentView.swift
//  TrafficLightSwiftUIApp
//
//  Created by Александр Соболев on 11.04.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            RedLightView()
            YellowLightView()
            GreenLightView()
            Spacer()
            Button(action: {}, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
