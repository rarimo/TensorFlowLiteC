// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    platforms: [.iOS(.v9)],
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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/rarimo/TensorFlowLiteC/releases/download/v1.0.1/TensorFlowLiteC.xcframework.zip", checksum: "4c045d87414131dcba23206ba91be989f92a66650226442cc26afd0e9a538a28"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/rarimo/TensorFlowLiteC/releases/download/v1.0.1/TensorFlowLiteCCoreML.xcframework.zip", checksum: "57193012aff350307ea2714a128444cbc4a40718107f55b5a60699c0482afd11"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/rarimo/TensorFlowLiteC/releases/download/v1.0.1/TensorFlowLiteCMetal.xcframework.zip", checksum: "e4fda10c4364fc46bb7d1a928c4f96a71ff2bbbacd40d4308571f832e410e757"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
