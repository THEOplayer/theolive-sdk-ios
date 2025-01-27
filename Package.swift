// swift-tools-version:5.9
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
            url: "https://cdn.theo.live/artifacts/apple/THEOlive-3.18.7.xcframework.zip",
            checksum: "4aa9a6f54d787cc4ea34b34a345936d5c7cb6e427b81a3d9f510a91357da6b7c"
        ),
    ]
)