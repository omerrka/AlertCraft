// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AlertCraft",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AlertCraft",
            targets: ["AlertCraft"]),
    ],
    targets: [
        .target(
            name: "AlertCraft"),
        .testTarget(
            name: "AlertCraftTests",
            dependencies: ["AlertCraft"]),
    ]
)
