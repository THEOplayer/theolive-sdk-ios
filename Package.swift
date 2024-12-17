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
            checksum: "7063370625f466f51227284b19d3f015364030a53211296abd41b6956dce6d1a"
        ),
    ]
)