// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
                "TensorFlowLiteCMetal",
                "Link",
            ]
        ),
    ],
    targets: [
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/rarimo/TensorFlowLiteC/releases/download/v1.0.2/TensorFlowLiteC.xcframework.zip", checksum: "9346c784977b97b106df49640b9d128a039246c32f8053caf22fe9c79905def3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/rarimo/TensorFlowLiteC/releases/download/v1.0.2/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5aa807205f50c2eeb60df9633a09003f833c3250d225bc1658063d97beac10fd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/rarimo/TensorFlowLiteC/releases/download/v1.0.2/TensorFlowLiteCMetal.xcframework.zip", checksum: "0d977f33b35fefc37336e2e5b72abdd56c2c4727a227944e058278de0dd96539"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
