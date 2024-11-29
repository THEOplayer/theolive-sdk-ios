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
            url: "https://cdn.theo.live/artifacts/apple/THEOlive-3.18.1-rc.4.xcframework.zip",
            checksum: "a2fe5fa6b57c95f127eac5aa3ab751ef200dfd927d83e79323c8fea0684e0670"
        ),
    ]
)