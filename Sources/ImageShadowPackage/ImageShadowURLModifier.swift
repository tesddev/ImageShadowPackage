//
//  File.swift
//  
//
//  Created by Tes on 04/07/2024.
//

import Foundation
import SwiftUI
import UIKit
//import URLImage // Make sure to add URLImage as a dependency in Package.swift

public struct ShadowURLImage: View {
    private let url: URL
    private let shadowColor: Color
    private let radius: CGFloat
    private let x: CGFloat
    private let y: CGFloat

    public init(url: URL, shadowColor: Color = .black, radius: CGFloat = 10, x: CGFloat = 0, y: CGFloat = 0) {
        self.url = url
        self.shadowColor = shadowColor
        self.radius = radius
        self.x = x
        self.y = y
    }

    public var body: some View {
        AsyncImage(url: url) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(20)
                .shadow(color: shadowColor, radius: radius, x: x, y: y)
        } placeholder: {
            ProgressView()
        }
    }
}
