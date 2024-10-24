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
            url: "https://cdn.theo.live/artifacts/apple/THEOlive-3.17.2.xcframework.zip",
            checksum: "ef2ec582eb95d52faa940cd1da4d3d5e003c8ea336843b0067d5449b040e6547"
        ),
    ]
)