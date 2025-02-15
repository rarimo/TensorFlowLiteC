// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    platforms: [.iOS(.v13)],
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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/rarimo/TensorFlowLiteC/releases/download/v1.0.3/TensorFlowLiteC.xcframework.zip", checksum: "a838c7354498cb628529b70f76d2e7b8d5559776fced14cd96ff0baa25099093"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/rarimo/TensorFlowLiteC/releases/download/v1.0.3/TensorFlowLiteCCoreML.xcframework.zip", checksum: "82f8a91146a2f08c0859c770b3c74b54e2ef0a3b473e634a35180b64f6cfee71"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/rarimo/TensorFlowLiteC/releases/download/v1.0.3/TensorFlowLiteCMetal.xcframework.zip", checksum: "9c53adcd08ba9ebcd3b007d3fa2f28f1da5267f5858bd006a1e48aff57bdb57c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
