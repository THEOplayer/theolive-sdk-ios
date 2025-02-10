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
            url: "https://cdn.theo.live/artifacts/apple/THEOlive-3.18.8-rc.2.xcframework.zip",
            checksum: "ae6bc656d8d2e35b5b3e296982f96bc1e1558620b78b6934ac6e6887753bfe98"
        ),
    ]
)