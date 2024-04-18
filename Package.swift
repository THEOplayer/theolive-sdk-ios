// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "THEOliveSDK",
    platforms: [.iOS(.v12), .tvOS(.v12)],
    products: [
        .library(name: "THEOliveSDK", targets: ["THEOliveSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "THEOliveSDK",
            url: "https://cdn.theo.live/artifacts/apple/THEOlive-3.14.0.xcframework.zip",
            checksum: "f4bfbb8b5dee59e0456203069009999bdc4ad77204acdd49932ca73e060dcc45"
        ),
    ]
)
