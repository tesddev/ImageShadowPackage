//
//  File.swift
//  
//
//  Created by Tes on 04/07/2024.
//

import Foundation
import SwiftUI

public struct ShadowImage: View {
    private let image: Image
    private let shadowColor: Color
    private let radius: CGFloat
    private let x: CGFloat
    private let y: CGFloat

    public init(image: Image, shadowColor: Color = .black, radius: CGFloat = 10, x: CGFloat = 0, y: CGFloat = 0) {
        self.image = image
        self.shadowColor = shadowColor
        self.radius = radius
        self.x = x
        self.y = y
    }

    public var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .cornerRadius(20)
            .shadow(color: shadowColor, radius: radius, x: x, y: y)
    }
}
