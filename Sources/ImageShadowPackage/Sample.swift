//
//  Sample.swift
//
//
//  Created by Tes on 04/07/2024.
//

import Foundation
import SwiftUI

struct CharacterDetailView: View {
    var urlString: String

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.gray.opacity(0.5), .blue, ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            VStack {
                if let url = URL(string: urlString) {
                    ShadowURLImage(url: url, shadowColor: .red, radius: 55, x: 12, y: 12)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 300)
                }
                ShadowImage(image: Image(systemName: "house"))
                    .frame(width: 300, height: 300)
            }
            .padding()
        }
    }
}

#Preview {
    CharacterDetailView(urlString: "https://avatars.githubusercontent.com/u/58847828?v=4")
}
