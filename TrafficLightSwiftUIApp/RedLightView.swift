//
//  RedLightView.swift
//  TrafficLightSwiftUIApp
//
//  Created by Александр Соболев on 11.04.2024.
//

import SwiftUI

struct RedLightView: View {
    var body: some View {
        Circle()
            .frame(width: 120, height: 120)
            .shadow(color: .gray, radius: 10)
            .foregroundStyle(Color(.red))
            
    }
}

#Preview {
    RedLightView()
}
