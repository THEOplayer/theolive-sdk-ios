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
            url: "https://cdn.theo.live/artifacts/apple/THEOlive-3.15.0.xcframework.zip",
            checksum: "8e0850c9a6b2217aa0fead3ae0beebe5a6aa6e6c7fe96556bb47ed82f8139063"
        ),
    ]
)
