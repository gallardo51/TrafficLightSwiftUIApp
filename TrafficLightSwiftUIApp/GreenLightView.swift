//
//  GreenLightView.swift
//  TrafficLightSwiftUIApp
//
//  Created by Александр Соболев on 11.04.2024.
//

import SwiftUI

struct GreenLightView: View {
    var body: some View {
        Circle()
            .frame(width: 120, height: 120)
            .shadow(color: .gray, radius: 10)
            .foregroundStyle(Color(.green))
    }
}

#Preview {
    GreenLightView()
}
