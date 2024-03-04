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
            url: "https://cdn.theo.live/artifacts/apple/THEOlive-3.13.1.xcframework.zip",
            checksum: "977233bd7d3d8d0c5b4ae98155024ca3b50a236c2ec160747fa2721eedd88f7f"
        ),
    ]
)
