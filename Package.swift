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
            url: "https://cdn.theo.live/artifacts/apple/development/THEOlive-3.18.6-rc.1.xcframework.zip",
            checksum: "9fee8b523e25ba2a4509228865562fe8aba0cb9b0d54d6bb99279bc5a2a3ef5e"
        ),
    ]
)