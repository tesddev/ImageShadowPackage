// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "ImageShadowPackage",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "ImageShadowPackage",
            targets: ["ImageShadowPackage"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ImageShadowPackage",
            dependencies: []),
        .testTarget(
            name: "ImageShadowPackageTests",
            dependencies: ["ImageShadowPackage"]),
    ]
)

