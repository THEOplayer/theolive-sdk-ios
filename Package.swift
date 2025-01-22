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
            url: "https://cdn.theo.live/artifacts/apple/THEOliveSDK-3.18.7-rc.1.xcframework.zip",
            checksum: "11f07bc93128d2358eb374b80cc2b9c17493634ec6f172c7c3d306c8cac91443"
        ),
    ]
)