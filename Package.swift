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
            url: "https://cdn.theo.live/artifacts/apple/THEOlive-3.18.1-rc.3.xcframework.zip",
            checksum: "4bb0e73d2137c5d0dc2f642632d30c0ebc030c7b92a8c4f0f07cbbba5f013adf"
        ),
    ]
)