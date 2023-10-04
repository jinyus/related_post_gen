// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "related",
    platforms: [
        .macOS("13.5"),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-collections.git", branch: "release/1.1")
    ],
    targets: [
        .executableTarget(
            name: "related",
            dependencies: [
                .product(name: "Collections", package: "swift-collections")
            ]
        )
    ]
)
