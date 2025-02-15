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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/rarimo/TensorFlowLiteC/releases/download/v1.0.5/TensorFlowLiteC.xcframework.zip", checksum: "5345fc8c7c886a426485f75aab08f9aca2f0ceff7f3c90e9059d7a74afdf9d78"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/rarimo/TensorFlowLiteC/releases/download/v1.0.5/TensorFlowLiteCCoreML.xcframework.zip", checksum: "948f8e8211b5977a5b9bd5d4a2cfed2b17e24d38696fcc402bc3ff1af77d7577"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/rarimo/TensorFlowLiteC/releases/download/v1.0.5/TensorFlowLiteCMetal.xcframework.zip", checksum: "335470c616b0a480014039efc2817df82172780d48f0b0b35b3cb2c12935d3f9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
