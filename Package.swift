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
            url: "https://cdn.theo.live/artifacts/apple/THEOlive-3.18.8-rc.1.xcframework.zip",
            checksum: "858ce160e12b943a45520322b418498eb4dd17d6d3e11ecbe4c32c5ceaa9a8d8"
        ),
    ]
)