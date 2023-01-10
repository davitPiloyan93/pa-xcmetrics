// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PAXCMetrics",
    platforms: [
          .macOS(.v10_15),
      ],
    dependencies: [
        .package(url: "https://github.com/spotify/XCMetrics.git", from: "0.0.11")
    ],
    targets: [
        .executableTarget(
            name: "PAXCMetrics",
            dependencies: [
                .product(name: "XCMetricsClient", package: "XCMetrics"),
                .product(name: "XCMetricsPlugins", package: "XCMetrics")
            ]),
    ]
)
