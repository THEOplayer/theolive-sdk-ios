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
            url: "https://cdn.theo.live/artifacts/apple/THEOlive-3.18.1-rc.2.xcframework.zip",
            checksum: "6071cce012d648d1c40334db1bdc9ee8768eb71c80c19148d5a1ea37050ee4eb"
        ),
    ]
)