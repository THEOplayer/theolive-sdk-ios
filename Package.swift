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
            url: "https://cdn.theo.live/artifacts/apple/THEOlive-3.16.0.xcframework.zip",
            checksum: "878cb56ccee0ae7aacd86e2aa9e18c0a38087b3f9b11e3ff59027a6eb5065caf"
        ),
    ]
)