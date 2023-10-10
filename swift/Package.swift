// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "related",
    //  dependencies: [
    //     .package(url: "https://github.com/apple/swift-foundation.git",revision:"4a0637fba3cdd9c520a9ac5ab92b4c124491bd88"),
    // ],
    targets: [
        .executableTarget(
            name: "related"
            // dependencies:  [.product(name: "FoundationPreview", package: "swift-foundation")]
            ),
            
    ]
)
