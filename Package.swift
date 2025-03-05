// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "SchwiftyUtilities",
    products: [
        .library(
            name: "SchwiftyUtilities",
            type: .dynamic,
            targets: ["SchwiftyUtilities"]
        ),
    ],
    targets: [
        .target(
            name: "SchwiftyUtilities",
            swiftSettings: [
                .unsafeFlags(["-enable-library-evolution"])
            ]
        ),
        .testTarget(
            name: "SchwiftyUtilitiesTests",
            dependencies: ["SchwiftyUtilities"]
        ),
    ]
)
