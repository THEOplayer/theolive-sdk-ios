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
            url: "https://cdn.theo.live/artifacts/apple/development/THEOlive-3.18.6-rc.2.xcframework.zip",
            checksum: "2d7595061c5dc00c85398d9f7e416bcb301b4fd8290b3a215543c062acbf9a20"
        ),
    ]
)