// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    platforms: [.iOS(.v12)],
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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/rarimo/TensorFlowLiteC/releases/download/v1.0.4/TensorFlowLiteC.xcframework.zip", checksum: "a37c0b806706b870b849d47fa9abcad96d61df7538e87b3696c9ba8cace74986"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/rarimo/TensorFlowLiteC/releases/download/v1.0.4/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7bce0db9f630af56c06708967ebcf17a3b1af24745371106cd41341c436f0698"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/rarimo/TensorFlowLiteC/releases/download/v1.0.4/TensorFlowLiteCMetal.xcframework.zip", checksum: "c88319a9b0c95d69d4ad33e4b5bfe3ffb73edc012cdb2cce6d400fdf9d49b5af"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
